SELECT MAX(T1.`Percent (%) Eligible Free (K-12)`) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'Alameda County'
SELECT T1.`Percent (%) Eligible Free (Ages 5-17)` FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.DOCType = 'Continuation' ORDER BY T1.`Percent (%) Eligible Free (Ages 5-17)` ASC LIMIT 3
SELECT DISTINCT T1.Zip FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County Name = 'Fresno County' AND T1.Charter = 'Y'
SELECT T2.MailStreet, T2.MailCity, T2.MailZip FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.`FRPM Count (K-12)` = ( SELECT MAX(`FRPM Count (K-12)`) FROM frpm )
SELECT Phone FROM schools WHERE OpenDate > '2000-01-01' AND FundingType = 'DC'
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.Virtual = 'T' AND T2.AvgScrMath < 400
SELECT T2.School FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.NumTstTakr > 500 INNER JOIN schools AS T3 ON T2.CDSCode = T3.CDSCode WHERE T3.Magnet = 'TRUE'
SELECT T2.Phone FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.NumGE1500 = ( SELECT MAX(NumGE1500) FROM satscores )
SELECT COUNT(T2.NumTstTakr) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.`Enrollment (K-12)` = ( SELECT MAX(`Enrollment (K-12)`) FROM schools )
SELECT COUNT(T1.CDSCode) FROM frpm AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.FundingType = 'DCF' AND T2.AvgScrMath > 560
SELECT T1.`FRPM Count (Ages 5-17)` FROM frpm AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrRead = ( SELECT MAX(AvgScrRead) FROM satscores )
SELECT DISTINCT T1.School FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.`Enrollment (K-12)` > 500
SELECT MAX(T1.`Percent (%) Eligible Free (Ages 5-17)`) FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T1.AvgScrRead > 0.3
SELECT T1.Phone FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.AvgScrRead DESC LIMIT 3
SELECT DISTINCT NCESSchool FROM schools ORDER BY Enrollment (Ages 5-17) DESC LIMIT 5
SELECT T2.District FROM satscores AS T1 INNER JOIN frpm AS T2 ON T1.cds = T2.CDSCode WHERE T2.ClosedDate IS NULL GROUP BY T2.District ORDER BY AVG(T1.AvgScrRead) DESC LIMIT 1
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Alameda' AND T2.NumTstTakr < 100
SELECT T1.ClosingDate - T1.OpenDate AS result FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.AvgScrWrite = 499 AND T1.Charter = 'Y'
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Contra Costa' AND T1.FundingType = 'D' AND T2.NumTstTakr < 250
SELECT T1.Phone FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.AvgScrMath = ( SELECT MAX(AvgScrMath) FROM satscores )
SELECT COUNT(CDSCode) FROM schools WHERE County = 'Amador' AND LowGrade = '9' AND HighGrade = '12'
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Los Angeles' AND T2.`Free Meal Count (K-12)` > 500 AND T2.`Free Meal Count (K-12)` < 700
SELECT T2.School FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'Contra Costa' GROUP BY T2.School ORDER BY SUM(T1.NumTstTakr) DESC LIMIT 1
SELECT T2.School, T2.Street FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.`2013-14 CALPADS Fall 1 Certification Status` = 'Certified' AND T1.`Enrollment (K-12)` - T1.`Enrollment (Ages 5-17)` > 30
SELECT T2.School FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.CDS = T2.CDSCode WHERE T1.`Percent (% Eligible Free (K-12)` > 0.1 AND T1.NumTstTakr > 1500
SELECT T1.FundingType FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Riverside' AND T2.AvgScrMath > 400
SELECT T2.School, T2.MailStreet, T2.MailStrAbr, T2.MailCity, T2.MailZip FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'Monterey' AND T1.enroll12 > 800
SELECT AVG(T2.AvgScrWrite), T1.School, T2.NumGE1500 FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.OpenDate > '1991' OR (T1.ClosedDate IS NULL OR T1.ClosedDate < '2000')
SELECT T1.School, T1.DOCType FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.FundingType = 'L' GROUP BY T1.School, T1.DOCType HAVING AVG(T2.`Enrollment (K-12)`) - AVG(T2.`Enrollment (Ages 5-17)`) > ( SELECT AVG(T2.`Enrollment (K-12)`) - AVG(T2.`Enrollment (Ages 5-17)`) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.FundingType = 'L' )
SELECT OpenDate FROM schools WHERE School = ( SELECT School Name FROM schools ORDER BY `Enrollment (K-12)` DESC LIMIT 1 )
SELECT T2.City FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.enroll12 ASC LIMIT 5
SELECT T2.`Percent (%) Eligible Free (K-12)` FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.`Enrollment (Ages 5-17)` = ( SELECT MAX(T2.`Enrollment (Ages 5-17)`) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode )
SELECT SUM(T1.`Percent (%) Eligible Free (K-12)`) / 5.0 FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.DOC = '66' ORDER BY T1.`Free Meal Count (K-12)` DESC LIMIT 5
SELECT T2.Website, T2.School FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.enroll12 BETWEEN 1900 AND 2000
SELECT CAST(T1.Enrollment (Ages 5-17) AS REAL) / CAST(T1.Enrollment (K-12) AS REAL) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.AdmFName1 = 'Kacey' AND T1.AdmLName1 = 'Gibson'
SELECT T1.AdmEmail1 FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Enrollment = 'K-12' ORDER BY T2.Enrollment = 'K-12' LIMIT 1
SELECT T2.AdmFName1, T2.AdmLName1 FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.NumTstTakr = ( SELECT MAX(NumTstTakr) FROM satscores ) AND T1.NumGE1500 = ( SELECT MAX(NumGE1505) FROM satscores )
SELECT T2.Street, T2.City, T2.Zip, T2.State FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.AvgScrRead LIMIT 1
SELECT T1.Website FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.NumTstTakr BETWEEN 2000 AND 3000 AND T1.County = 'Los Angeles'
SELECT AVG(T2.NumTstTakr) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.OpenDate >= '1980-01-01' AND T1.OpenDate < '1981-01-01'
SELECT T1.Phone FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.dname = 'Fresno Unif' ORDER BY T2.AvgScrRead LIMIT 1
SELECT T2.School FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T2.Virtual = 'E' ORDER BY T1.AvgScrRead DESC LIMIT 5
SELECT T1.DOCType FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.AvgScrMath DESC LIMIT 1
SELECT T2.Latitude, T2.Longitude FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.AvgScrRead = ( SELECT MIN(AvgScrRead) FROM satscores )
SELECT AVG(T2.AvgScrWrite), T1.City FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.NumTstTakr = ( SELECT MAX(NumTstTakr) FROM satscores )
SELECT T1.School, T2.AvgScrWrite FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.DOC = 'Ricci Ulrich' GROUP BY T1.School, T2.AvgScrWrite
SELECT T FROM ( SELECT DISTINCT CASE WHEN T1.Enrollment (K-12) = ( SELECT MAX(T1.Enrollment (K-12)) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.State = 'CA' AND T2.School Type = 'Special School' ) THEN T2.School Name ELSE NULL END AS T FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.State = 'CA' AND T2.School Type = 'Special School' )
SELECT CAST(COUNT(T1.CDSCode) AS REAL) / 12 FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'Alameda' AND T2.OpenDate LIKE '198%'
SELECT CAST(SUM(CASE WHEN District = 'Unified School Dist' AND County = 'Orange' THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN District = 'Elementary School Dist' THEN 1 ELSE 0 END) FROM frpm
SELECT COUNT(CDSCode) FROM schools WHERE ClosedDate IS NOT NULL GROUP BY County ORDER BY COUNT(CDSCode) DESC LIMIT 1
SELECT T2.Street, T2.School FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.AvgScrMath = ( SELECT AvgScrMath FROM satscores ORDER BY AvgScrMath DESC LIMIT 5, 1 )
SELECT T2.MailStreet, T2.School FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T1.AvgScrRead = ( SELECT MIN(AvgScrRead) FROM satscores )
SELECT COUNT(T1.CDSCode) FROM frpm AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumGE1500 >= 1500 AND T1.MailCity = 'Lakeport'
SELECT COUNT(T2.cname) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.MailCity = 'Fresno'
SELECT NCESSchool, MailZip FROM schools WHERE AdmFName1 = 'Avetik' AND AdmLName1 = 'Atoian'
SELECT SUM(CASE WHEN T1.County = 'Colusa' THEN 1 ELSE 0 END) / SUM(CASE WHEN T1.County = 'Humboldt' THEN 1 ELSE 0 END) AS ratio FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.MailState = 'CA'
SELECT COUNT(CDSCode) FROM schools WHERE MailState = 'CA' AND County = 'San Joaquin'
SELECT T2.Phone, T2.Ext FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.AvgScrWrite = ( SELECT AvgScrWrite FROM satscores ORDER BY AvgScrWrite DESC LIMIT 1, 333 )
SELECT Phone, Ext, School FROM schools WHERE Zip = '95203-3704'
SELECT DISTINCT CASE WHEN (AdmFName1 = 'Mike' AND AdmLName1 = 'Larson') OR (AdmFName1 = 'Dante' AND AdmLName1 = 'Alvarez') THEN Website ELSE NULL END FROM schools
SELECT DISTINCT T1.Website FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2."County Name" = 'San Joaquin' AND T1.Charter = 'P'
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.City = 'Hickman' AND T2.School Type = 'Public Charter School'
SELECT SUM(CASE WHEN T1.`% Eligible Free (K-12)` < 0.18 THEN 1 ELSE 0 END) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'Los Angeles' AND T1.CDSCode = '2013-14 CALPADS Fall 1 Certification Status.' AND T2.Charter = 'N'
SELECT School, City FROM schools WHERE CDSCode = '00D2' AND Charter = 'CHA' UNION ALL SELECT School, City FROM schools WHERE CDSCode = '00D2' AND Charter = 'CHA'
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.MailCity = 'Hickman' AND T2.CharterNum = '00D4'
SELECT CAST(SUM(CASE WHEN FundingType = 'Locally Funded' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(CDSCode) FROM schools WHERE County = 'Santa Clara' AND FundingType = 'Charter'
SELECT COUNT(CDSCode) FROM schools WHERE County = 'Stanislaus' AND OpenDate BETWEEN '2000-01-01' AND '2005-12-31' AND FundingType = 'Dist'
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN ( SELECT * FROM schools WHERE City = 'San Francisco' ) AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.CDSCode IS NOT NULL AND T1.NCESDist = 'Community College District' AND T1.ClosedDate LIKE '1989%' AND T2.StatusType = 'Closed'
SELECT COUNT(T1.County) FROM schools AS T1 INNER JOIN ( SELECT DISTINCT County FROM schools WHERE (ClosedDate BETWEEN '1980-01-01' AND '1989-12-31') AND DOC = 'Youth Authority Facilities (CEA)' ) AS T2 ON T1.County = T2.County GROUP BY T1.County ORDER BY COUNT(T1.County) DESC LIMIT 1
SELECT DISTINCT NCESDist FROM schools WHERE SOC = 'SP'
SELECT COUNT(CDSCode) FROM schools WHERE County = 'Alpine' AND (StatusType = 'Active' OR StatusType = 'Closed') AND FundingType = 'District Community Day School'
SELECT District FROM schools WHERE Magnet = 'N' AND City = 'Fresno' GROUP BY District
SELECT SUM(T1.Enrollment (Ages 5-17)) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.`Academic Year` = '2014-15' AND T1.School = 'State Special School' AND T1.City = 'Fremont'
SELECT T1.`Free Meal Count (Ages 5-17)` FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.MailStrAbr = 'PO ' AND T1.MailCity = 'Youth Authority School' AND T1.MailZip = 1040
SELECT T1.Low Grade FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.NCESSchool = 613360 AND T1.District Type = 'District Special Education Consortium'
SELECT T1.Education Level Name FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County Code = 37 AND T2.`Breakfast Provision 2` = 'Yes' GROUP BY T1.Education Level Name
SELECT T1.City FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.`Low Grade` = 9 AND T2.`High Grade` = 12 AND T2.`Educational Option Type` = 'Lunch Provision 2' AND T2.County Name = 'Merced' AND T1.School Type = 'High School'
SELECT T1.CDSCode, T1.`Percent (%) Eligible FRPM (Ages 5-17)` FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Los Angeles' AND T1.GSserved = 'Kindergarten to 9th Grade'
SELECT T2.LowGrade, T2.HighGrade FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.City = 'Adelanto' GROUP BY T2.LowGrade, T2.HighGrade ORDER BY COUNT(T2.LowGrade) DESC LIMIT 1
SELECT COUNT(CDSCode) FROM schools WHERE County IN ('San Diego', 'Santa Barbara') AND Phys_Building = 'N' GROUP BY County ORDER BY COUNT(CDSCode) DESC LIMIT 1
SELECT School, Latitude FROM schools WHERE Latitude = ( SELECT MAX(Latitude) FROM schools )
SELECT 'San Jose' AS city, Low Grade FROM schools WHERE State = 'California' AND Latitude = ( SELECT MIN(Latitude) FROM schools WHERE State = 'California' )
SELECT High Grade - Low Grade FROM frpm WHERE CDSCode IN ( SELECT CDSCode FROM frpm ORDER BY Longitude DESC LIMIT 1 )
SELECT COUNT(T1.CDSCode) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.`Grade Span` = 'Kindergarten to 8th Grade' AND T1.`Magnet Program` = 'Yes' AND T1.`Magnet Program` = 'Multiple Provision Types' AND T2.City NOT IN ( SELECT City FROM schools WHERE City NOT IN ( SELECT City FROM schools WHERE CDSCode = T1.CDSCode AND `Grade Span` = 'Kindergarten to 8th Grade' AND `Magnet Program` = 'Yes' AND `Magnet Program` = 'Multiple Provision Types' GROUP BY City ) GROUP BY City )
SELECT T1.AdmFName1, T1.District FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.AdmFName1, T1.District ORDER BY COUNT(T1.AdmFName1) DESC LIMIT 2
SELECT T2.`Percent (%) Eligible Free (K-12)`, T2.`District Code` FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.AdmFName1 = 'Alusine' OR T1.AdmFName2 = 'Alusine' OR T1.AdmFName3 = 'Alusine'
SELECT District, County, School FROM schools WHERE CharterNum = 40 GROUP BY District, County, School
SELECT DISTINCT T1.AdmEmail1, T1.AdmEmail2, T1.AdmEmail3 FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Academic_Year = '2009' AND T2.Academic_Year = '2010' AND T1.County = 'San Bernardino' AND T1.District = 'District of San Bernardino City Unified' AND T1.School = 'City Unified School'
SELECT T1.AdmEmail1 FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.NumGE1500 = ( SELECT MAX(NumGE1500) FROM satscores ) GROUP BY T1.CDSCode
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.disp_id INNER JOIN client AS T3 ON T2.client_id = T3.client_id INNER JOIN district AS T4 ON T3.district_id = T4.district_id WHERE T2.type = 'issuance after transaction' AND T4.A1 = 1
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN client AS T3 ON T3.client_id = T2.client_id WHERE T2.frequency = 12 AND T3.district_id = 1
SELECT AVG(CASE WHEN strftime('%Y', T2.date) = '1995' THEN T2.amount / T1.amount ELSE 0 END) AS per1 , AVG(CASE WHEN strftime('%Y', T2.date) = '1996' THEN T2.amount / T1.amount ELSE 0 END) AS per2 FROM loan AS T1 INNER JOIN order AS T2 ON T1.account_id = T2.account_id INNER JOIN client AS T3 ON T3.client_id = T2.account_id WHERE T3.gender = 'M'
SELECT COUNT(district_id) FROM district WHERE A6 > 6000 AND A6 < 10000
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'M' AND T2.A8 > 8000
SELECT T1.account_id, ( SELECT MAX(T2.amount) FROM loan AS T1 INNER JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.bank_to = 'Salary' ) - ( SELECT MIN(T2.amount) FROM loan AS T1 INNER JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.bank_to = 'Salary' ) FROM loan AS T1 INNER JOIN order AS T2 ON T1.account_id = T2.account_id INNER JOIN client AS T3 ON T3.client_id = T2.account_to WHERE T2.bank_to = 'Salary' AND T3.gender = 'F'
SELECT T1.account_id FROM loan AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.client_id ORDER BY T2.birth_date ASC LIMIT 1
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'S of W' AND T1.gender = 'M'
SELECT T1.client_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'S of I'
SELECT T1.account_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'approved' AND strftime('%Y', T1.date) = '1997' AND T2.frequency = 'weekly' ORDER BY T1.amount LIMIT 1
SELECT T2.account_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration > 12 AND T1.status = 'approved' AND strftime('%Y', T1.date) = '1993' ORDER BY T1.amount DESC LIMIT 1
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' AND strftime('%Y', T1.birth_date) < '1950' AND T2.district_id = 1
SELECT T2.account_id FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE STRFTIME('%Y', T1.date) = '1995' ORDER BY T1.date LIMIT 1
SELECT T2.account_id FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE strftime('%Y', T1.date) < '1997' AND T1.amount > 3000
SELECT T1.client_id FROM client AS T1 INNER JOIN card AS T2 ON T1.client_id = T2.client_id WHERE T2.issued = '1994-03-03'
SELECT T2.date FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount = 840 AND T1.date = '1998-10-14'
SELECT T1.district_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date = '1994-08-25'
SELECT MAX(T2.amount) FROM card AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.issued = '1996-10-21'
SELECT T1.gender FROM client AS T1 INNER JOIN account AS T2 ON T1.client_id = T2.client_id ORDER BY T1.birth_date DESC LIMIT 1
SELECT T2.amount FROM account AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id ORDER BY T2.amount DESC LIMIT 1
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.district_id = 2 AND T1.gender = 'F'
SELECT T2.disp_id FROM trans AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T1.date = '2014-09-02' AND T1.amount = 5100
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.district_id = 4 AND strftime('%Y', T1.date) = '1996'
SELECT T1.district_id FROM client AS T1 INNER JOIN account AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'F' AND T1.birth_date = '1976-01-29'
SELECT T1.birth_date FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T2.amount = 988.32 AND strftime('%Y-%m-%d', T2.date) = '1996-01-03'
SELECT T1.account_id FROM account AS T1 INNER JOIN district AS T2 ON T2.district_id = T1.district_id INNER JOIN disp AS T3 ON T3.account_id = T1.account_id INNER JOIN client AS T4 ON T4.client_id = T3.client_id WHERE T2.A3 > 0.64 * T2.A11
SELECT CAST(SUM(CASE WHEN T1.gender = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.district_id = 3
SELECT 100 * (SUM(CASE WHEN T2.date = '1998-12-27' THEN T2.balance ELSE 0 END) - SUM(CASE WHEN T2.date = '1993-03-22' THEN T2.balance ELSE 0 END)) / SUM(CASE WHEN T2.date = '1993-03-22' THEN T2.balance ELSE 0 END) AS per FROM loan AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.date = '1993-07-05'
SELECT CAST(SUM(CASE WHEN status = 'ok' THEN amount ELSE 0 END) AS REAL) * 100 / SUM(amount) FROM loan
SELECT CAST(SUM(CASE WHEN status = 'good' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(loan_id) FROM loan WHERE amount < 100000
SELECT T1.account_id, T3.district_id, T3.district_id, T2.A13, T2.A14 FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T3.district_id = T2.district_id WHERE STRFTIME('%Y', T1.date) = '1993' AND T1.status = 'approved'
SELECT T1.account_id, T1.frequency FROM account AS T1 INNER JOIN client AS T2 ON T2.district_id = T1.district_id INNER JOIN district AS T3 ON T3.district_id = T2.district_id WHERE T3.A1 = 'east Bohemia' AND STRFTIME('%Y', T1.date) BETWEEN '1995' AND '2000'
SELECT T1.account_id, T1.date FROM account AS T1 INNER JOIN district AS T2 ON T2.district_id = T1.district_id WHERE T2.district_id = 2
SELECT T2.district_id, T1.A4 FROM district AS T1 INNER JOIN client AS T2 ON T2.district_id = T1.district_id INNER JOIN loan AS T3 ON T3.account_id = T2.client_id WHERE T3.loan_id = 4990
SELECT T1.account_id, T2.district_id, T3.A1 FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T3.district_id = T2.district_id WHERE T1.amount > 300000
SELECT T1.loan_id, T2.district_id, AVG(T2.A11) FROM loan AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.duration = 60
SELECT T1.district_id, CAST(SUM(CASE WHEN T2.date LIKE '%' || 1996 || '-' || 9 || '-' || 29 THEN T2.amount ELSE 0 END) - SUM(CASE WHEN T2.date LIKE '%' || 1995 || '-' || 9 || '-' || 29 THEN T2.amount ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T2.date LIKE '%' || 1995 || '-' || 9 || '-' || 29 THEN T2.amount ELSE 0 END) FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T2.status = 'running' AND T2.duration = T2.payments ORDER BY T1.district_id
SELECT CAST(COUNT(CASE WHEN T1.district_id = 'Decin' THEN T2.account_id ELSE NULL END) AS REAL) * 100 / COUNT(T2.account_id) FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE STRFTIME('%Y', T2.date) = '1993'
SELECT account_id FROM account WHERE frequency = 'monthly'
SELECT T1.district_id, COUNT(T2.client_id) FROM district AS T1 INNER JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' GROUP BY T1.district_id ORDER BY COUNT(T2.client_id) DESC LIMIT 10
SELECT T1.district_id, T2.A2, T2.A3, T2.A4, T2.A5, T2.A6, T2.A7, T2.A8, T2.A9, T2.A10, T2.A11, T2.A12, T2.A13, T2.A14, T2.A15, T2.A16 FROM loan AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date LIKE '1996-01%' AND T1.status = 'approved' GROUP BY T1.district_id ORDER BY SUM(T1.amount) DESC LIMIT 10
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN district AS T3 ON T1.district_id = T3.district_id WHERE T3.district_id = 3 AND T2.type = 'none'
SELECT T1.district_id FROM district AS T1 INNER JOIN loan AS T2 ON T1.district_id = T2.account_id WHERE T2.status = 'active' GROUP BY T1.district_id ORDER BY COUNT(T2.loan_id) DESC LIMIT 1
SELECT SUM(T1.amount) / COUNT(T1.loan_id) FROM loan AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.account_id WHERE T2.gender = 'M'
SELECT T2.A2, T2.A3 FROM loan AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE STRFTIME('%Y', T1.date) = '1996' GROUP BY T2.A2, T2.A3 ORDER BY CAST(SUM(CASE WHEN T1.status = 'declined' THEN 1 ELSE 0 END) AS REAL) / COUNT(T1.status) DESC LIMIT 1
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date LIKE '1996%' GROUP BY T1.district_id ORDER BY COUNT(T1.account_id) DESC LIMIT 1
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T1.frequency = 'month' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type = 'credit' AND T3.issued = 'pos' AND T3.type
SELECT COUNT(T1.loan_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date BETWEEN '1995-01-01' AND '1997-12-31' AND T1.amount >= 250000 AND T2.frequency = 'month' AND T1.status = 'approved'
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T2.A4 > 0
SELECT COUNT(T2.client_id) FROM district AS T1 INNER JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'M' AND T1.A2 = ( SELECT SUBSTR('1995', -2) FROM ( SELECT SUBSTR(T2.issued, -2) FROM client AS T1 INNER JOIN card AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'M' ORDER BY T2.issued DESC LIMIT 2, 1 ) )
SELECT COUNT(T1.card_id) FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = 'high-level credit' AND T2.type = 'dispnone'
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.district_id = 4
SELECT T2.district_id FROM trans AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date LIKE '1997%' AND T1.amount > 10000
SELECT T1.account_id FROM order AS T1 INNER JOIN district AS T2 ON T1.bank_to = T2.district_id WHERE T1.k_symbol = 'kb' AND T2.district_id = 3
SELECT T2.account_id FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = 'gold' OR T1.type = 'junior'
SELECT SUM(T1.amount) / 12 FROM order AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.frequency = 'month' AND T1.bank_to = 'credit card' AND strftime('%Y', T1.date) = '2021'
SELECT T2.client_id FROM loan AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.account_id INNER JOIN card AS T3 ON T2.client_id = T3.client_id WHERE T1.date LIKE '1998%' AND T3.type = 'credit' GROUP BY T2.client_id HAVING SUM(T1.amount) / COUNT(T1.amount) < ( SELECT SUM(amount) / COUNT(account_id) FROM loan WHERE date LIKE '1998%' )
SELECT T1.client_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id INNER JOIN loan AS T4 ON T4.account_id = T2.account_id WHERE T3.type = 'credit' AND T1.gender = 'F' AND T4.status = 'approved'
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' AND T2.A3 > 0
SELECT T2.account_id FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id INNER JOIN district AS T3 ON T1.district_id = T3.district_id WHERE T3.district_id = 5
SELECT DISTINCT T1.type FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id INNER JOIN client AS T3 ON T2.client_id = T3.client_id INNER JOIN district AS T4 ON T3.district_id = T4.district_id WHERE T1.type != 'cash' AND T4.A2 > 8000 AND T4.A2 < 9000
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T2.district_id = 1 AND T1.account_id = 39
SELECT T2.district_id, T1.A1, T1.A2, T1.A3 FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id INNER JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T3.type = 'withdrawal'
SELECT AVG(T1.A11) FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.date BETWEEN '1997-01-01' AND '1999-12-31'
SELECT COUNT(T1.card_id) FROM card AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.type = 'classic'
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.name = 'Hl.m. Praha' AND T1.gender = 'M'
SELECT CAST(SUM(CASE WHEN issued < 1998 AND type = 'gold' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(card_id) FROM card
SELECT T1.client_id FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id ORDER BY T2.amount DESC LIMIT 1
SELECT COUNT(*) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.account_id = 532 AND strftime('%Y', T1.date) = '1995' AND T1.status = 'committed'
SELECT T1.district_id FROM account AS T1 INNER JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.order_id = 33333
SELECT T2.amount FROM client AS T1 INNER JOIN order AS T2 ON T1.client_id = T2.account_id WHERE T1.client_id = 3356 AND T2.bank_to = 'cash'
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.frequency = 'week' AND T1.amount < 200000
SELECT T1.type FROM card AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T2.client_id = 13539
SELECT T1.district_id, T2.A2, T2.A3, T2.A4, T2.A5, T2.A6, T2.A7, T2.A8, T2.A9, T2.A10, T2.A11, T2.A12, T2.A13, T2.A14, T2.A15, T2.A16 FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.client_id = 3541
SELECT T1.district_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'closed' GROUP BY T1.account_id HAVING COUNT(T1.status) ORDER BY COUNT(T1.status) DESC LIMIT 1
SELECT bank_to FROM order WHERE order_id = 32423
SELECT T1.type FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 5
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.district_id = 2
SELECT T1.client_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T3.type = 'junior' AND T3.issued > 1996
SELECT CAST(SUM(CASE WHEN T1.gender = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 > 10000
SELECT SUM(CASE WHEN T1.status = 'approved' THEN T1.amount ELSE 0 END) / SUM(CASE WHEN T1.status = 'approved' THEN T1.amount ELSE 1 END) FROM loan AS T1 INNER JOIN client AS T2 ON T2.client_id = T1.client_id WHERE strftime('%Y', T1.date) BETWEEN '1996' AND '1997' AND T2.gender = 'M'
SELECT COUNT(T1.card_id) FROM card AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'withdrawal' AND strftime('%Y', T2.date) > '1995'
SELECT ( SELECT A4 FROM district WHERE '1996-01-01' < date AND date < '2006-01-01' ) - ( SELECT A2 FROM district WHERE '1996-01-01' < date AND date < '2006-01-01' ) AS DIFF
SELECT COUNT(T2.client_id) FROM disp AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.type = 'owner' OR T1.type = 'disponent' AND T1.account_id BETWEEN 1 AND 10
SELECT T1.frequency, T2.A2 FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.account_id = 3
SELECT strftime('%Y', birth_date) FROM client WHERE client_id = 130
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.disp_id WHERE T2.type = 'own'
SELECT T1.amount, T2.payments FROM loan AS T1 INNER JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.account_to = 992
SELECT CASE WHEN SUM(T2.amount) > 0 THEN SUM(T2.amount) * -1 ELSE SUM(T2.amount) END, T1.gender FROM client AS T1 INNER JOIN trans AS T2 ON T1.client_id = T2.account_id WHERE T2.trans_id = 851 AND T1.client_id = 4
SELECT T1.type FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 9 AND T1.type = 'credit'
SELECT SUM(T2.amount) FROM trans AS T1 INNER JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE '1998%' AND T2.account_id = 617
SELECT T1.client_id, T1.birth_date FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.birth_date >= 1983 AND T1.birth_date <= 1987 AND T2.A4 = 'East Bohemia'
SELECT T2.client_id FROM loan AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T2.gender = 'F' ORDER BY T1.amount DESC LIMIT 3
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'M' AND strftime('%Y', T1.birth_date) BETWEEN '1974' AND '1976' AND T2.amount > 4000
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.district_id = 2 AND strftime('%Y', T1.date) > '1996'
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN card AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'junior' AND T1.gender = 'F'
SELECT CAST(SUM(CASE WHEN T1.gender = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.district_id = 1
SELECT CAST(SUM(CASE WHEN T1.gender = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.client_id) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'weekly_issued'
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'weeklyIssuance' AND T1.gender = 'M'
SELECT T2.account_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration > 24 AND T1.status = 'approved' AND strftime('%Y', T1.date) < '1997' ORDER BY T1.amount LIMIT 1
SELECT T1.account_id FROM loan AS T1 INNER JOIN client AS T2 ON T2.client_id = T1.account_id WHERE T2.gender = 'F' ORDER BY T1.amount ASC LIMIT 1
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.birth_date LIKE '1920%' AND T2.A3 > 0
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.frequency = 'week' AND T1.duration = 24 AND T1.status = 'prepayment'
SELECT SUM(T1.amount) / COUNT(T1.loan_id) FROM loan AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'running'
SELECT T1.client_id, T2.district_id FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A11 <= 0 OR T2.A12 <= 0
SELECT T1.client_id, JULIANDAY(T1.birth_date) - JULIANDAY(SUBSTR(T2.date, 1, 4) || '-' || SUBSTR(T2.date, 5, 2) || '-' || '01') / 365 FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id INNER JOIN card AS T3 ON T3.client_id = T1.client_id WHERE T3.type = 'high level credit'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY COUNT(bond_id) DESC LIMIT 1
SELECT COUNT(*) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'non-carcinogenic' AND T1.element = 'Cl'
SELECT CAST(COUNT(T2.molecule_id) AS REAL) / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN atom AS T3 ON T2.molecule_id = T3.molecule_id WHERE T3.element = 'O' AND T2.bond_type = 'single'
SELECT CAST(COUNT(T2.molecule_id) AS REAL) / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'single'
SELECT COUNT(T1.molecule_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'non carcinogenic' AND T1.element = 'Na'
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 3
SELECT CAST(COUNT(CASE WHEN T1.element = 'C' THEN T2.molecule_id ELSE NULL END) AS REAL) * 100 / COUNT(T2.molecule_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double'
SELECT COUNT(bond_id) FROM bond WHERE bond_type = 3
SELECT COUNT(atom_id) FROM atom WHERE element != 'B'
SELECT COUNT(molecule_id) FROM molecule WHERE label BETWEEN 1 AND 100
SELECT T1.molecule_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Si'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T2.molecule_id = T3.molecule_id WHERE T2.label = 'TR004_8_9'
SELECT T1.element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double'
SELECT T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'H' GROUP BY T2.label ORDER BY COUNT(T2.label) DESC LIMIT 1
SELECT T2.bond_type FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Tel'
SELECT T1.atom_id FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_type = 'single'
SELECT T1.atom_id, T1.atom_id2 FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id INNER JOIN molecule AS T3 ON T2.molecule_id = T3.molecule_id WHERE T3.label = 'noncarcinogenic'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'non_carcinogenic' GROUP BY T1.element ORDER BY COUNT(T1.element) ASC LIMIT 1
SELECT T2.bond_type FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T1.atom_id = 20 AND T1.atom_id2 = 8
SELECT DISTINCT CASE WHEN T1.label IS NULL THEN 'positive' ELSE 'negative' END AS result FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'Ti'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T2.molecule_id = T3.molecule_id WHERE T1.element IN ('s', 'i') AND T3.bond_type = 'single'
SELECT T2.atom_id, T2.atom_id2 FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_type = 3
SELECT T2.atom_id, T2.atom_id2 FROM molecule AS T1 INNER JOIN connected AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T1.label = 'TR181'
SELECT CAST(COUNT(CASE WHEN T2.element != 'F' THEN T1.molecule_id ELSE NULL END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = 'carbonyl'
SELECT CAST(COUNT(CASE WHEN T2.bond_type = 'carb' THEN T1.molecule_id ELSE NULL END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR000' ORDER BY T1.element LIMIT 3
SELECT T1.atom_id, T1.atom_id2 FROM connected AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T1.bond_id = T3.bond_id WHERE T2.label = 'TR001' AND T3.bond_id = 'TR001_2_6'
SELECT COUNT(CASE WHEN T2.label LIKE '%carcinogenic' THEN T1.molecule_id ELSE NULL END) - COUNT(CASE WHEN T2.label NOT LIKE '%carcinogenic' THEN T1.molecule_id ELSE NULL END) FROM molecule AS T1 INNER JOIN connected AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T3.molecule_id = T2.molecule_id
SELECT T2.atom_id, T2.atom_id2 FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_type = 'tr_000_2_5'
SELECT T2.bond_id FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id2 WHERE T1.molecule_id = 2 AND T1.element = 'TR000_2'
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' ORDER BY T1.label LIMIT 5
SELECT CAST(COUNT(CASE WHEN T2.bond_type = 'double' THEN T2.bond_id ELSE NULL END) AS REAL) * 100 / COUNT(T2.bond_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR008'
SELECT CAST(COUNT(CASE WHEN molecule_id > 1 THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(molecule_id) FROM molecule
SELECT CAST(COUNT(CASE WHEN T1.element = 'H' THEN T1.atom_id ELSE NULL END) AS REAL) * 100 / COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR206'
SELECT T2.bond_type FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR000'
SELECT T1.element, T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR060'
SELECT T1.bond_type, CASE WHEN SUM(CASE WHEN T2.label = 'TR018' THEN 1 ELSE 0 END) * 100 / COUNT(T2.label) > 50 THEN 'carcinogenic' ELSE 'not carcinogenic' END FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.bond_type
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'single' AND T1.label NOT LIKE '%carcinogenic%' ORDER BY T1.label LIMIT 3
SELECT T2.bond_type FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR006' ORDER BY T2.bond_type LIMIT 2
SELECT COUNT(T2.bond_id) FROM molecule AS T1 INNER JOIN connected AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN atom AS T3 ON T3.molecule_id = T1.molecule_id WHERE T3.atom_id = 12 AND T1.label = 'TR009'
SELECT COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T2.bond_id = T3.bond_id INNER JOIN atom AS T4 ON T3.atom_id = T4.atom_id WHERE T1.label = 'carcinogenic' AND T4.element = 'bromine'
SELECT T2.bond_type, T1.atom_id, T1.atom_id2 FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.molecule_id = ( SELECT molecule_id FROM molecule WHERE label = 'TR001_6_9' )
SELECT T1.label, CASE WHEN T2.label LIKE '%carcinogenic' THEN 'TRUE' ELSE 'FALSE' END FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 'TR001_10'
SELECT COUNT(molecule_id) FROM bond WHERE bond_type = 'triple'
SELECT COUNT(atom_id2) FROM connected WHERE atom_id = 19
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR004'
SELECT COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN connected AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T3.molecule_id = T2.molecule_id WHERE T3.bond_type = '1'
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'carbonyl' AND T2.molecule_id IN (21, 22, 23, 24, 25)
SELECT T2.bond_type FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element IN ('phosphorus', 'nitrogen')
SELECT T2.label FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = 'double' ORDER BY T2.label DESC LIMIT 1
SELECT AVG(T2.bond_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T3.bond_id = T2.bond_id WHERE T1.element = 'I'
SELECT T1.bond_type, T1.bond_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T2.atom_id = 45
SELECT DISTINCT element FROM atom WHERE molecule_id NOT IN ( SELECT molecule_id FROM bond )
SELECT T2.atom_id FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T2.bond_id = T3.bond_id WHERE T1.label = 'TR447' AND T2.bond_type = 'triple'
SELECT element FROM atom WHERE molecule_id = ( SELECT molecule_id FROM molecule WHERE label = 'TR144_8_19' )
SELECT T1.label FROM molecule AS T1 INNER JOIN ( SELECT molecule_id FROM bond WHERE bond_type = 'double' ) AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.label ORDER BY COUNT(T2.molecule_id) DESC LIMIT 1
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic' GROUP BY T1.element ORDER BY COUNT(T1.element) ASC LIMIT 1
SELECT DISTINCT T1.atom_id FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T2.bond_id = T3.bond_id INNER JOIN atom AS T4 ON T3.atom_id2 = T4.atom_id WHERE T4.element = 'lead'
SELECT T1.element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'triple'
SELECT CAST(COUNT(CASE WHEN T1.element = 'C' THEN T2.bond_id ELSE NULL END) AS REAL) * 100 / COUNT(T2.bond_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T2.bond_id = T3.bond_id
SELECT CAST(COUNT(CASE WHEN bond_type = 'single' THEN molecule_id ELSE NULL END) AS REAL) * 100 / COUNT(molecule_id) FROM bond WHERE molecule_id IN ( SELECT molecule_id FROM molecule WHERE label = 'carbonyl compound' )
SELECT COUNT(atom_id) FROM atom WHERE element = 'C' OR element = 'H'
SELECT T2.atom_id2 FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN atom AS T3 ON T3.atom_id = T2.atom_id2 WHERE T3.element = 'sulfur'
SELECT T2.bond_type FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Tin'
SELECT COUNT(T1.element) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T2.molecule_id = T3.molecule_id WHERE T3.bond_type = 1
SELECT COUNT(T1.element) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T2.molecule_id = T3.molecule_id WHERE T1.element = 'phosphorus' OR T1.element = 'bromine' AND T3.bond_type = 'triple'
SELECT T2.bond_id FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carcinogenic'
SELECT T1.molecule_id FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 1
SELECT CAST(COUNT(CASE WHEN T1.element = 'Cl' THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(T1.element) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'single'
SELECT label FROM molecule WHERE molecule_id IN (0, 1, 2)
SELECT T1.molecule_id FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'non carcinogenic'
SELECT COUNT(molecule_id) FROM molecule WHERE molecule_id >= 0 AND molecule_id < 10 AND molecule.label = 'carcinogenic'
SELECT bond_type FROM bond WHERE molecule_id >= 'TR000' AND molecule_id < 'TR051'
SELECT T1.element, T2.element FROM atom AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T2.molecule_id = T3.molecule_id WHERE T3.bond_id = 'TR001_10_11'
SELECT COUNT(bond_id) FROM connected WHERE atom_id IN ( SELECT atom_id FROM atom WHERE element = 'iodine' )
SELECT T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Calcium' GROUP BY T2.label
SELECT CASE WHEN T1.element = 'C' AND T3.element = 'Cl' THEN 'YES' ELSE 'NO' END FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN atom AS T3 ON T3.atom_id = T2.atom_id WHERE T2.bond_id = 'TR001_1_8'
SELECT T1.molecule_id FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T2.bond_id = T3.bond_id WHERE T2.bond_type = 'triple bond' AND T1.label = 'carcinogenic' AND T3.atom_id = 1 AND T3.atom_id2 = 2
SELECT CAST(COUNT(CASE WHEN T2.element = 'Chlorine' THEN T1.molecule_id ELSE NULL END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carcinogenic'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR001'
SELECT molecule_id FROM bond WHERE bond_type = 'double'
SELECT T2.atom_id, T2.atom_id2 FROM molecule AS T1 INNER JOIN connected AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T3.bond_id = T2.bond_id WHERE T3.bond_type = 3
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T2.molecule_id = T3.molecule_id WHERE T3.bond_id = 'TR005_16_26'
SELECT COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'single' AND T1.label = 'non-carcinogenic'
SELECT T2.label FROM bond AS T1 INNER JOIN molecule AS T2 ON T2.molecule_id = T1.molecule_id WHERE T1.bond_id = 'TR001_10_11'
SELECT DISTINCT T1.bond_id, CASE WHEN T1.bond_type = 3 THEN 'carcinogenic' ELSE 'not carcinogenic' END FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = 3
SELECT T2.element FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = 'carbonyl' AND T2.atom_id = 4
SELECT CAST(SUM(CASE WHEN element = 'H' THEN 1 ELSE 0 END) AS REAL) / COUNT(atom_id) FROM atom WHERE molecule_id = 'TR006'
SELECT CASE WHEN COUNT(CASE WHEN T1.element = 'Cai' THEN T2.label END) > 0 THEN 'carcinogenic' ELSE 'not carinogenic' END FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id
SELECT T2.bond_type FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Tellurium'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T2.molecule_id = T3.molecule_id WHERE T2.label = 'tr001_10_11' GROUP BY T1.element
SELECT CAST(COUNT(CASE WHEN bond_type = 3 THEN molecule_id ELSE NULL END) AS REAL) * 100 / COUNT(molecule_id) FROM bond
SELECT CAST(COUNT(CASE WHEN T2.bond_type = 'double' THEN T1.molecule_id ELSE NULL END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR047'
SELECT CASE WHEN T2.label LIKE '%carcinogenic%' THEN 'yes' ELSE 'no' END FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = 'TR001_1'
SELECT CASE WHEN T1.label LIKE 'TR151' THEN ( SELECT CASE WHEN num > 0 THEN 'carcinogenic' ELSE 'not carinogenic' END FROM ( SELECT COUNT(T2.bond_type) AS num FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T2.bond_id = T3.bond_id INNER JOIN atom AS T4 ON T3.atom_id = T4.atom_id WHERE T1.label = 'TR151' AND T2.bond_type = 'double' ) t ) ELSE 'not TR151' END
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR151' AND T1.element IN ('As', 'Sb', 'Sn', 'Pb')
SELECT COUNT(molecule_id) FROM molecule WHERE label = 'carcinogenic'
SELECT T2.atom_id FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label LIKE 'TR%' AND T1.molecule_id BETWEEN 10 AND 50 AND T2.element = 'C'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic compounds'
SELECT T1.bond_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T2.molecule_id = T1.molecule_id WHERE T2.label = 'carcinogenic compound' AND T1.bond_type = 'double'
SELECT COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'H' AND T1.label = 'carcinogenic compound'
SELECT T1.molecule_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id INNER JOIN atom AS T3 ON T3.molecule_id = T1.molecule_id AND T3.atom_id = T2.atom_id WHERE T1.bond_type = 'TR00_1_2' AND T3.element = 'TR00_1'
SELECT T1.atom_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'C' AND T2.label != 'compound carcinogenic'
SELECT CAST(COUNT(CASE WHEN T2.element = 'H' THEN T1.molecule_id ELSE NULL END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'neglected'
SELECT CASE WHEN T1.label = 'TR124' THEN T2.carcinogenic ELSE NULL END FROM molecule AS T1 INNER JOIN toxicology AS T2 ON T1.molecule_id = T2.molecule_id
SELECT T2.element FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR186'
SELECT bond_type FROM bond WHERE molecule_id = ( SELECT molecule_id FROM molecule WHERE label = 'TR007_4_19' )
SELECT T1.element, T2.element FROM atom AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T3.molecule_id = T2.molecule_id WHERE T3.bond_id = 'TR001_2_4'
SELECT COUNT(T1.bond_type), T2.label FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR006' AND T1.bond_type = 'double'
SELECT T1.label, T2.element FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T3.molecule_id = T2.molecule_id WHERE T3.bond_type = 'carboccyclic knot'
SELECT T2.bond_type, T1.atom_id, T1.atom_id2 FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_type = 'single'
SELECT T1.label, T3.element FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN atom AS T3 ON T2.molecule_id = T3.molecule_id WHERE T2.bond_type = 3
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T3.bond_id = T2.bond_id WHERE T3.bond_type = 'tr000_2_3'
SELECT COUNT(T1.bond_id) FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id INNER JOIN atom AS T3 ON T3.molecule_id = T1.molecule_id WHERE T3.element = 'Chlorine'
SELECT T1.atom_id, COUNT(T2.bond_type) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id WHERE T3.label = 'TR346' GROUP BY T1.atom_id
SELECT COUNT(T2.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = 'double' AND T2.label = 'carcinogenic compound'
SELECT COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN ( SELECT molecule_id FROM atom WHERE element != 'S' ) AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN ( SELECT molecule_id FROM bond WHERE bond_type = 'double' ) AS T3 ON T1.molecule_id = T3.molecule_id WHERE T1.molecule_id NOT IN ( SELECT T1.molecule_id FROM molecule AS T1 INNER JOIN ( SELECT molecule_id FROM atom WHERE element = 'S' ) AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN ( SELECT molecule_id FROM bond WHERE bond_type = 'double' ) AS T3 ON T1.molecule_id = T3.molecule_id )
SELECT CASE WHEN bond_type = 'tr001_2_4' THEN 'carcinogenic' ELSE 'not carcinogenic' END FROM bond
SELECT COUNT(atom_id) FROM atom WHERE molecule_id = 'TR005'
SELECT COUNT(bond_id) FROM bond WHERE bond_type = 'single'
SELECT T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'Cl'
SELECT T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'c' AND T2.label NOT LIKE '%carcinogenic%'
SELECT CAST(COUNT(CASE WHEN T1.element = 'Chlorine' THEN T2.molecule_id ELSE NULL END) AS REAL) * 100 / COUNT(T2.molecule_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T2.bond_id = T3.bond_id INNER JOIN molecule AS T4 ON T4.molecule_id = T1.molecule_id WHERE T2.bond_type = 'carbonyl_cyclic'
SELECT molecule_id FROM bond WHERE bond_id = 'TR001_1_7'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T3.bond_id = T2.bond_id WHERE T3.bond_id = 'TR001_3_4'
SELECT T2.bond_type FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T1.atom_id = 309236 AND T1.atom_id2 = 65536
SELECT T1.molecule_id FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.atom_id = 'TR000_2' AND T2.atom_id2 = 'TR000_4'
SELECT element FROM atom WHERE atom_id = 'TR000_1'
SELECT CASE WHEN T1.label = 'TR000' THEN T2.bond_type ELSE NULL END FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id
SELECT CAST(COUNT(CASE WHEN T1.bond_type = 'single' THEN T2.molecule_id ELSE NULL END) AS REAL) * 100 / COUNT(T2.molecule_id) FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id
SELECT COUNT(*) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T1.molecule_id = T3.molecule_id WHERE T1.element = 'Nitrogen' AND T3.bond_type = 'carbonyl'
SELECT T1.label FROM molecule AS T1 INNER JOIN ( SELECT T.molecule_id FROM molecule AS T INNER JOIN bond AS T1 ON T.molecule_id = T1.molecule_id WHERE T1.bond_type = 'double' GROUP BY T.molecule_id ) AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN ( SELECT T.molecule_id FROM molecule AS T INNER JOIN bond AS T1 ON T.molecule_id = T1.molecule_id WHERE T1.bond_type = 'double' GROUP BY T.molecule_id ) AS T3 ON T1.molecule_id = T3.molecule_id INNER JOIN ( SELECT T.molecule_id FROM molecule AS T INNER JOIN bond AS T1 ON T.molecule_id = T1.molecule_id WHERE T1.bond_type = 'double' GROUP BY T.molecule_id ) AS T4 ON T1.molecule_id = T4.molecule_id INNER JOIN ( SELECT T.molecule_id FROM molecule AS T INNER JOIN bond AS T1 ON T.molecule_id = T1.molecule_id WHERE T1.bond_type = 'double' GROUP BY T.molecule_id ) AS T5 ON T1.molecule_id = T5.molecule_id INNER JOIN ( SELECT T.molecule_id FROM molecule AS T INNER JOIN bond AS T1 ON T.molecule_id = T1.molecule_id WHERE T1.bond_type = 'double' GROUP BY T.molecule_id ) AS T6 ON T1.molecule_id = T6.molecule_id INNER JOIN ( SELECT T.molecule_id FROM molecule AS T INNER JOIN bond AS T1 ON T.molecule_id = T1.molecule_id WHERE T1.bond_type = 'double'
SELECT T2.label FROM connected AS T1 INNER JOIN molecule AS T2 ON T2.molecule_id = T1.molecule_id INNER JOIN atom AS T3 ON T3.molecule_id = T2.molecule_id WHERE T2.label != 'aspartate' GROUP BY T2.label HAVING COUNT(T2.label) > 5
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T2.molecule_id = T3.molecule_id WHERE T2.label = 'TR024' AND T3.bond_type = 'double'
SELECT T2.label FROM bond AS T1 INNER JOIN molecule AS T2 ON T2.molecule_id = T1.molecule_id WHERE T1.bond_type = 'carbonyl' GROUP BY T2.label ORDER BY COUNT(T2.label) DESC LIMIT 1
SELECT CAST(COUNT(T1.molecule_id) AS REAL) * 100 / ( SELECT COUNT(molecule_id) FROM molecule ) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T2.bond_id = T3.bond_id INNER JOIN atom AS T4 ON T3.atom_id = T4.atom_id WHERE T2.bond_type = 'triple' AND T4.element = 'H'
SELECT COUNT(molecule_id) FROM molecule WHERE label = 'carcinogenic'
SELECT COUNT(T.molecule_id) FROM ( SELECT T1.molecule_id FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label BETWEEN 'TR004' AND 'TR010' AND T2.bond_type = 'single' GROUP BY T1.molecule_id ) T
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR008' AND T1.element = 'C'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'not carcinogenic' AND T1.atom_id = 'TR004_7'
SELECT COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T2.bond_id = T3.bond_id WHERE T2.bond_type = 'double' AND T1.label = 'oxygen'
SELECT COUNT(*) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 3 AND T1.label = 'not carcinogenic'
SELECT T1.element, T3.bond_type FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T3.bond_id = T2.bond_id INNER JOIN molecule AS T4 ON T4.molecule_id = T3.molecule_id WHERE T4.label = 'TR016'
SELECT T2.atom_id FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T2.molecule_id = T3.molecule_id WHERE T1.label = 'TR012' AND T3.bond_type = 'double' AND T2.element = 'C'
SELECT T1.atom_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic' AND T1.element = 'O'
SELECT name FROM cards WHERE faceName IS NOT NULL AND power IS NOT NULL AND facePower IS NOT NULL ORDER BY power - facePower DESC LIMIT 1
SELECT name FROM cards WHERE borderColor = '' AND isFoilOnly = FALSE AND availability = 'available'
SELECT faceName FROM cards WHERE faceConvertedManaCost > convertedManaCost
SELECT name FROM cards WHERE edhrecRank < 100 AND frameVersion = '2015'
SELECT T1.name FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'Mythic' AND T2.format = 'Gladiator' AND T2.status = 'Banned'
SELECT T2.status FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.type IN ('Artifact', 'LegendaryArtifact') AND T1.variations = 0 AND T2.format = 'Vintage'
SELECT T1.id, T1.artist FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = 'Commander' AND T1.power IS NULL AND T2.status = 'Legal'
SELECT T1.name, T2.text, T1.hasAlternativeDeckLimit OR T1.hasNonFoil OR T1.hasFoil OR T1.isAlternative OR T1.isPromo OR T1.isReserved OR T1.isStarter FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = 'Stephen Daniel'
SELECT T2.date, T2.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Sublime Epiphany' AND T1.number = '74s'
SELECT T1.name, T1.artist, T1.isPromo FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid GROUP BY T1.name, T1.artist, T1.isPromo ORDER BY COUNT(T2.id) DESC LIMIT 1
SELECT T1.language FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Annul' AND T2.number = 29 AND T1.isAlternative = 1
SELECT T1.name FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T2.language = 'ja' AND T1.hasAlternativeDeckLimit = 1
SELECT CAST(SUM(CASE WHEN T1.availability = 'Chinese (Simplified)' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.availability) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.id
SELECT T1.name, T1.baseSetSize FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'it'
SELECT COUNT(DISTINCT T2.type) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.scryfallId = T2.multiverseid WHERE T1.artist = 'Aaron Boyd' AND T2.language = 'en'
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT COUNT(id) FROM cards WHERE power = '-1+'
SELECT DISTINCT promoTypes FROM cards WHERE name = 'Duress'
SELECT borderColor FROM cards WHERE name = 'Ancestor''s Chosen'
SELECT originalType FROM cards WHERE name = 'Ancestor''s Chosen'
SELECT DISTINCT T1.language FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code INNER JOIN cards AS T3 ON T2.code = T3.setCode WHERE T3.name = 'Angel of Mercy'
SELECT COUNT(id) FROM rulings WHERE date LIKE '\%' AND text LIKE '\%'
SELECT T2.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Condemn'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Legal' AND T1.isStarter = 1
SELECT T1.status FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Cloudchaser Eagle'
SELECT type FROM cards WHERE name = 'Benalish Knight'
SELECT T2.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Benalish Knight'
SELECT DISTINCT artist FROM cards WHERE frameVersion = 'Phyrexian'
SELECT CAST(SUM(CASE WHEN borderColor = '' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM cards
SELECT COUNT(T1.scryfallId) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T2.language = 'de' AND T1.printings > 1
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T2.language = 'ru' AND T1.borderColor = ''
SELECT CAST(SUM(CASE WHEN T2.language = 'French' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T1.isStorySpotlight = 1
SELECT COUNT(id) FROM cards WHERE toughness = '99'
SELECT name FROM cards WHERE artist = 'Aaron Boyd'
SELECT COUNT(id) FROM cards WHERE borderColor = 'Black' AND availability = 'Mtgo'
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT layout FROM cards WHERE keywords LIKE '%flying%'
SELECT COUNT(id) FROM cards WHERE originalType = 'Summon - Angel' AND subtypes != 'Angel'
SELECT id FROM cards WHERE facePower IS NOT NULL AND power IS NOT NULL AND facePower > power
SELECT id FROM cards WHERE duelDeck = '1'
SELECT edhrecRank FROM cards WHERE frameVersion = '2015'
SELECT T1.artist FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T2.language = 'zh-CN'
SELECT T1.name FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Legal' AND T1.availability = 'Paper' AND T1.flavorName IS NOT NULL AND T1.flavorName <> ''
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Banned' AND T1.borderColor = 'White'
SELECT T1.uuid, T2.language FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T1.layout = 'Legacy'
SELECT T2.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Beacon of Immortality'
SELECT COUNT(T1.id), T2.status FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.frameVersion = 'Future'
SELECT T1.name, T1.colorIdentity FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Anthology'
SELECT T1.flavorText, T2.language FROM foreign_data AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.id = 10E AND T1.flavorText IS NOT NULL AND T1.flavorText <> ''
SELECT T1.name, T2.date FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originalType = 'Creature - Elf'
SELECT T1.colors, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.id BETWEEN 1 AND 20
SELECT T1.name FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T1.colors = 'Black' AND T1.type = 'Artifact' AND T2.language = 'French'
SELECT T1.name FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'uncommon' ORDER BY T2.date ASC LIMIT 3
SELECT COUNT(id) FROM cards WHERE artist = 'John Avon' AND power = '' AND isFoilOnly = 1
SELECT COUNT(id) FROM cards WHERE colors = 'W' AND borderColor = 'Borderless' AND power IS NOT NULL
SELECT COUNT(id) FROM cards WHERE artist = 'UDON' AND availability = 'mtgo' AND hand = -1
SELECT COUNT(id) FROM cards WHERE frameVersion = '1993' AND availability = 'Paper' AND hasContentWarning = 1
SELECT manaCost FROM cards WHERE layout = 'normal' AND frameVersion = '2003' AND borderColor = 'Black' AND availability = 'paper,mtgo'
SELECT SUM(manaCost) FROM cards WHERE artist = 'Rob Alexander'
SELECT DISTINCT T1.type FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Arena'
SELECT T1.setCode FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'es'
SELECT CAST(SUM(CASE WHEN T1.hand > 3 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code INNER JOIN foreign_data AS T3 ON T3.setCode = T2.code WHERE T1.frameEffects = 'Level 5'
SELECT CAST(SUM(CASE WHEN isStorySpotlight = 'T' AND isTextless = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM cards
SELECT CAST(SUM(CASE WHEN language = 'es' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM foreign_data UNION ALL SELECT name FROM cards WHERE availability = 'SDK'
SELECT T2.translation FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.baseSetSize = 309
SELECT COUNT(T1.code) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'pt-BR' AND T1.type = 'Commander'
SELECT T1.id FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Legal' AND T1.types = 'Creature-type'
SELECT DISTINCT T1.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T2.language = 'de'
SELECT COUNT(id) FROM cards WHERE power = 'null' AND flavorText LIKE '%%Triggered ability%'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Pre-modern' AND T1.variations = 0 AND T1.faceName IS NULL AND ( SELECT COUNT(id) FROM rulings WHERE text = 'This is a triggered mana ability.' )
SELECT T1.id FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = 'Pauper' AND T1.availability = 'Paper' AND T1.artist = 'Erica Yang'
SELECT artist FROM cards WHERE originalText = 'Das perfekte Gegenmittel zu einer dichten Formation'
SELECT T1.name FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = 'fr' AND T1.type = 'Creature' AND T2.layout = 'normal' AND T2.borderColor = 'Black' AND T2.artist = 'Matthew D. Wilson'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'print' AND T2.date = '2009-10-01'
SELECT T2.language FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.block = 'Ravnica' AND T1.baseSetSize = 180
SELECT CAST(SUM(CASE WHEN T1.hasContentWarning = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Legal'
SELECT CAST(SUM(CASE WHEN T1.power = '' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T2.language = 'fr'
SELECT CAST(SUM(CASE WHEN T1.type = 'Expansion' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'Japanese'
SELECT DISTINCT printing FROM cards WHERE artist = 'Daren Bader'
SELECT COUNT(id) FROM cards WHERE borderColor = '' AND edhrecRank > 12000
SELECT COUNT(id) FROM cards WHERE isOversized = ( SELECT isOversized FROM cards WHERE isReprint = ( SELECT isReprint FROM cards WHERE isPromo = '1' ) )
SELECT name FROM cards WHERE power = '?' AND promoTypes LIKE '%Arena League%' ORDER BY name ASC LIMIT 3
SELECT T1.language FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.multiverseId = 149934
SELECT cardKingdomFoilId, cardKingdomId FROM cards WHERE power IS NOT NULL AND facePower IS NOT NULL ORDER BY cardKingdomFoilId LIMIT 3
SELECT CAST(SUM(CASE WHEN layout = 'normal' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(layout) FROM cards WHERE layout IS NOT NULL
SELECT number FROM cards WHERE type = 'Creature' AND (variations IS NULL OR variations = '') AND (subtypes = 'Angel,Wizard' OR subtypes = 'Wizard,Angel')
SELECT name FROM sets WHERE isOnlineOnly = 'T' ORDER BY name LIMIT 3
SELECT DISTINCT T1.language FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Archenemy' AND T2.code = 'ARC'
SELECT T1.name, T2.translation FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.id = 5
SELECT T1.language, T2.name FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.id = 206
SELECT T1.id, T1.setCode FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'Italian' AND T1.block = 'Shadowmoor' ORDER BY T1.name LIMIT 2
SELECT T1.id FROM sets AS T1 INNER JOIN cards AS T2 ON T1.mtgoCode = T2.mtgoFoilId WHERE T2.availability != 'FO' AND T2.flavorText IS NOT NULL AND T2.flavorText LIKE '%日本%'
SELECT T1.name FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'RU' GROUP BY T1.name ORDER BY COUNT(T1.name) DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.language = 'zh' AND T2.availability = 'online' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid
SELECT COUNT(T2.releaseDate) FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.id WHERE T1.language = 'ja' AND T2.isOnlineOnly = 'FALSE'
SELECT COUNT(id) FROM cards WHERE borderColor = 'Black' UNION SELECT id FROM cards WHERE borderColor = 'Black'
SELECT COUNT(id) FROM cards WHERE frameEffects = 'Extended Art'
SELECT name FROM cards WHERE borderColor = 'Black' AND isFullArt = 1
SELECT DISTINCT T2.language FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.id = 174
SELECT name FROM sets WHERE code = 'ALL'
SELECT T1.language FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'A Pedra Fellwar'
SELECT id FROM sets WHERE releaseDate = '2007-07-13'
SELECT baseSetSize, code FROM sets WHERE block = 'Masques' OR block = 'Mirage'
SELECT code FROM sets WHERE type = 'expansion'
SELECT T1.name, T1.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T1.watermark = 'Boros water mark'
SELECT DISTINCT T1.language, T1.flavorText, T2.type FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.watermark = 'Colorpie'
SELECT CAST(SUM(CASE WHEN T1.convertedManaCost = 10 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Abyssal Horror'
SELECT DISTINCT T.code FROM sets AS T WHERE T.type = 'Expansion Commander'
SELECT T1.name, T1.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T1.watermark = 'Abzan fetters'
SELECT DISTINCT T1.language, T2.type FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.watermark = 'Azorius watermark'
SELECT COUNT(id) FROM cards WHERE artist = 'Aaron Miller' AND power IS NOT NULL AND power > 9
SELECT COUNT(id) FROM cards WHERE hand > 0 AND availability = 'paper'
SELECT name FROM cards WHERE flavorText IS NOT NULL
SELECT manaCost FROM cards WHERE name = 'Ancestor''s Chosen'
SELECT COUNT(id) FROM cards WHERE borderColor = 'White' AND power = '?'
SELECT name FROM cards WHERE isPromo = true AND (variations IS NOT NULL AND variations != '')
SELECT types FROM cards WHERE name = 'Molimo, Maro-Sorcerer'
SELECT purchaseUrls FROM cards WHERE promoTypes LIKE '%bundle%'
SELECT COUNT(DISTINCT artist) FROM cards WHERE borderColor = 'Black' AND availability = 'Both'
SELECT ( SELECT convertedManaCost FROM cards WHERE name = 'Serra Angel' ) - ( SELECT convertedManaCost FROM cards WHERE name = 'Shrine Keeper' )
SELECT artist FROM cards WHERE name = 'Battra, Dark Destroyer' AND promoTypes IS NOT NULL
SELECT name FROM cards WHERE convertedManaCost = ( SELECT MAX(convertedManaCost) FROM cards WHERE frameVersion = '2003' ) LIMIT 3
SELECT T2.translation FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = 'Ancestor''s Chosen' AND T2.language = 'it'
SELECT COUNT(T2.translation) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name LIKE '%Angel of Mercy%'
SELECT T1.name FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Hauptset Zehnte Edition'
SELECT T1.translation FROM set_translations AS T1 INNER JOIN sets AS T2 ON T2.code = T1.setCode WHERE T2.name = 'Ancestor''s Chosen' AND T1.language = 'KO'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Hauptset Zehnte Edition' AND T1.artist = 'Adam Rex'
SELECT baseSetSize FROM sets WHERE name = 'Hauptset Zehnte Edition'
SELECT translation FROM set_translations WHERE language = 'chs' AND setCode = ( SELECT code FROM sets WHERE name = 'Eighth Edition' )
SELECT COUNT(DISTINCT T1.code) FROM sets AS T1 INNER JOIN cards AS T2 ON T1.mtgoCode = T2.mtgoId WHERE T2.name = 'Angel of Mercy'
SELECT T1.releaseDate FROM sets AS T1 INNER JOIN cards AS T2 ON T1.code = T2.setCode WHERE T2.name = 'Ancestor''s Chosen'
SELECT type FROM sets WHERE name = 'Hauptset Zehnte Edition'
SELECT COUNT(T1.id) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.block = 'Ice Age' AND T2.language = 'it'
SELECT CASE WHEN COUNT(CASE WHEN T1.availability = 'foreign' THEN T1.id ELSE NULL END) > 0 THEN 'YES' ELSE 'NO' END FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.name = 'Adarkar Valkyrie'
SELECT COUNT(T1.id) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.baseSetSize < 10 AND T2.language = 'it'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Coldsnap' AND T1.borderColor = 'Black'
SELECT T2.name FROM sets AS T1 INNER JOIN cards AS T2 ON T1.code = T2.setCode WHERE T1.name = 'Coldsnap' ORDER BY T2.convertedManaCost DESC LIMIT 1
SELECT DISTINCT T1.artist FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Coldsnap' AND (T1.artist = 'Jeremy Jarvis' OR T1.artist = 'Aaron Miller' OR T1.artist = 'Chippy')
SELECT number FROM cards WHERE setCode = 'Coldsnap' AND number = 4
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.convertedManaCost > 5 AND T2.name = 'Coldsnap' AND T1.power IS NULL OR T1.power = ''
SELECT T2.flavorText FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.scryfallId = T2.id WHERE T2.language = 'it' AND T1.name = 'Ancestor''s Chosen'
SELECT T1.language FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T1.id WHERE T2.name = 'Ancestor''s Chosen'
SELECT T1.type FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'de' AND T1.name = 'Ancestor''s Chosen'
SELECT T1.text FROM rulings AS T1 INNER JOIN sets AS T2 ON T2.mtgoCode = T1.mtgoCode WHERE T2.name = 'Coldsnap' AND T1.language = 'it'
SELECT T1.name FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Coldsnap' ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT T2.date FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Reminisce'
SELECT CAST(SUM(CASE WHEN T1.convertedManaCost = 7 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Coldsnap'
SELECT CAST(SUM(CASE WHEN power > 9 AND T2.name = 'Coldsnap' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code
SELECT code FROM sets WHERE releaseDate = '2017-07-14'
SELECT keyruneCode FROM sets WHERE code = 'PKHC'
SELECT mcmId FROM sets WHERE code = 'SS2'
SELECT T1.mcmId FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.releaseDate = '2017-06-09' AND T2.translation = 'Magic'
SELECT type FROM sets WHERE name = 'From the Vault: Lore'
SELECT parentCode FROM sets WHERE name = 'Commander 2014 Oversized'
SELECT T2.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = 'Jim Pavelec' UNION ALL SELECT DISTINCT T2.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.hasContentWarning = 1 OR T1.hasFoil = 1 OR T1.hasNonFoil = 1
SELECT T1.releaseDate FROM sets AS T1 INNER JOIN cards AS T2 ON T1.code = T2.printings WHERE T2.name = 'Evacuation'
SELECT SUM(CASE WHEN T2.name = 'Rinascita di Alara' THEN 1 ELSE 0 END) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode
SELECT type FROM sets WHERE name = 'Huitième édition'
SELECT T2.translation FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = 'Tendo Ice Bridge' AND T2.language = 'fr'
SELECT COUNT(T2.translation) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = 'Salvat 2011'
SELECT T1.translation FROM set_translations AS T1 INNER JOIN cards AS T2 ON T2.setCode = T1.setCode WHERE T2.name = 'Fellwar Stone' AND T1.language = 'ja'
SELECT T1.name FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Journey into Nyx Hero''s Path' ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT releaseDate FROM sets WHERE name = 'Ola de frío'
SELECT T1.type FROM sets AS T1 INNER JOIN cards AS T2 ON T1.code = T2.setCode WHERE T2.name = 'Samite Pilgrim'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'World Championship Decks 2004' AND T1.convertedManaCost = 3
SELECT translation FROM set_translations WHERE language = 'chs' AND setCode = 'MIRR'
SELECT CAST(SUM(CASE WHEN T1.availability = 'Non-Foil' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.setCode = T2.setCode WHERE T2.language = 'Japanese'
SELECT CAST(SUM(CASE WHEN T1.availability = 'online only' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.setCode = T2.setCode WHERE T2.language = 'Brazilian Portuguese'
SELECT DISTINCT type FROM cards WHERE artist != 'Aleksi Briclot' AND availability != 'None'
SELECT id FROM sets ORDER BY baseSetSize DESC LIMIT 1
SELECT artist FROM cards WHERE isAlternative = 0 ORDER BY faceConvertedManaCost DESC LIMIT 1
SELECT frameEffects FROM cards WHERE faceName IS NOT NULL AND isFoilOnly = 1 GROUP BY faceName, frameEffects ORDER BY COUNT(frameEffects) DESC LIMIT 1
SELECT COUNT(id) FROM cards WHERE power = '-' AND hasFoil = 0 AND duelDeck = 'A'
SELECT id FROM sets WHERE type = 'Commander' ORDER BY totalSetSize DESC LIMIT 1
SELECT name FROM cards WHERE unconvertedManaCost > 0 ORDER BY unconvertedManaCost DESC LIMIT 10
SELECT T2.releaseDate, T1.format FROM legalities AS T1 INNER JOIN sets AS T2 ON T2.code = T1.uuid WHERE T2.type = 'Mythic' ORDER BY T2.releaseDate LIMIT 1
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T1.artist = 'Volkan BaÇµa' AND T2.language = 'French'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'rare' AND T1.type = 'Enchantment' AND T1.name = 'Abundance' AND T2.status = 'Legal'
SELECT T2.format, T1.name FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Banned' GROUP BY T2.format ORDER BY COUNT(T2.status) DESC LIMIT 1
SELECT T2.language FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = 'Battlebond'
SELECT T1.illustrator, T1.format FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid GROUP BY T1.illustrator ORDER BY COUNT(T1.illustrator) ASC LIMIT 1
SELECT T1.status FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.frameVersion = '1997' AND T2.artist = 'D. Alexander Gregory' AND T1.format = 'Legacy' AND T2.hasContentWarning = 1 OR T2.hasContentWarning = 1
SELECT T1.name, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.edhrecRank = 1 AND T2.status = 'Banned'
SELECT CAST(SUM(T1.baseSetSize) AS REAL) / 5, T2.language FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.releaseDate BETWEEN '2012-01-01' AND '2015-12-31'
SELECT DISTINCT artist FROM cards WHERE borderColor = 'Black' AND availability = 'Arena'
SELECT uuid FROM legalities WHERE status IN ('Banned', 'Restricted') AND format = 'Old School'
SELECT COUNT(id) FROM cards WHERE artist = 'Matthew D. Wilson' AND availability = 'Paper'
SELECT T2.date FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = 'Kev Walker' ORDER BY T2.date DESC
SELECT T1.name, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid INNER JOIN sets AS T3 ON T1.setCode = T3.code WHERE T3.name = 'Hour of Devastation'
SELECT T1.name FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'Korean' AND NOT (T2.language = 'Japanese' OR T2.language = 'Japan')
SELECT DISTINCT T1.name, T1.flavorText FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T1.artist = 'Allen Williams' AND T2.status = 'Banned'
SELECT DisplayName FROM users WHERE DisplayName IN ('Harlan', 'Jarrod Dixon') ORDER BY Reputation DESC LIMIT 1
SELECT DisplayName FROM users WHERE CreationDate LIKE '2014%'
SELECT COUNT(Id) FROM users WHERE LastAccessDate > '2014-09-01'
SELECT DisplayName FROM users ORDER BY Views DESC LIMIT 1
SELECT COUNT(Id) FROM users WHERE UpVotes > 100 AND DownVotes > UpVotes
SELECT COUNT(Id) FROM users WHERE CreationDate > 2013 AND AccountId > 10
SELECT COUNT(Id) FROM posts WHERE OwnerUserId = 3463377
SELECT Title FROM posts WHERE OwnerUserId = 2452956
SELECT OwnerDisplayName FROM posts WHERE Title = 'Eliciting priors from experts'
SELECT Title FROM posts WHERE OwnerUserId = 'csgillespie' ORDER BY Score DESC LIMIT 1
SELECT OwnerDisplayName FROM posts ORDER BY Score DESC LIMIT 1
SELECT SUM(T2.CommentCount) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = 'csgillespie'
SELECT COUNT(T1.AnswerCount) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'csgillespie'
SELECT LastEditorDisplayName FROM posts WHERE Title = 'Examples for teaching: Correlation does not mean causation'
SELECT COUNT(Id) FROM posts WHERE PostTypeId = 1 AND OwnerUserId = ( SELECT Id FROM users WHERE DisplayName = 'csgillespie' )
SELECT DISTINCT T1.OwnerDisplayName FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId WHERE T2.BountyAmount > 0
SELECT COUNT(T1.Id) FROM posts AS T1 WHERE T1.Score > 19 AND T1.OwnerUserId IN ( SELECT Id FROM users WHERE Age > 100 )
SELECT T1.Location FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = 'Eliciting priors from experts'
SELECT T1.Body FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId WHERE T2.TagName = 'bayesian'
SELECT T1.Body FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId ORDER BY T2.Count DESC LIMIT 1
SELECT COUNT(Id) FROM badges WHERE UserId = 'csgillespie'
SELECT Name FROM badges WHERE UserId = 2
SELECT COUNT(Id) FROM badges WHERE UserId = 'csgillespie' AND Date LIKE '2011%'
SELECT T1.DisplayName FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T1.DisplayName ORDER BY COUNT(T2.Name) DESC LIMIT 1
SELECT AVG(T1.Score) FROM posts AS T1 WHERE T1.OwnerUserId = 224623
SELECT CAST(SUM(CASE WHEN T1.Views > 200 THEN 1 ELSE 0 END) AS REAL) / COUNT(T1.Id) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId
SELECT CAST(SUM(CASE WHEN T1.Age > 1 AND T1.Age < 7 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Age) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Score > 20
SELECT SUM(CASE WHEN T2.CreationDate LIKE '2010-07-19%' THEN 1 ELSE 0 END) FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'No.58'
SELECT CreationDate FROM votes WHERE VoteTypeId = 2 ORDER BY CreationDate DESC LIMIT 1
SELECT COUNT(Id) FROM badges WHERE Name = 'Revival'
SELECT T1.Title FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId ORDER BY T2.Score DESC LIMIT 1
SELECT CommentCount FROM posts WHERE ViewCount = 1910
SELECT T1.FavoriteCount FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T2.UserId = 3025 AND T2.CreationDate = '2014-04-23T20:29:39.8270418Z'
SELECT T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.ParentId = 107829
SELECT CASE WHEN T1.PostTypeId = 2 THEN 'Yes' ELSE 'No' END FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T2.UserId = 23853 AND T2.CreationDate = '2013-07-12T09:08:18.907'
SELECT Reputation FROM users WHERE Id = ( SELECT OwnerUserId FROM posts WHERE Id = 65041 )
SELECT COUNT(Id) FROM posts WHERE OwnerDisplayName = 'Tiago Pasqualini'
SELECT T1.DisplayName FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.Id = 6347
SELECT COUNT(T2.PostId) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId INNER JOIN tags AS T3 ON T1.Id = T3.ExcerptPostId WHERE T3.TagName = 'data visualization'
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'DatEpicCoderGuyWhoPrograms'
SELECT CAST(COUNT(CASE WHEN T1.OwnerUserId = 24 THEN 1 ELSE NULL END) AS REAL) / COUNT(CASE WHEN T1.OwnerUserId = 24 THEN 1 ELSE NULL END) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId
SELECT ViewCount FROM posts WHERE Title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT Text FROM comments WHERE Score = 17
SELECT Id FROM users WHERE WebsiteUrl = 'http://stackoverflow.com'
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'SilentGhost' GROUP BY T2.Name
SELECT UserDisplayName FROM comments WHERE Text LIKE 'thank you user93!'
SELECT Text FROM comments WHERE UserId = ( SELECT Id FROM users WHERE DisplayName = 'A Lion' )
SELECT T1.OwnerUserId, T2.Reputation FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Understanding what Dassault iSight is doing?'
SELECT T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'How does gentle boosting differ FROM AdaBoost?'
SELECT T2.DisplayName FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Necromancer' LIMIT 10
SELECT LastEditorDisplayName FROM posts WHERE Title = 'Open source tools for visualizing multi-dimensional data'
SELECT DISTINCT T1.Title FROM posts AS T1 INNER JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T2.DisplayName = 'Vebjorn Ljosa'
SELECT SUM(T1.Score), T2.WebsiteUrl FROM posts AS T1 INNER JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T1.LastEditorDisplayName = 'Yevgeny' GROUP BY T2.WebsiteUrl
SELECT T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'Why square the difference instead of taking the absolute value in standard deviation?' AND T1.LastEditorUserId IS NOT NULL
SELECT SUM(T2.BountyAmount) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId WHERE T1.Title LIKE '%data%'
SELECT T3.DisplayName FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId INNER JOIN users AS T3 ON T2.UserId = T3.Id WHERE T2.BountyAmount = 50 AND T1.Title LIKE '%variance%'
SELECT DISTINCT T3.Title, T3.Id, T1.Comment FROM postLinks AS T1 INNER JOIN tags AS T2 ON T1.RelatedPostId = T2.ExcerptPostId INNER JOIN posts AS T3 ON T1.RelatedPostId = T3.Id WHERE T2.TagName = 'humor' AND T1.LinkTypeId = 2
SELECT COUNT(Id) FROM comments WHERE UserId = 13
SELECT Id FROM users ORDER BY Reputation DESC LIMIT 1
SELECT UserId FROM users ORDER BY Views LIMIT 1
SELECT COUNT(Id) FROM badges WHERE Date LIKE '2011%' AND Name = 'Supporter'
SELECT COUNT(UserId) FROM badges WHERE COUNT(Id) > 5
SELECT COUNT(T1.Id) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name IN ('Teacher', 'Supporter') AND T1.Location = 'New York'
SELECT T1.OwnerUserId, T2.Reputation FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Id = 1
SELECT DISTINCT T1.OwnerUserId FROM posts AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.ViewCount > 1000 GROUP BY T1.OwnerUserId HAVING COUNT(T2.PostId) = 1
SELECT T1.Id, T1.Name FROM badges AS T1 INNER JOIN ( SELECT UserId, COUNT(Id) AS num FROM comments GROUP BY UserId ) AS T2 ON T1.UserId = T2.UserId ORDER BY T2.num DESC LIMIT 1
SELECT COUNT(T1.Id) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = 'India' AND T2.Name = 'Teacher'
SELECT SUM(CASE WHEN STRFTIME('%Y', Date) = '2010' THEN 1 ELSE 0 END) * 100.0 / COUNT(Name) AS percentage_2010 , SUM(CASE WHEN STRFTIME('%Y', Date) = '2011' THEN 1 ELSE 0 END) * 100.0 / COUNT(Name) AS percentage_2011 FROM badges WHERE Name = 'Student'
SELECT DISTINCT T1.PostHistoryTypeId, T2.UserId FROM postHistory AS T1 INNER JOIN comments AS T2 ON T2.PostId = T1.PostId WHERE T1.PostId = 3720
SELECT T1.Id, T1.Score FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.PostId = 61217
SELECT Score, LinkTypeId FROM postLinks WHERE RelatedPostId = 395
SELECT T1.PostId, T1.UserId FROM votes AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.Score > 60
SELECT SUM(T1.FavoriteCount) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Id = 686 AND STRFTIME('%Y', T1.CreationDate) = '2011'
SELECT AVG(T1.UpVotes), AVG(T1.Age) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.Posts > 10
SELECT COUNT(UserId) FROM badges WHERE Name = 'Announcer'
SELECT Name FROM badges WHERE Date = '2010-07-19 19:39:08.997'
SELECT COUNT(Id) FROM comments WHERE Score > 0
SELECT Text FROM comments WHERE CreationDate = '2010-07-19T14:25:47.4700000Z'
SELECT COUNT(PostId) FROM comments WHERE Score = 10
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId ORDER BY T1.Reputation DESC LIMIT 1
SELECT T2.Reputation FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Date = '2010-07-19 19:39:08.903'
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Pierre'
SELECT T2.Date FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = 'Rochester, NY'
SELECT CAST(SUM(CASE WHEN T2.Name = 'Teacher' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.UserId) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId
SELECT CAST(SUM(CASE WHEN T1.Age BETWEEN 13 AND 19 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Id) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = 'Organizer'
SELECT T1.Score FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CreationDate = '7/19/2010 7:19:56 PM'
SELECT T2.Text FROM posts AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.CreationDate = '7/19/2010 7:37:33 PM'
SELECT T1.Age FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = 'Vienna, Austria'
SELECT COUNT(T1.Id) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Age > 17 AND T2.Name = 'Supporter'
SELECT DISTINCT T1.Views FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Date = '2010-07-19 19:39:08.837'
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId ORDER BY T1.Reputation LIMIT 1
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Sharpie'
SELECT COUNT(T2.UserId) FROM posts AS T1 INNER JOIN badges AS T2 ON T1.OwnerUserId = T2.UserId WHERE T2.Name = 'Supporter' AND T1.CreationDate <= '2011-01-01T00:00:00.000'
SELECT DisplayName FROM users WHERE Id = 30
SELECT COUNT(Id) FROM users WHERE Location LIKE '%New York%'
SELECT SUM(BountyAmount) FROM votes WHERE CreationDate BETWEEN '2010-01-01' AND '2010-12-31'
SELECT COUNT(Id) FROM users WHERE Age > 18
SELECT DisplayName FROM users ORDER BY Views DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN SUBSTR(T1.CreationDate, 1, 4) = '2010' THEN T1.VoteTypeId ELSE NULL END) AS REAL) * 100 / SUM(CASE WHEN SUBSTR(T1.CreationDate, 1, 4) = '2011' THEN T1.VoteTypeId ELSE NULL END) FROM votes AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id
SELECT T1.TagName FROM tags AS T1 INNER JOIN users AS T2 ON T1.Id = T2.Id WHERE T2.DisplayName = 'John Stauffer'
SELECT COUNT(T1.Id) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'Daniel Vassallo'
SELECT SUM(CASE WHEN T1.DisplayName = 'Harlan' THEN 1 ELSE 0 END) FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId
SELECT AnswerCount FROM posts WHERE OwnerDisplayName = 'slashnick' ORDER BY AnswerCount DESC LIMIT 1
SELECT OwnerDisplayName FROM posts WHERE OwnerDisplayName IN ('Harvey Motulsky', 'Noah Snyder') ORDER BY Score DESC LIMIT 1
SELECT COUNT(*) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId WHERE T1.OwnerDisplayName = 'Matt Parker' AND T2.VoteTypeId = 2 > 4
SELECT COUNT(T2.Id) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.OwnerDisplayName = 'Neil McGuigan' AND T2.Score < 0
SELECT T1.Tags FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'Mark Meckes' AND T1.CommentCount = 0
SELECT T1.UserDisplayName FROM postHistory AS T1 INNER JOIN badges AS T2 ON T1.UserId = T2.UserId WHERE T2.Name = 'Organizer'
SELECT CAST(COUNT(CASE WHEN T1.Tags LIKE '%rs%' THEN T1.Id ELSE NULL END) AS REAL) * 100 / COUNT(T1.Id) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Location = 'Community'
SELECT SUM(CASE WHEN OwnerDisplayName = 'mornington' THEN ViewCount ELSE 0 END) - SUM(CASE WHEN OwnerDisplayName = 'Amos' THEN ViewCount ELSE 0 END) AS diff FROM posts
SELECT COUNT(UserId) FROM badges WHERE Date LIKE '2014%' AND Name = 'Commentator'
SELECT COUNT(Id) FROM posts WHERE CreationDate LIKE '2010-07-21%'
SELECT DisplayName, Age FROM users ORDER BY Views DESC LIMIT 1
SELECT DISTINCT LastEditDate, LastEditorUserId FROM posts WHERE Title = 'Detecting a given face in a database of facial images'
SELECT COUNT(Id) FROM comments WHERE UserId = 13 AND Score < 0
SELECT T1.Title, T3.DisplayName FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId INNER JOIN users AS T3 ON T2.UserId = T3.Id WHERE T2.Score > 0
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = 'North Pole' AND STRFTIME('%Y', T2.Date) = '2011'
SELECT DISTINCT T1.OwnerDisplayName, T1.OwnerUserId FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.FavoriteCount > 150
SELECT COUNT(T2.PostHistoryTypeId), T1.LastEditDate FROM posts AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title LIKE 'What is the best introductory Bayesian statistics textbook?'
SELECT T3.LastAccessDate, T3.Location FROM badges AS T1 INNER JOIN posts AS T2 ON T1.UserId = T2.OwnerUserId INNER JOIN users AS T3 ON T1.UserId = T3.Id WHERE T1.Name = 'Outliers'
SELECT T1.Title FROM posts AS T1 INNER JOIN postLinks AS T2 ON T1.Id = T2.RelatedPostId WHERE T2.LinkTypeId = 1 AND T1.Title = 'How to tell if something happened in a data set which monitors a value over time'
SELECT T2.PostId, T1.Name FROM badges AS T1 INNER JOIN postHistory AS T2 ON T1.UserId = T2.UserId WHERE T1.UserId = 46990 AND T2.CreationDate LIKE '2013%'
SELECT OwnerDisplayName FROM posts ORDER BY ViewCount DESC LIMIT 1
SELECT T1.OwnerDisplayName, T1.Location FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId WHERE T2.TagName = 'hypothesis-testing'
SELECT T2.Title, T1.LinkTypeId FROM postLinks AS T1 INNER JOIN posts AS T2 ON T1.RelatedPostId = T2.Id WHERE T2.Title = 'What are principal component scores?'
SELECT DISTINCT T1.OwnerDisplayName FROM posts AS T1 INNER JOIN posts AS T2 ON T1.ParentId = T2.Id WHERE T2.AnswerCount = 2 ORDER BY T1.Score DESC LIMIT 1
SELECT DISTINCT T1.DisplayName, T1.WebsiteUrl FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.BountyAmount = ( SELECT MAX(BountyAmount) FROM votes WHERE VoteTypeId = 8 )
SELECT Title FROM posts ORDER BY Score DESC LIMIT 5
SELECT COUNT(Id) FROM tags WHERE Count BETWEEN 5000 AND 7000
SELECT OwnerUserId FROM posts ORDER BY Score DESC LIMIT 1
SELECT MAX(T1.CreationDate), T1.Age FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId GROUP BY T1.Id, T1.CreationDate, T1.Age ORDER BY SUM(T2.Score) DESC LIMIT 1
SELECT COUNT(T1.Id) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId WHERE T2.BountyAmount = 50 AND T1.CreationDate BETWEEN '2011-01-01' AND '2012-01-01'
SELECT Id FROM users ORDER BY Age LIMIT 1
SELECT T1.Score FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId ORDER BY T2.Count DESC LIMIT 1
SELECT CAST(SUM(T1.Id) AS REAL) / 12 FROM postLinks AS T1 INNER JOIN posts AS T2 ON T1.RelatedPostId = T2.Id WHERE STRFTIME('%Y', T1.CreationDate) = '2010' AND T2.AnswerCount = 0
SELECT PostId FROM votes WHERE UserId = 1465 ORDER BY BountyAmount DESC LIMIT 1
SELECT T1.Title FROM posts AS T1 INNER JOIN postLinks AS T2 ON T1.Id = T2.PostId ORDER BY T2.CreationDate LIMIT 1
SELECT T1.DisplayName FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T1.DisplayName ORDER BY COUNT(T2.Name) DESC LIMIT 1
SELECT MIN(T2.CreationDate) FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'chl'
SELECT T2.CreationDate FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId ORDER BY T1.Age LIMIT 1
SELECT T2.DisplayName FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Autobiographer' ORDER BY T1.Date LIMIT 1
SELECT COUNT(T1.OwnerUserId) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Location = 'United Kingdom' AND T1.FavoriteCount >= 4
SELECT AVG(CAST(T1.Score AS REAL) / T2.CreationDate) FROM votes AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id
SELECT DisplayName FROM users WHERE Reputation = ( SELECT MAX(Reputation) FROM users )
SELECT COUNT(Id) FROM users WHERE Reputation > 2000 AND Views > 1000
SELECT DisplayName FROM users WHERE Age > 18
SELECT COUNT(T1.Id) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'Jay Stevens' AND STRFTIME('%Y', T1.CreationDate) = '2010'
SELECT Id, Title FROM posts WHERE OwnerDisplayName = 'Harvey Motulsky' ORDER BY ViewCount DESC LIMIT 1
SELECT Id, Title FROM posts WHERE Score = ( SELECT MAX(Score) FROM posts )
SELECT AVG(T1.Score) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'Stephen Turner'
SELECT DISTINCT T1.OwnerDisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.CreationDate LIKE '2011%' AND T1.ViewCount > 20000
SELECT T1.Id, T1.OwnerDisplayName FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId WHERE STRFTIME('%Y', T1.CreationDate) = '2010' ORDER BY T2.BountyAmount DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.Reputation > 1000 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Id) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.CreationDate LIKE '2011%'
SELECT CAST(SUM(CASE WHEN Age BETWEEN 13 AND 19 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(Id) FROM users
SELECT SUM(T1.Views), T1.DisplayName FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = 'Computer Game Datasets'
SELECT COUNT(Id) FROM posts WHERE ViewCount > ( SELECT CAST(SUM(Views) AS REAL) / COUNT(Id) FROM users )
SELECT COUNT(T2.Id) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Score = ( SELECT MAX(Score) FROM posts )
SELECT COUNT(T1.Id) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.ViewCount > 35000 AND T1.CommentCount = 0
SELECT T1.LastEditorDisplayName, T1.Location FROM posts AS T1 INNER JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T1.Id = 183
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Emmett' ORDER BY T2.Date DESC LIMIT 1
SELECT COUNT(Id) FROM users WHERE Age > 18 AND UpVotes > 5000
SELECT T2.Date - T3.CreationDate AS days FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId INNER JOIN users AS T3 ON T3.Id = T1.Id WHERE T1.DisplayName = 'Zolomon'
SELECT COUNT(T1.Id), ( SELECT COUNT(T2.Id) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.OwnerUserId = ( SELECT Id FROM users ORDER BY CreationDate DESC LIMIT 1 ) ) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.OwnerUserId = ( SELECT Id FROM users ORDER BY CreationDate DESC LIMIT 1 )
SELECT T2.Text, T1.DisplayName FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.UserId INNER JOIN posts AS T3 ON T2.PostId = T3.Id WHERE T3.Title = 'Analysing wind data with R' ORDER BY T2.CreationDate DESC LIMIT 1
SELECT COUNT(Id) FROM badges WHERE Name = 'Citizen Patrol'
SELECT COUNT(T1.Id) FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId WHERE T2.TagName = 'careers'
SELECT Reputation, Views FROM users WHERE DisplayName = 'Jarrod Dixon'
SELECT SUM(T1.CommentCount) + SUM(T1.AnswerCount) AS result FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'Clustering 1D data'
SELECT CreationDate FROM users WHERE DisplayName = 'IrishStat'
SELECT COUNT(T1.PostId) FROM votes AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.BountyAmount > 30
SELECT CAST(SUM(CASE WHEN T1.Score > 50 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.PostId) FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id ORDER BY T2.Reputation DESC LIMIT 1
SELECT COUNT(PostId) FROM comments WHERE Score < 20
SELECT COUNT(Id) FROM tags WHERE Id < 15 AND Count < 20
SELECT ExcerptPostId, WikiPostId FROM tags WHERE TagName = 'sample'
SELECT DISTINCT T1.Reputation, T1.UpVotes FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = 'fine, you win :)'
SELECT T1.Text FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title LIKE '%linear regression%'
SELECT T1.Score FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Views > 100 AND T2.Views < 150 ORDER BY T1.Score DESC LIMIT 1
SELECT T2.CreationDate, T1.Age FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T1.WebsiteUrl IS NOT NULL
SELECT COUNT(T1.Id) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.ViewCount < 5 AND T2.Score = 0
SELECT COUNT(Id) FROM comments WHERE PostId = 1 AND Score = 0
SELECT COUNT(T2.Id) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Tags LIKE '%products%' AND T2.Score = 0 INNER JOIN users AS T3 ON T2.UserId = T3.Id WHERE T3.Age = 40
SELECT T1.Id, T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'Group differences on a five point Likert item'
SELECT T1.UpVotes FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = 'R is also lazy evaluated.'
SELECT T1.Text FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Harvey Motulsky'
SELECT UserDisplayName FROM comments WHERE Score BETWEEN 1 AND 5 AND DownVotes = 0
SELECT CAST(SUM(CASE WHEN T1.UpVotes = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.UpVotes) FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Score BETWEEN 5 AND 10
SELECT T2.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id WHERE T1.superhero_name = '3-D Man'
SELECT COUNT(T1.id) FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id WHERE T1.power_name = 'Super Strength'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength' AND T1.height_cm > 200
SELECT T1.full_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id GROUP BY T1.full_name HAVING COUNT(T2.power_id) > 15
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Blue'
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.superhero_name = 'Apocalypse'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.eye_colour_id = 1 AND T3.power_name = 'Agility'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id INNER JOIN colour AS T3 ON T1.hair_colour_id = T3.id WHERE T2.colour = 'Blue' AND T3.colour = 'Blonde'
SELECT COUNT(T2.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id ORDER BY T1.height_cm DESC LIMIT 1
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.full_name = 'Sauron'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id INNER JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T3.publisher_name = 'Marvel Comics' AND T2.colour = 'Blue'
SELECT AVG(T1.height_cm) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT CAST(COUNT(CASE WHEN T3.power_name = 'Super Strength' THEN T1.superhero_name ELSE NULL END) AS REAL) * 100 / COUNT(T1.superhero_name) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN superpower AS T3 ON T3.id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC Comics'
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id ORDER BY T1.weight_kg ASC LIMIT 1
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Gold' AND T1.publisher_id IN ( SELECT id FROM publisher )
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.full_name = 'Blue Beetle II'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T2.colour = 'Blonde'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Intelligence' ORDER BY T2.attribute_value LIMIT 1
SELECT T1.race FROM superhero AS T1 INNER JOIN superpower AS T2 ON T1.id = T2.hero_id WHERE T1.superhero_name = 'Copycat'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Durability' AND T2.power_value < 50
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Death touch'
SELECT COUNT(*) FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN gender AS T3 ON T1.gender_id = T3.id WHERE T2.attribute_id = 1 AND T2.attribute_value = 100 AND T3.gender = 'Female'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id GROUP BY T1.superhero_name ORDER BY COUNT(T2.power_id) DESC LIMIT 1
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = 'vampire'
SELECT CAST(COUNT(CASE WHEN T1.alignment = 'Neutral' THEN T1.superhero_name ELSE NULL END) AS REAL) * 100 / COUNT(T1.superhero_name) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id
SELECT ( SELECT COUNT(T2.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC Comics' ) - ( SELECT COUNT(T2.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics' )
SELECT publisher_id FROM superhero WHERE full_name = 'Star Trek'
SELECT AVG(T2.attribute_value) FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id
SELECT COUNT(id) FROM superhero WHERE full_name = ''
SELECT T2.eye_colour_id FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.id = 75
SELECT T2.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id WHERE T1.superhero_name = 'Deathlok'
SELECT AVG(T1.weight_kg) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T2.gender = 'Female'
SELECT T2.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN gender AS T3 ON T1.gender_id = T3.id WHERE T3.gender = 'Male' LIMIT 5
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'alien'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.height_cm BETWEEN 170 AND 190 AND T2.colour = 'blank'
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = 56
SELECT T1.full_name FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = 'Demigod' LIMIT 5
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = 'bad'
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.weight_kg = 169
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T1.height_cm = 185 AND T1.race = 'human'
SELECT T2.eye_colour_id FROM superhero AS T1 INNER JOIN superhero AS T2 ON T1.id <> T2.id ORDER BY T2.weight_kg DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.height_cm BETWEEN 150 AND 180 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T2.gender = 'Male' AND T1.weight_kg > ( SELECT AVG(T1.weight_kg) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T2.gender = 'Male' ) * 0.79
SELECT T1.power_name FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id GROUP BY T1.power_name ORDER BY COUNT(T1.power_name) DESC LIMIT 1
SELECT T2.attribute_value FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T1.superhero_name = 'Abomination'
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = 1
SELECT COUNT(T1.id) FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id WHERE T1.power_name = 'Stealth'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Strength' ORDER BY T2.attribute_value DESC LIMIT 1
SELECT AVG(T1.weight_kg) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T2.colour = 'none'
SELECT COUNT(T2.id) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T1.publisher_name = 'Dark Horse Comics'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN hero_power AS T3 ON T1.id = T3.hero_id INNER JOIN superpower AS T4 ON T3.power_id = T4.id WHERE T2.publisher_name = 'Dark Horse Comics' AND T4.power_name = 'Durability' GROUP BY T1.superhero_name ORDER BY COUNT(T1.id) DESC LIMIT 1
SELECT T FROM ( SELECT eye_colour_id AS T FROM superhero WHERE full_name = 'Abraham Sapien' )
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Flight'
SELECT T3.colour FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id INNER JOIN colour AS T3 ON T2.skin_colour_id = T3.id WHERE T2.gender_id = ( SELECT id FROM gender WHERE gender = 'Female' ) AND T1.publisher_name = 'Dark Horse Comics'
SELECT T1.eye_colour_id, T1.hair_colour_id, T1.skin_colour_id, T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.eye_colour_id = T1.hair_colour_id AND T1.hair_colour_id = T1.skin_colour_id
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.superhero_name = 'A-Bomb'
SELECT CAST(SUM(CASE WHEN T1.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.gender) FROM gender AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.gender_id INNER JOIN colour AS T3 ON T2.eye_colour_id = T3.id WHERE T3.colour = 'Blue'
SELECT T1.full_name, T1.race_id FROM superhero AS T1 WHERE T1.full_name = 'Charles Chandler'
SELECT gender FROM superhero WHERE full_name = 'Agent 13'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Adaptation'
SELECT COUNT(T2.power_name) FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = 'Amazo'
SELECT T2.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id WHERE T1.full_name = 'Hunter Zolomon'
SELECT T1.height_cm FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Amber'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id INNER JOIN colour AS T3 ON T1.hair_colour_id = T3.id WHERE T2.colour = 'black' AND T3.colour = 'black'
SELECT T2.eye_colour_id FROM colour AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T1.colour = 'Gold'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'vampire'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = 'Neutral'
SELECT COUNT(*) FROM ( SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Strength' ORDER BY T2.attribute_value DESC LIMIT 1 )
SELECT T2.race, T2.alignment_id FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.full_name = 'Cameron Hicks'
SELECT CAST(SUM(CASE WHEN T1.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.gender) FROM gender AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.gender_id INNER JOIN publisher AS T3 ON T2.publisher_id = T3.id
SELECT AVG(T1.weight_kg) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'alien'
SELECT T1.weight_kg - T3.weight_kg FROM superhero AS T1 INNER JOIN superhero AS T3 ON T1.id = T3.id WHERE T1.full_name = 'Emil Blonsky' AND T3.full_name = 'Charles Chandler'
SELECT AVG(height_cm) FROM superhero
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = ( SELECT id FROM superhero WHERE superhero_name = 'Abomination' )
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id INNER JOIN gender AS T3 ON T3.id = T1.gender_id WHERE T2.race = 'god' OR T2.race = 'eternal' AND T3.gender = 'Male'
SELECT full_name FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = 'Neutral'
SELECT T2.attribute_name, T1.attribute_value FROM hero_attribute AS T1 INNER JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T1.hero_id = ( SELECT id FROM superhero WHERE full_name = '3-D Man' )
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id INNER JOIN colour AS T3 ON T1.hair_colour_id = T3.id WHERE T2.colour = 'Blue' AND T3.colour = 'Brown'
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name IN ('Hawkman', 'Speedy', 'Karate Kid')
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name IS NULL
SELECT CAST(COUNT(CASE WHEN T1.colour = 'Blue' THEN T2.superhero_name ELSE NULL END) AS REAL) * 100 / COUNT(T2.superhero_name) FROM colour AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.eye_colour_id
SELECT CAST(COUNT(CASE WHEN T1.gender = 'Male' THEN 1 ELSE NULL END) AS REAL) / COUNT(CASE WHEN T1.gender = 'Female' THEN 1 ELSE NULL END) FROM gender AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.gender_id
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT power_id FROM superpower WHERE power_name = 'cryokinesis'
SELECT superhero_name FROM superhero WHERE id = 294
SELECT full_name FROM superhero WHERE weight_kg IS NULL
SELECT T1.eye_colour_id FROM superhero AS T1 WHERE T1.full_name = 'Karen Beecher-Duncan'
SELECT T2.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id WHERE T1.full_name = 'Helen Parr'
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.weight_kg = 108 AND T1.height_cm = 188
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.id = 38
SELECT T3.race FROM hero_attribute AS T1 INNER JOIN superpower AS T2 ON T1.hero_id = T2.id INNER JOIN superhero AS T3 ON T1.hero_id = T3.id GROUP BY T3.race ORDER BY COUNT(T2.power_name) DESC LIMIT 1
SELECT T1.alignment, T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.superhero_name = 'Atom IV'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'blue' LIMIT 5
SELECT AVG(T2.attribute_value) FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN alignment AS T3 ON T3.id = T1.alignment_id WHERE T3.alignment = 'Neutral'
SELECT T1.skin_colour_id FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value = 100
SELECT COUNT(*) FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id INNER JOIN gender AS T3 ON T3.id = T1.gender_id WHERE T2.alignment = 'good' AND T3.gender = 'Female'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value BETWEEN 75 AND 80
SELECT T1.race FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T2.colour = 'Blue' AND T1.gender_id = ( SELECT id FROM gender WHERE gender = 'Male' )
SELECT CAST(SUM(CASE WHEN T2.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.superhero_name) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id INNER JOIN alignment AS T3 ON T1.alignment_id = T3.id WHERE T3.alignment = 'bad'
SELECT ( SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'blue' AND T1.eye_colour_id = 1 ) - ( SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'blue' AND T1.eye_colour_id = 1 AND T1.weight_kg IS NULL )
SELECT T2.weight_kg FROM superpower AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.id WHERE T1.power_name = 'strength' ORDER BY T2.weight_kg DESC LIMIT 1
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id INNER JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T3.superhero_name = 'Ajax'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T2.colour = 'green' AND T1.alignment_id = 2
SELECT COUNT(*) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN gender AS T3 ON T1.gender_id = T3.id WHERE T2.publisher_name = 'Marvel Comics' AND T3.gender = 'Female'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Control wind' ORDER BY T1.superhero_name ASC
SELECT T3.gender FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.power_name = 'Phoenix Force'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC Comics' ORDER BY T1.weight_kg DESC LIMIT 1
SELECT AVG(T1.height_cm) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Dark Horse Comics' AND T1.race = 'human'
SELECT COUNT(T1.height_cm) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Speed' ORDER BY T1.height_cm DESC LIMIT 1
SELECT COUNT(T1.id) - COUNT(T2.id) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T1.publisher_name = 'DC' OR T1.publisher_name = 'Marvel Comics'
SELECT T2.attribute_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T1.superhero_name = 'Black Panther' ORDER BY T2.attribute_value LIMIT 1
SELECT T1.eye_colour_id FROM superhero AS T1 WHERE T1.superhero_name = 'Abomination'
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = 'Charles Chandler'
SELECT CAST(SUM(CASE WHEN T2.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id INNER JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T3.publisher_name = 'George Lucas'
SELECT CAST(SUM(CASE WHEN T2.alignment = 'Good' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.superhero_name) FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id INNER JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T3.publisher_name = 'Marvel Comics'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T2.id = T1.publisher_id WHERE T1.full_name LIKE 'John%' AND T2.publisher_name = 'Marvel'
SELECT hero_id FROM hero_attribute ORDER BY attribute_value LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = 'Alien'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.weight_kg < 100 AND T2.colour = 'brown'
SELECT T2.attribute_value FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T1.superhero_name = 'Aquababy'
SELECT T1.weight_kg, T1.race_id FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.id = 40
SELECT AVG(T1.height_cm) FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = 'Neutral'
SELECT T1.hero_id FROM hero_attribute AS T1 INNER JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T2.attribute_name = 'Intelligence'
SELECT T2.eye_colour_id FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.superhero_name = 'Blackwulf'
SELECT T2.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id WHERE T1.height_cm * 100 > ( SELECT AVG(height_cm) FROM superhero ) * 80
SELECT T1.driverRef FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 18 AND T2.position = 18
SELECT T2.surname FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.lap = 19 AND T1.position = 2 ORDER BY T1.time DESC LIMIT 1
SELECT T1.year FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Shanghai'
SELECT T2.url FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Circuit de Barcelona-Catalunya'
SELECT T3.name FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId INNER JOIN circuits AS T3 ON T1.circuitId = T3.circuitId WHERE T2.country = 'Germany'
SELECT T3.position FROM constructors AS T1 INNER JOIN constructorResults AS T2 ON T1.constructorId = T2.constructorId INNER JOIN results AS T3 ON T2.raceId = T3.raceId WHERE T1.name = 'Renault'
SELECT COUNT(T3.raceId) FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId INNER JOIN ( SELECT raceId FROM races WHERE year = 2010 ) AS T3 WHERE T2.year = 2010 AND T1.country NOT IN ('Australia', 'Japan', 'United States')
SELECT T3.name FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId INNER JOIN circuits AS T3 ON T1.circuitId = T3.circuitId WHERE T2.country = 'Spain'
SELECT T1.lat, T1.lng FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Australian Grand Prix'
SELECT T2.url FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Sepang International Circuit'
SELECT T1.time FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Sepang International Circuit'
SELECT T1.lat, T1.lng FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Abu Dhabi Grand Prix'
SELECT T3.country FROM constructorResults AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN constructors AS T3 ON T1.constructorId = T3.constructorId WHERE T2.raceId = 24 AND T1.points = 1
SELECT T2.q1 FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T1.code = 'BQS' AND T2.raceId = 354
SELECT T1.nationality FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 355 AND T2.q2 = '1''0"40"'
SELECT T1.number FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 903 AND T2.q3 = '1:01.54'
SELECT COUNT(T1.driverId) FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN circuit AS T3 ON T2.circuitId = T3.circuitId WHERE T3.name = 'Bahrain International Circuit' AND T2.year = 2007 AND T1.statusId = 3
SELECT T2.year FROM races AS T1 INNER JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.raceId = 'R901'
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.date = '2015-11-29'
SELECT T2.driverId FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 592 AND T1.position <> 'DNF' ORDER BY T2.dob LIMIT 1
SELECT T1.url FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T2.time = '1' '01' '27' AND T2.raceId = 161
SELECT T3.name FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN circuits AS T3 ON T2.circuitId = T3.circuitId WHERE T2.raceId = 933 ORDER BY T1.fastestLapSpeed DESC LIMIT 1
SELECT T2.lat, T2.lng FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Malaysian Grand Prix'
SELECT T1.url FROM constructors AS T1 INNER JOIN constructorResults AS T2 ON T1.constructorId = T2.constructorId WHERE T2.raceId = 9 ORDER BY T2.points DESC LIMIT 1
SELECT T1.q1 FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.code = 'DIG06' AND T1.raceId = 345
SELECT T1.nationality FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 347 AND T2.q2 = '1''01'15'000000'
SELECT T1.code FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 45 AND T2.number = 3 AND T2.q3 = '1:33'
SELECT T2.time FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.code = 'BM07' AND T2.raceId = 'raceNo743'
SELECT T3.forename, T3.surname FROM races AS T1 INNER JOIN qualifying AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.name = 'San Marino Grand Prix' AND T1.year = 2006 AND T2.position = 2
SELECT T2.year FROM races AS T1 INNER JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.raceId = 'race901'
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.date = '2015-11-29'
SELECT T1.driverId FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 872 AND T2.position <> 'DNF' ORDER BY T1.dob LIMIT 1
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 348 ORDER BY T2.time ASC LIMIT 1
SELECT T1.nationality FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T2.time = ( SELECT MIN(time) FROM lapTimes )
SELECT CAST(COUNT(CASE WHEN T1.number = 853 THEN 1 ELSE NULL END) - COUNT(CASE WHEN T1.number = 854 THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(T1.number) FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.code = 'PR08'
SELECT CAST(COUNT(CASE WHEN T1.time IS NOT NULL THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.driverId) FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.date = '1983-07-16'
SELECT T1.year FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Singapore' AND T1.round = 1 LIMIT 1
SELECT COUNT(T1.raceId) FROM races AS T1 INNER JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.year = 2005 UNION ALL SELECT T1.name FROM races AS T1 INNER JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.year = 2005 ORDER BY T1.date DESC
SELECT T2.name FROM races AS T1 INNER JOIN races AS T2 ON T1.year = T2.year AND T1.round < T2.round WHERE T1.year = 2007 AND T1.round = 1
SELECT T1.name, T2.date FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.year = 1999 ORDER BY T2.date DESC LIMIT 1
SELECT year FROM races GROUP BY year ORDER BY COUNT(raceId) DESC LIMIT 1
SELECT T2.name FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 2017 AND T1.circuitId NOT IN ( SELECT circuitId FROM circuits WHERE year = 2000 )
SELECT T2.country, T2.name, T2.location FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'European Grand Prix' AND T1.year = 1950
SELECT T4.year FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId INNER JOIN results AS T3 ON T2.raceId = T3.raceId INNER JOIN seasons AS T4 ON T2.year = T4.year WHERE T1.name = 'Brands Hatch' AND T2.name = 'British Grand Prix' ORDER BY T4.year DESC LIMIT 1
SELECT COUNT(T3.year) FROM ( SELECT T1.year FROM seasons AS T1 INNER JOIN races AS T2 ON T1.year = T2.year INNER JOIN circuits AS T3 ON T2.circuitId = T3.circuitId WHERE T3.name = 'Silverstone' AND T3.country = 'United Kingdom' ) T4
SELECT T1.code, T1.surname FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = ( SELECT raceId FROM races WHERE name = '2010 Singapore Grand Prix' ) ORDER BY T2.position DESC
SELECT T2.driverId, T1.forename, T1.surname FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId ORDER BY T2.points DESC LIMIT 1
SELECT T3.forename, T3.surname, T2.points FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.name = 'Chinese Grand Prix' AND T1.year = 2017 LIMIT 3
SELECT T1.time, T2.driverId, T2.raceId FROM lapTimes AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId ORDER BY T1.time DESC LIMIT 1
SELECT AVG(T3.time) FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId INNER JOIN lapTimes AS T3 ON T3.driverId = T2.driverId INNER JOIN drivers AS T4 ON T4.driverId = T3.driverId WHERE T1.name = 'China' AND T1.year = 2009 AND T4.forename = 'Sebastian' AND T4.surname = 'Vettel'
SELECT CAST(SUM(CASE WHEN T1.position = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.raceId) FROM lapTimes AS T1 INNER JOIN races AS T3 ON T1.raceId = T3.raceId INNER JOIN circuits AS T2 ON T3.circuitId = T2.circuitId INNER JOIN drivers AS T4 ON T1.driverId = T4.driverId WHERE T4.code = 'HAM' AND T3.year >= 2010
SELECT T2.driverId, T3.nationality, AVG(T1.points) FROM driverStandings AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId INNER JOIN drivers AS T3 ON T3.driverId = T1.driverId WHERE T1.wins = ( SELECT MAX(wins) FROM driverStandings )
SELECT T2.name, JULIANDAY(T2.dob) - JULIANDAY(NOW()) AS age FROM nationality AS T1 INNER JOIN drivers AS T2 ON T1.nationality = T2.nationality WHERE T1.country = 'Japan' ORDER BY T2.dob LIMIT 1
SELECT DISTINCT T1.circuitId FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.year BETWEEN 1990 AND 2000 AND T2.name = T1.name
SELECT T3.name, T3.location, T1.name FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId INNER JOIN ( SELECT circuitId FROM races WHERE year = 2006 AND country = 'USA' ) AS T3 ON T1.circuitId = T3.circuitId WHERE T1.year = 2006 AND T2.country = 'USA'
SELECT T2.name, T2.location, T2.circuitRef FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.date LIKE '2005-09%'
SELECT T2.name FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T3.driverId = T1.driverId WHERE T3.forename = 'Alex' AND T3.surname = 'Yoong' AND T1.number < 10
SELECT COUNT(T3.raceId) FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId INNER JOIN circuits AS T4 ON T3.circuitId = T4.circuitId WHERE T1.forename = 'Michael' AND T1.surname = 'Schumacher' AND T4.name = 'Sepang International Circuit'
SELECT T1.name, T1.year FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.forename = 'Michael' AND T3.surname = 'Schumacher' ORDER BY T2.time DESC LIMIT 1
SELECT CAST(SUM(T2.points) AS REAL) / COUNT(T2.raceId) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T1.surname = 'Irvine' AND T2.year = 2000
SELECT T2.raceId, T1.points FROM driverStandings AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T1.position = 1 AND T2.driverId = 42
SELECT T1.name, T1.date FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 2017 ORDER BY T1.date DESC
SELECT T2.name, T2.year, T2.location FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId ORDER BY T1.laps DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.country = 'Germany' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'German Grand Prix'
SELECT lat, lng FROM circuits WHERE name = 'Silverstone'
SELECT url FROM circuits WHERE name = 'Silverstone Circuit' OR name = 'Hockenheimring' OR name = 'Hungaroring' ORDER BY lat DESC LIMIT 1
SELECT circuitRef FROM circuits WHERE name = 'Marina Bay Street Circuit'
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT COUNT(code) FROM drivers WHERE code IS NULL
SELECT country FROM drivers WHERE dob = ( SELECT MIN(dob) FROM drivers )
SELECT surname FROM drivers WHERE nationality = 'Italy'
SELECT url FROM drivers WHERE forename = 'Anthony' AND surname = 'Davidson'
SELECT driverRef FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton'
SELECT T1.name FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Spanish Grand Prix' AND T2.year = 2009
SELECT T2.year FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Silverstone'
SELECT T1.date FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Silverstone'
SELECT T3.time FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId INNER JOIN results AS T3 ON T2.raceId = T3.raceId WHERE T1.name = 'Abu Dhabi' AND T2.year = 2010
SELECT COUNT(T1.raceId) FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.country = 'Italy'
SELECT T1.date FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Barcelona-Catalunya'
SELECT url FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 2009 AND T2.name = 'Spanish Grand Prix'
SELECT T2.time FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.code = 'LH' ORDER BY T2.time LIMIT 1
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T2.time = ( SELECT MIN(time) FROM lapTimes )
SELECT T1.driverRef FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.name = 'Australian Grand Prix' AND T3.year = 2008 AND T2.position = 1
SELECT T3.name FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T1.driverId = 'lhh'
SELECT T2.name FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T1.driverId = T3.driverId WHERE T3.code = 'HAM' ORDER BY T1.rank DESC LIMIT 1
SELECT T2.fastestLapSpeed FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.name = 'Spanish Grand Prix' AND T1.year = 2009 ORDER BY T2.fastestLapSpeed DESC LIMIT 1
SELECT DISTINCT T1.year FROM seasons AS T1 INNER JOIN races AS T2 ON T1.year = T2.year INNER JOIN results AS T3 ON T2.raceId = T3.raceId INNER JOIN drivers AS T4 ON T3.driverId = T4.driverId WHERE T4.code = 'HAM'
SELECT T2.position FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T1.code = 'Hul' AND T2.raceId = '1' AND T2.year = 2008
SELECT T4.forename, T4.surname FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T3.driverId = T2.driverId INNER JOIN drivers AS T4 ON T4.driverId = T2.driverId WHERE T1.name = 'Australian Grand Prix' AND T1.year = 2008 AND T2.number = 4
SELECT COUNT(T3.driverId) FROM races AS T1 INNER JOIN qualifying AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.name = 'Australian Grand Prix' AND T1.year = 2008
SELECT T2.time FROM results AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.raceId = 'race_2008_australiangrandprix' AND T3.code = 'LH' ORDER BY T2.time ASC LIMIT 1
SELECT T2.time FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId INNER JOIN driverStandings AS T3 ON T2.raceId = T3.raceId WHERE T1.name = 'Australian Grand Prix' AND T1.year = 2008 AND T3.position = 2
SELECT T4.name, T4.url FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN constructorStandings AS T3 ON T2.raceId = T3.raceId INNER JOIN constructors AS T4 ON T3.constructorId = T4.constructorId WHERE T2.name = 'Australian Grand Prix' AND T1.position = 1 AND T2.year = 2008
SELECT COUNT(T1.driverId) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 'race_2008_au' AND T1.nationality = 'usa'
SELECT COUNT(T1.driverId) FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.name = 'Australian Grand Prix' AND T1.year = 2008
SELECT SUM(T3.points) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId INNER JOIN constructorStandings AS T3 ON T2.constructorId = T3.constructorId WHERE T1.surname = 'Hamilton'
SELECT AVG(T2.time) FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.code = 'HAM'
SELECT CAST(COUNT(CASE WHEN T2.laps = 333 THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(T2.driverId) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.name = 'Australian Grand Prix' AND T1.year = 2008
SELECT CAST(T2.time AS REAL) * 100 / T1.time FROM results AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId AND T1.driverId <> T2.driverId WHERE T1.raceId = 'raceId_2008' AND T1.positionText = 'Last' AND T2.positionText = 'Champion'
SELECT COUNT(circuitId) FROM circuits WHERE country = 'Australia' AND location = 'Melbourne'
SELECT lat, lng FROM circuits WHERE country = 'USA'
SELECT COUNT(driverId) FROM drivers WHERE nationality = 'British' AND dob > 1980
SELECT AVG(T3.points) FROM constructors AS T1 INNER JOIN results AS T2 ON T1.constructorId = T2.constructorId INNER JOIN constructorStandings AS T3 ON T2.constructorId = T3.constructorId WHERE T1.nationality = 'British'
SELECT T.name FROM ( SELECT T1.name, SUM(T2.points) AS num FROM constructors AS T1 INNER JOIN constructorStandings AS T2 ON T1.constructorId = T2.constructorId GROUP BY T1.name ) AS T ORDER BY T.num DESC LIMIT 1
SELECT T2.name FROM constructorStandings AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId WHERE T1.points = 0 AND T1.raceId = 291
SELECT COUNT(*) FROM ( SELECT T1.constructorId, T2.raceId FROM constructors AS T1 INNER JOIN constructorResults AS T2 ON T1.constructorId = T2.constructorId WHERE T2.points = 0 AND T1.nationality = 'Japan' GROUP BY T1.constructorId, T2.raceId HAVING COUNT(DISTINCT T2.raceId) = 2 ) AS T3
SELECT T2.name FROM constructorStandings AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId WHERE T1.position = 1
SELECT COUNT(T1.constructorId) FROM constructors AS T1 INNER JOIN lapTimes AS T2 ON T1.constructorId = T2.driverId WHERE T1.nationality = 'France' AND T2.lap > 50
SELECT CAST(COUNT(CASE WHEN T2.nationality = 'Japan' THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(T2.driverId) FROM seasons AS T1 INNER JOIN driverStandings AS T2 ON T1.year = T2.raceId WHERE T1.year BETWEEN 2007 AND 2009
SELECT AVG(T2.time) FROM constructorStandings AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.wins = 1
SELECT forename, surname FROM drivers WHERE dob > 1975 AND driverStandings.position = 2
SELECT COUNT(T2.driverId) FROM status AS T1 INNER JOIN results AS T2 ON T1.statusId = T2.statusId WHERE T2.position IS NULL AND T1.status = 'DNQ'
SELECT T2.forename, T2.surname FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId ORDER BY T1.time ASC LIMIT 1
SELECT T3.lap FROM constructorStandings AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId INNER JOIN lapTimes AS T3 ON T2.driverId = T3.driverId WHERE T1.wins = 1 AND T2.year = 2009 ORDER BY T3.time LIMIT 1
SELECT AVG(T2.fastestLapSpeed) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.name = 'Spanish Grand Prix' AND T1.year = 2009
SELECT T2.name, T2.year FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T1.time IS NOT NULL ORDER BY T1.time LIMIT 1
SELECT CAST(COUNT(CASE WHEN T2.year BETWEEN 2000 AND 2005 THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(T2.year) FROM drivers AS T1 INNER JOIN races AS T2 ON T1.driverId = T2.resultIds WHERE strftime('%Y', T1.dob) < '1985' AND T2.year BETWEEN 2000 AND 2005 AND T2.resultId IN ( SELECT resultId FROM results WHERE laps > 50 )
SELECT COUNT(T1.driverId) FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T2.time < '02:00:00' AND T1.nationality = 'France'
SELECT code FROM drivers WHERE nationality = 'America'
SELECT T1.raceId FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Bangalore' AND T1.year = 2009
SELECT COUNT(T1.driverId) FROM driverStandings AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T2.raceId = 18
SELECT COUNT(CASE WHEN T1.nationality = 'NL' THEN 1 ELSE NULL END) AS count , COUNT(T2.driverId) FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId WHERE T2.position IN (1, 2, 3) GROUP BY T1.driverId HAVING COUNT(T2.driverId)
SELECT driverRef FROM drivers WHERE forename = 'Robert' AND surname = 'Kubica'
SELECT COUNT(driverId) FROM drivers WHERE dob LIKE '1980%' AND nationality = 'Australia'
SELECT T2.driverId FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.nationality = 'Germany' AND T2.dob BETWEEN '1980-01-01' AND '1990-12-31' ORDER BY T1.time LIMIT 3
SELECT driverRef FROM drivers WHERE nationality = '德国' ORDER BY dob DESC LIMIT 1
SELECT T2.driverId, T2.code FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.dob BETWEEN '1971-01-01' AND '1971-12-31' ORDER BY T1.time ASC LIMIT 1
SELECT T3.driverId FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T3.driverId = T1.driverId WHERE T3.nationality = 'Spain' AND T2.year < 1982 ORDER BY T1.time DESC LIMIT 10
SELECT T2.year FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId ORDER BY T1.time ASC LIMIT 1
SELECT T2.year FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId ORDER BY T1.time LIMIT 1
SELECT T2.driverId FROM lapTimes AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.lap = 1 ORDER BY T1.time DESC LIMIT 5
SELECT COUNT(T2.raceId) FROM status AS T1 INNER JOIN results AS T2 ON T1.statusId = T2.statusId WHERE T2.raceId >= 50 AND T2.raceId <= 100 AND T1.status = 'Disqualified'
SELECT COUNT(circuitId) FROM circuits WHERE country = 'Austria' UNION ALL SELECT location, lat, lng FROM circuits WHERE country = 'Austria'
SELECT T2.raceId FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId GROUP BY T2.raceId ORDER BY COUNT(T1.raceId) DESC LIMIT 1
SELECT T1.driverRef, T1.name, T1.nationality, T1.dob FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 23 AND T2.position = 2
SELECT T1.name, T2.date, T2.time FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId INNER JOIN drivers AS T3 ON T3.driverId = T2.raceId WHERE T3.dob = ( SELECT MIN(T3.dob) FROM drivers AS T3 )
SELECT COUNT(T2.driverId) FROM status AS T1 INNER JOIN results AS T2 ON T1.statusId = T2.statusId WHERE T1.status = 'Disqualified' AND drivers.nationality = 'USA'
SELECT T1.url FROM constructors AS T1 INNER JOIN constructorResults AS T2 ON T1.constructorId = T2.constructorId WHERE T1.nationality = 'Italy' GROUP BY T1.url ORDER BY SUM(T2.points) DESC LIMIT 1
SELECT T1.url FROM constructors AS T1 INNER JOIN constructorStandings AS T2 ON T1.constructorId = T2.constructorId GROUP BY T1.constructorId, T1.url ORDER BY SUM(T2.wins) DESC LIMIT 1
SELECT T3.driverId FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T3.driverId = T2.driverId WHERE T1.name = 'French Grand Prix' AND T2.lap = 3 ORDER BY T2.time LIMIT 1
SELECT T2.raceId, T1.time FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T1.position = 1 ORDER BY T1.time DESC LIMIT 1
SELECT AVG(T2.time) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN results AS T3 ON T1.raceId = T3.raceId WHERE T1.name = 'United States Grand Prix' AND T1.year = 2006 AND T3.positionOrder < 11
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN pitStops AS T2 ON T1.driverId = T2.driverId WHERE T1.nationality = 'GER' AND T1.dob BETWEEN '1980-01-01' AND '1985-12-31' GROUP BY T1.driverId, T1.forename, T1.surname ORDER BY AVG(T2.duration) LIMIT 5
SELECT T4.driverId, T3.time FROM races AS T1 INNER JOIN qualifying AS T2 ON T1.raceId = T2.raceId INNER JOIN results AS T3 ON T1.raceId = T3.raceId INNER JOIN driverStandings AS T4 ON T4.raceId = T3.raceId WHERE T1.name = 'Canadian Grand Prix' AND T1.year = 2008 AND T2.position = 1
SELECT T3.constructorRef, T3.url FROM races AS T1 INNER JOIN result AS T2 ON T1.raceId = T2.raceId INNER JOIN constructors AS T3 ON T2.constructorId = T3.constructorId WHERE T1.name = 'Singapore Grand Prix' AND T1.year = 2009 AND T2.position = 1
SELECT forename, surname, dob FROM drivers WHERE dob BETWEEN '1981-01-01' AND '1991-12-31' AND nationality = 'Austria'
SELECT forename, surname, url, dob FROM drivers WHERE dob BETWEEN '1971-01-01' AND '1985-12-31' AND nationality = 'Germany' ORDER BY dob DESC
SELECT location, country, lat, lng FROM circuits WHERE name = 'Hungaroring'
SELECT T1.points, T2.name, T2.nationality FROM constructorStandings AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId INNER JOIN results AS T3 ON T3.constructorId = T2.constructorId WHERE T3.raceId = ( SELECT raceId FROM races WHERE name = 'Monaco Grand Prix' AND year BETWEEN 1980 AND 2010 ORDER BY year ASC LIMIT 1 ) ORDER BY T1.points DESC LIMIT 1
SELECT AVG(T3.points) FROM races AS T1 INNER JOIN qualifying AS T2 ON T1.raceId = T2.raceId INNER JOIN results AS T3 ON T3.raceId = T1.raceId INNER JOIN drivers AS T4 ON T4.driverId = T3.driverId WHERE T1.name = 'Turkish Grand Prix' AND T4.surname = 'Hamilton'
SELECT CAST(COUNT(T1.raceId) AS REAL) / 10 FROM races AS T1 INNER JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year BETWEEN 2001 AND 2010
SELECT nationality FROM drivers GROUP BY nationality ORDER BY COUNT(nationality) DESC LIMIT 1
SELECT COUNT(T2.wins) FROM driverStandings AS T1 INNER JOIN constructorStandings AS T2 ON T1.raceId = T2.raceId WHERE T1.position = 91
SELECT T2.name FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId ORDER BY T1.time DESC LIMIT 1
SELECT T1.name, T1.location FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId ORDER BY T2.date DESC LIMIT 1
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId INNER JOIN circuits AS T4 ON T3.circuitId = T4.circuitId WHERE T2.position = 1 AND T3.year = 2008 AND T4.name = 'Marina Bay Street Circuit'
SELECT T3.name, T1.name, T2.date FROM constructors AS T1 INNER JOIN constructorResults AS T2 ON T1.constructorId = T2.constructorId INNER JOIN races AS T3 ON T2.raceId = T3.raceId INNER JOIN drivers AS T4 ON T4.driverId = T2.driverId WHERE T2.position = 1 ORDER BY T4.dob LIMIT 1
SELECT COUNT(T3.status) FROM races AS T1 INNER JOIN qualifying AS T2 ON T1.raceId = T2.raceId INNER JOIN status AS T3 ON T3.statusId = T2.statusId WHERE T1.name = 'Canadian Grand Prix' ORDER BY T3.statusId DESC LIMIT 1
SELECT T1.wins, T3.forename, T3.surname FROM constructorStandings AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId INNER JOIN drivers AS T3 ON T1.constructorId = T3.driverId ORDER BY T3.dob DESC LIMIT 1
SELECT MAX(duration) FROM pitStops
SELECT MIN(T2.time) FROM circuits AS T1 INNER JOIN lapTimes AS T2 ON T1.circuitId = T2.raceId WHERE T1.name = 'Monaco'
SELECT T2.time FROM drivers AS T1 INNER JOIN pitStops AS T2 ON T1.driverId = T2.driverId WHERE T1.forename = 'Lewis' AND T1.surname = 'Hamilton' ORDER BY T2.duration DESC LIMIT 1
SELECT T2.lap FROM races AS T1 INNER JOIN pitStops AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.name = 'Australian Grand Prix' AND T1.year = 2011 AND T3.forename = 'Lewis' AND T3.surname = 'Hamilton'
SELECT T2.time FROM races AS T1 INNER JOIN pitStops AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T3.driverId = T2.driverId WHERE T1.name = 'Australian Grand Prix' AND T1.year = 2011
SELECT T2.lap FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.code = 'Hulkenberg' ORDER BY T2.time DESC LIMIT 1
SELECT T2.forename, T2.surname FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.time = ( SELECT MIN(time) FROM lapTimes )
SELECT T1.position FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.code = 'ahml01' AND T1.raceId IN ( SELECT raceId FROM results WHERE fastestLap IS NOT NULL ORDER BY fastestLap LIMIT 1 )
SELECT T3.time FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId INNER JOIN lapTimes AS T3 ON T2.raceId = T3.raceId WHERE T1.name = 'Austrian Grand Prix Circuit' GROUP BY T3.time ORDER BY T3.time DESC LIMIT 1
SELECT T3.lap FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId INNER JOIN lapTimes AS T3 ON T2.raceId = T3.raceId WHERE T1.country = 'Italy' ORDER BY T3.time DESC LIMIT 1
SELECT T2.raceId FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Austrian Grand Prix' ORDER BY T1.alt DESC LIMIT 1
SELECT T3.time - T3.lap FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId INNER JOIN lapTimes AS T3 ON T2.raceId = T3.raceId WHERE T1.name = 'Austrian Grand Prix Circuit' AND T2.raceId = 'race_1' AND T3.position = 1
SELECT T2.lng, T2.lat FROM lapTimes AS T1 INNER JOIN circuits AS T2 ON T1.raceId = T2.circuitId WHERE T1.time = '1:29.488'
SELECT AVG(T2.time) FROM drivers AS T1 INNER JOIN pitStops AS T2 ON T1.driverId = T2.driverId WHERE T1.code = 'LH06'
SELECT AVG(T2.time) FROM circuits AS T1 INNER JOIN lapTimes AS T2 ON T1.circuitId = T2.raceId WHERE T1.country = 'Italy'
SELECT player_api_id FROM Player_Attributes WHERE overall_rating = ( SELECT MAX(overall_rating) FROM Player_Attributes )
SELECT T1.height, T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id ORDER BY T2.overall_rating DESC LIMIT 1
SELECT DISTINCT preferred_foot FROM Player_Attributes WHERE potential = ( SELECT MIN(potential) FROM Player_Attributes )
SELECT COUNT(T1.player_api_id) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating BETWEEN 60 AND 65 AND T2.potential = 10
SELECT player_api_id FROM Player_Attributes ORDER BY crossing DESC LIMIT 5
SELECT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.country_id = T2.id WHERE T1.season = 2016 ORDER BY T1.goal DESC LIMIT 1
SELECT T2.team_long_name FROM Match AS T1 INNER JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id WHERE T1.season = 2016 AND T1.home_team_goal < T1.away_team_goal ORDER BY T1.home_team_goal DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id ORDER BY T2.penalties DESC LIMIT 10
SELECT T2.away_team_api_id FROM League AS T1 INNER JOIN Match AS T2 ON T1.id = T2.country_id AND T1.id = T2.league_id WHERE T1.name = 'Scotland Premier League' AND T2.season = 2010 ORDER BY T2.away_team_goal DESC LIMIT 1
SELECT T2.buildUpPlaySpeed FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id ORDER BY T2.buildUpPlaySpeed DESC LIMIT 4
SELECT T1.name FROM League AS T1 INNER JOIN Match AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 AND T2.away_team_goal = T2.home_team_goal GROUP BY T1.name ORDER BY COUNT(T2.id) DESC LIMIT 1
SELECT T1.player_name, strftime('%Y', T1.birthday) - strftime('%Y', T2.date) AS age FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.sprint_speed > 97 AND strftime('%Y', T2.date) BETWEEN '2013' AND '2015'
SELECT T1.name, COUNT(T2.home_team_api_id) FROM League AS T1 INNER JOIN Match AS T2 ON T1.id = T2.league_id GROUP BY T1.name ORDER BY COUNT(T2.home_team_api_id) DESC LIMIT 1
SELECT AVG(height) FROM Player WHERE strftime('%Y', birthday) BETWEEN '1990' AND '1995'
SELECT DISTINCT T1.player_api_id FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating = ( SELECT AVG(overall_rating) + ( SELECT MAX(overall_rating) - MIN(overall_rating) FROM Player_Attributes ) / 2 FROM Player_Attributes ) AND strftime('%Y', T2.date) = '2010'
SELECT team_fifa_api_id FROM Team_Attributes WHERE buildUpPlaySpeed BETWEEN 50 AND 60
SELECT T2.team_long_name FROM Match AS T1 INNER JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id OR T1.away_team_api_id = T2.team_api_id WHERE T1.season = 2012 AND T2.Team_Attributes.buildUpPlayPassing > ( SELECT AVG(T2.Team_Attributes.buildUpPlayPassing) FROM Match AS T1 INNER JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id OR T1.away_team_api_id = T2.team_api_id )
SELECT CAST(SUM(CASE WHEN T1.preferred_foot = 'left_foot' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.player_fifa_api_id) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE strftime('%Y', T2.birthday) BETWEEN '1987' AND '1992'
SELECT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id GROUP BY T1.league_id ORDER BY SUM(T1.home_team_goal + T1.away_team_goal) DESC LIMIT 5
SELECT AVG(T2.long_shots) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.player_name = 'Ahmed Samir Farag'
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 ORDER BY T2.heading_accuracy DESC LIMIT 10
SELECT T1.team_long_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlayDribblingClass = 'Normal' AND T2.date LIKE '2014%' AND T2.chanceCreationPassingClass < ( SELECT AVG(T2.chanceCreationPassing) FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlayDribblingClass = 'Normal' AND T2.date LIKE '2014%' ) ORDER BY T2.chanceCreationPassingClass DESC LIMIT 1
SELECT DISTINCT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.country_id = T2.id WHERE T1.season = '2009' AND T1.stage = 'Regulation' AND T1.home_team_goal > T1.away_team_goal
SELECT team_short_name FROM Team WHERE team_long_name = 'Queens Park Rangers'
SELECT T.player_name FROM ( SELECT T1.player_name, T2.birthday FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE strftime('%Y', T2.date) = '2012' AND strftime('%m', T2.date) = '10' ) AS T WHERE T.birthday LIKE '1970-10%'
SELECT T2.attacking_work_rate FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.player_name = 'Franco Zennaro'
SELECT T1.buildUpPlaySpeed FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.team_long_name = 'ADO Den Haag'
SELECT T1.finishing FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Francois Affolter' AND T1.date = '2014-09-18'
SELECT T1.overall_rating FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Gabriel Tamas' AND strftime('%Y', T1.date) = '2011'
SELECT COUNT(T1.id) FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T1.season = 2015 AND T2.name = 'Scotland Premier League'
SELECT T2.preferred_foot FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id ORDER BY T1.birthday DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id ORDER BY T2.potential DESC LIMIT 1
SELECT COUNT(T1.player_api_id) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = 'Left' AND T1.weight < 130
SELECT DISTINCT T1.team_short_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.chanceCreationPassingClass = 'Risky'
SELECT T2.defensive_work_rate FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.player_name = 'David Wilson'
SELECT birthday FROM Player WHERE id = ( SELECT player_api_id FROM Player_Attributes ORDER BY overall_rating DESC LIMIT 1 )
SELECT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.country_id = T2.id WHERE T1.country_id = 4
SELECT AVG(T2.home_team_goal) FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id INNER JOIN Country AS T3 ON T2.country_id = T3.id WHERE T1.season = 2011 AND T3.name = 'Poland'
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.finishing = ( SELECT MAX(finishing) FROM Player_Attributes ) OR T1.finishing = ( SELECT MIN(finishing) FROM Player_Attributes )
SELECT player_name FROM Player WHERE height > 180
SELECT COUNT(id) FROM Player WHERE birthday >= 1990
SELECT COUNT(id) FROM Player WHERE player_name LIKE 'Adam%' AND weight > 170
SELECT DISTINCT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date BETWEEN '2008-01-01' AND '2010-12-31' AND T2.overall_rating > 80
SELECT T2.potential FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.player_name = 'Aaron Doran'
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = 'left_foot'
SELECT DISTINCT T1.team_long_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.buildUpPlaySpeedClass = 'High'
SELECT T2.buildUpPlayPassingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'CLB'
SELECT DISTINCT T1.team_short_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlayPassing > 70
SELECT CAST(SUM(T1.overall_rating) AS REAL) / COUNT(T1.player_fifa_api_id) FROM Player_Attributes AS T1 INNER JOIN Match AS T2 ON T1.player_api_id = T2.home_player_1 OR T1.player_api_id = T2.away_player_1 OR T1.player_api_id = T2.home_player_2 OR T1.player_api_id = T2.away_player_2 OR T1.player_api_id = T2.home_player_3 OR T1.player_api_id = T2.away_player_3 OR T1.player_api_id = T2.home_player_4 OR T1.player_api_id = T2.away_player_4 OR T1.player_api_id = T2.home_player_5 OR T1.player_api_id = T2.away_player_5 WHERE T2.date BETWEEN '2010-01-01' AND '2015-12-31' AND T1.overall_rating > 170
SELECT player_name FROM Player WHERE height = ( SELECT MIN(height) FROM Player )
SELECT T2.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T1.name = 'Italy Serie A'
SELECT DISTINCT T1.team_short_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeed = 31 AND T2.buildUpPlayDribbling = 53 AND T2.buildUpPlayPassing = 32
SELECT AVG(T2.overall_rating) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.player_name = 'Aaron Doran'
SELECT COUNT(T1.id) FROM Match AS T1 INNER JOIN League AS T2 ON T1.country_id = T2.id WHERE T1.date BETWEEN '2008-08-01' AND '2008-10-31' AND T2.name = 'Germany 1. Bundesliga'
SELECT T1.team_short_name FROM Team AS T1 INNER JOIN Match AS T2 ON T1.team_api_id = T2.home_team_api_id WHERE T2.home_team_goal = 10
SELECT player_fifa_api_id FROM Player_Attributes WHERE balance = 61 AND potential = 61
SELECT SUM(CASE WHEN T1.player_name = 'Abdou Diallo' THEN T2.ball_control ELSE 0 END) - SUM(CASE WHEN T1.player_name = 'Aaron Appindangoye' THEN T2.ball_control ELSE 0 END) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id
SELECT team_long_name FROM Team WHERE team_short_name = 'GEN'
SELECT player_name FROM Player WHERE player_api_id = ( SELECT player_api_id FROM Player WHERE player_name = 'Aaron Lennon' OR player_name = 'Abdelaziz Barrada' ) ORDER BY birthday LIMIT 1
SELECT player_name FROM Player WHERE height = ( SELECT MAX(height) FROM Player )
SELECT COUNT(T1.player_api_id) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = 'left_foot' AND T2.positioning = 10
SELECT T2.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T1.name = 'Belgium Jupiler League'
SELECT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.country_id = T2.id INNER JOIN Country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Germany'
SELECT player_name FROM Player WHERE id = ( SELECT player_api_id FROM Player_Attributes ORDER BY strength DESC LIMIT 1 )
SELECT COUNT(T1.id) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE strftime('%Y', T1.birthday) < 1986 AND T2.defensive_work_rate > T2.attacking_work_rate
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name IN ('Alexis', 'Ariel Borysiuk', 'Arouna Kone') ORDER BY T2.crossing DESC LIMIT 1
SELECT T2.heading_accuracy FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.player_name = 'Ariel Borysiuk'
SELECT COUNT(T1.player_api_id) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.volleying > 70 AND T1.height > 180
SELECT player_name FROM Player WHERE volley_scoring > 70 AND dribbling_scoring > 70
SELECT COUNT(T1.id) FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T1.season = 2008 AND T2.name = 'Belgium Premier League'
SELECT T2.long_passing FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.birthday LIMIT 1
SELECT COUNT(T1.id) FROM Match AS T1 INNER JOIN League AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Belgium Jupiler League' AND T1.season = 2009 AND T1.stage = 'Playoffs' AND T1.date LIKE '2009-04%'
SELECT T1.name FROM League AS T1 INNER JOIN Match AS T2 ON T1.id = T2.league_id WHERE T2.season = 2008 AND T2.stage = 'Regulation' GROUP BY T1.name ORDER BY COUNT(T2.match_api_id) DESC LIMIT 1
SELECT AVG(T1.overall_rating) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE strftime('%Y', T2.birthday) < '1986'
SELECT CAST((SUM(CASE WHEN T2.player_name = 'Ariel Borysiuk' THEN T1.overall_rating ELSE 0 END) - SUM(CASE WHEN T2.player_name = 'Paulin Puel' THEN T1.overall_rating ELSE 0 END)) AS REAL) * 100 / SUM(CASE WHEN T2.player_name = 'Paulin Puel' THEN T1.overall_rating ELSE 0 END) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id
SELECT AVG(T2.buildUpPlaySpeed) FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'Heart of Midlothian'
SELECT AVG(T2.overall_rating) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.player_name = 'Pietro Marino'
SELECT T1.crossing FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Aaron Lennox'
SELECT T2.chanceCreationPassing, T2.chanceCreationPassingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_short_name = 'Ajax'
SELECT T2.preferred_foot FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.player_name = 'Abdou Diallo'
SELECT MAX(T2.overall_rating) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.player_name = 'Dorlan Pabon'
SELECT SUM(T1.away_team_goal) / COUNT(T1.id) FROM Match AS T1 INNER JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id WHERE T2.team_short_name = 'Parma' AND T1.country_id = ( SELECT id FROM Country WHERE name = 'Italy' )
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date = '2016-06-23' AND T2.overall_rating = 77 ORDER BY T1.birthday DESC LIMIT 1
SELECT T1.overall_rating FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Aaron Mooy' AND T1.date = '2016-02-04'
SELECT T2.potential FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.player_name = 'Francesco Parravicini' AND T2.date = '2010-08-30'
SELECT T1.attacking_work_rate FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.date = '2015-05-01' AND T2.player_name = 'Francesco Migliore'
SELECT T2.defensive_work_rate FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.player_name = 'Kevin Berigaud' AND T2.date = '2013-02-22'
SELECT T2.date FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Kevin Constant' ORDER BY T2.crossing DESC LIMIT 1
SELECT T2.buildUpPlaySpeedClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'Willem II' AND T2.date = '2011-02-22'
SELECT T2.buildUpPlayDribblingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_short_name = 'LEI' AND T2.date = '2015-09-10'
SELECT T2.buildUpPlayPassingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'FC Lorient' AND T2.date = '2010-02-22'
SELECT T2.chanceCreationPassingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id INNER JOIN Match AS T3 ON T1.team_api_id = T3.away_team_api_id WHERE T1.team_long_name = 'PEC Zwolle' AND T3.date = '2013-09-20'
SELECT T1.chanceCreationCrossingClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T2.team_api_id = T1.team_api_id WHERE T2.team_long_name = 'Hull City' AND T1.date = '2010-02-22'
SELECT T1.defenceAggressionClass FROM Team_Attributes AS T1 INNER JOIN Match AS T2 ON T1.team_fifa_api_id = T2.home_team_api_id OR T1.team_fifa_api_id = T2.away_team_api_id INNER JOIN Team AS T3 ON T2.home_team_api_id = T3.team_api_id OR T2.away_team_api_id = T3.team_api_id WHERE T3.team_long_name = 'Hannover 96' AND T2.date = '2015-09-10'
SELECT AVG(T2.overall_rating) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.player_name = 'Marko Arnautovic' AND T2.date BETWEEN '2007-02-22' AND '2016-04-21'
SELECT CAST((( SELECT T2.overall_rating FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Landon Donovan' AND T2.date = '2013-07-12' ) - ( SELECT T3.overall_rating FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Jordan Bowery' AND T2.date = '2013-07-12' )) AS REAL) * 100 / ( SELECT T3.overall_rating FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Jordan Bowery' AND T2.date = '2013-07-12' )
SELECT player_name FROM Player WHERE height = ( SELECT MAX(height) FROM Player ) LIMIT 5
SELECT player_api_id FROM Player WHERE weight IN ( SELECT MAX(weight) FROM Player GROUP BY SUBSTR('', 0, LENGTH(weight) - 2) ) LIMIT 10
SELECT player_name FROM Player WHERE CAST(strftime('%%Y', birthday) AS INT) - CAST(strftime('%%Y', player_fifa_api_id) AS INT) >= 35
SELECT SUM(T1.home_team_goal) FROM Match AS T1 INNER JOIN Player AS T2 ON T1.home_player_1 = T2.player_api_id WHERE T2.player_name = 'Aaron Lennon' OR T2.player_name = 'Aaron Lennon'
SELECT SUM(T2.away_team_goal) FROM Player AS T1 INNER JOIN Match AS T2 ON T1.player_api_id = T2.away_player_1 WHERE T1.player_name IN ('Daan Smith', 'Filipe Ferreira')
SELECT SUM(T1.home_team_goal) FROM Match AS T1 INNER JOIN Player AS T2 ON T1.home_player_1 = T2.player_api_id WHERE strftime('%Y', T2.birthday) + 1 - strftime('%Y', T2.birthday) <= 30
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id ORDER BY T2.strength DESC LIMIT 10
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.potential DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate > 50
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.finishing = 1 ORDER BY T1.birthday LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id INNER JOIN Country AS T3 ON T3.id = T2.id WHERE T3.name = 'Belgium'
SELECT DISTINCT T1.country_id FROM League AS T1 INNER JOIN Match AS T2 ON T1.id = T2.league_id INNER JOIN Player_Attributes AS T3 ON T2.home_player_X1 = T3.player_api_id OR T2.home_player_X2 = T3.player_api_id OR T2.home_player_X3 = T3.player_api_id OR T2.home_player_X4 = T3.player_api_id OR T2.home_player_X5 = T3.player_api_id OR T2.home_player_X6 = T3.player_api_id OR T2.home_player_X7 = T3.player_api_id OR T2.home_player_X8 = T3.player_api_id OR T2.home_player_X9 = T3.player_api_id OR T2.home_player_X10 = T3.player_api_id OR T2.home_player_X11 = T3.player_api_id WHERE T3.vision > 90
SELECT T2.country_id FROM Player AS T1 INNER JOIN League AS T2 ON T1.country_id = T2.country_id GROUP BY T2.country_id ORDER BY SUM(T1.weight) / COUNT(T1.player_api_id) DESC LIMIT 1
SELECT DISTINCT T1.team_long_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeedClass = 'Low'
SELECT DISTINCT T1.team_short_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.chanceCreationPassing > 0 AND T2.chanceCreationPassing <= 100 AND T2.defencePressure > 0 AND T2.defencePressure <= 100
SELECT AVG(T1.height) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id INNER JOIN Match AS T3 ON T1.player_api_id = T3.away_player_1 OR T1.player_api_id = T3.away_player_2 OR T1.player_api_id = T3.away_player_3 OR T1.player_api_id = T3.away_player_4 OR T1.player_api_id = T3.away_player_5 OR T1.player_api_id = T3.away_player_6 OR T1.player_api_id = T3.away_player_7 OR T1.player_api_id = T3.away_player_8 OR T1.player_api_id = T3.away_player_9 OR T1.player_api_id = T3.away_player_10 OR T1.player_api_id = T3.away_player_11 INNER JOIN Country AS T4 ON T3.country_id = T4.id WHERE T4.name = 'Italy'
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name ASC LIMIT 3
SELECT COUNT(id) FROM Player WHERE birthday LIKE '1990%' AND player_name LIKE 'Aaron%'
SELECT T1.jumping - T2.jumping FROM Player_Attributes AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.id = 6 OR T2.id = 23
SELECT player_fifa_api_id FROM Player_Attributes WHERE potential = ( SELECT MIN(potential) FROM Player_Attributes ) AND preferred_foot = 'right_foot' LIMIT 3
SELECT COUNT(T1.player_api_id) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = 'left_foot' AND T2.crossing = 5
SELECT CAST(SUM(CASE WHEN strength + stamina > 80 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(player_fifa_api_id) FROM Player_Attributes
SELECT T2.country_id FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T1.league_id = 25653
SELECT T1.home_team_goal, T1.away_team_goal FROM Match AS T1 WHERE T1.date = '2008-09-24' AND T1.country_id = ( SELECT id FROM Country WHERE name = 'Belgium' ) AND T1.league_id = ( SELECT id FROM League WHERE name = 'Jupiler League' )
SELECT T1.sprint_speed, T1.agility, T1.acceleration FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Alexis Blin'
SELECT DISTINCT T1.buildUpPlaySpeedClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T2.team_api_id = T1.team_api_id WHERE T2.team_long_name = 'KSV Cercle Brugge'
SELECT COUNT(T1.id) FROM Match AS T1 INNER JOIN League AS T2 ON T1.country_id = T2.id WHERE T1.season = 2015 AND T1.stage = 'Regular Season' AND T2.name = 'Serie A'
SELECT MAX(T2.home_team_goal) FROM League AS T1 INNER JOIN Match AS T2 ON T1.id = T2.league_id WHERE T1.name = 'Eredivisie' AND T2.country_id = 4
SELECT T1.finishing, T1.curve FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id ORDER BY T2.weight DESC LIMIT 1
SELECT T1.name FROM League AS T1 INNER JOIN Match AS T2 ON T1.id = T2.league_id WHERE T2.season = '2015' AND T2.stage = 'REGULATION' GROUP BY T1.name ORDER BY COUNT(T2.id) DESC LIMIT 1
SELECT T2.team_long_name FROM Match AS T1 INNER JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id GROUP BY T2.team_long_name ORDER BY SUM(T1.away_team_goal) DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id ORDER BY T2.strength DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.strength > 70 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.height < 180
SELECT CAST(SUM(CASE WHEN SEX = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(ID), CAST(SUM(CASE WHEN SEX = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(ID) FROM Patient
SELECT CAST(SUM(CASE WHEN SEX = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(ID) FROM Patient WHERE strftime('%Y', Birthday) > '1930'
SELECT CAST(SUM(CASE WHEN Admission IS NOT NULL THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(ID) FROM Patient WHERE strftime('%Y', Birthday) BETWEEN '1930' AND '1940'
SELECT CAST(SUM(CASE WHEN T1.Diagnosis = 'SLE' AND T2.RF = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID
SELECT T2.`Diagnosis`, T1.`Date` FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.ID = 30609
SELECT DISTINCT SEX, Birthday, `Examination Date`, Symptoms FROM Patient WHERE ID = 163109
SELECT T2.ID, T2.SEX, T2.Birthday FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.LDH = 'Normal' OR T1.LDH = 'Low' OR T1.LDH = 'Borderline' OR T1.LDH = 'Abnormal'
SELECT T1.ID, T2.Admission, T2.`First Date` FROM Patient AS T2 INNER JOIN Examination AS T1 ON T2.ID = T1.ID WHERE T1.GOT > 120
SELECT ID, SEX, Diagnosis FROM Patient WHERE ID IN ( SELECT ID FROM Patient WHERE Thrombosis = 'Severe' )
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday LIKE '1937%' AND T2.`T-CHO` BETWEEN 'lo' AND 'hi'
SELECT T1.ID, T1.SEX, T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALB < 3.5
SELECT CAST(SUM(CASE WHEN T2.SEX = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.TP NOT BETWEEN 100 AND 400
SELECT AVG(T1.aCL IgG) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE CAST(T1.Birthday AS date) < (SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID GROUP BY T1.ID ORDER BY T1.Birthday LIMIT 1) - (CAST(CURRENT_DATE - T1.Birthday AS date)) > 50
SELECT COUNT(ID) FROM Patient WHERE SEX = 'Female' AND '1997' <= (int)SUBSTR(Admission, 1, 4)
SELECT T1.Birthday, T1.Birthday - T1.Admission AS age FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID ORDER BY T1.Birthday - T1.Admission LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Thrombosis = 'High Risk' AND T1.SEX = 'F' AND T2.`Examination Date` LIKE '1997%'
SELECT T2.AGE - MAX(T2.AGE) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.`TG` = 'normale'
SELECT DISTINCT T2.Symptoms, T2.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID ORDER BY T1.Birthday ASC LIMIT 1
SELECT CAST(COUNT(T2.ID) AS REAL) / 12 FROM ( SELECT strftime('%Y', T2.`Admission`) AS Y , strftime('%m', T2.`Admission`) AS M FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.SEX = 'M' AND strftime('%Y', T2.`Admission`) = '1998' AND strftime('%m', T2.`Admission`) BETWEEN 1 AND 12 GROUP BY T2.ID ) AS T3
SELECT T2.`Date`, T1.Birthday, T1.Birthday - T1.Admission FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Description = 'SJS patient' ORDER BY T2.`Date` DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.SEX = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T2.UA < 150 THEN 1 ELSE 0 END) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.UA > 150
SELECT COUNT(ID) FROM Patient WHERE `First Date` IS NULL OR `First Date` < strftime('%Y', Admission) - 1
SELECT COUNT(ID) FROM Patient WHERE SEX = 'F' AND Birthday LIKE '1990-01-%' AND '1993-12-31'
SELECT COUNT(ID) FROM Patient WHERE SEX = 'M' AND `T-BIL` > 20
SELECT T2.Diagnosis FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T2.ID = T3.ID WHERE T1.`Date` BETWEEN '1985-01-01' AND '1995-12-31' GROUP BY T3.Diagnosis ORDER BY COUNT(T3.Diagnosis) DESC LIMIT 1
SELECT AVG(T1.Birthday - T2.`Examination Date`) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.`Examination Date` LIKE '1991-10%'
SELECT T2.ID, T2.HGB FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID ORDER BY T2.HGB DESC LIMIT 1
SELECT T2.ALP FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.ID = 3605340 AND T2.`Date` = '1996-12-02'
SELECT CASE WHEN T-CHO = 'Normal' THEN 'Yes' ELSE 'No' END FROM Laboratory WHERE ID = 2927464 AND `Date` = '1995-09-04'
SELECT SEX FROM Patient WHERE Diagnosis = 'AORTITIS' AND ID = ( SELECT ID FROM Patient WHERE Diagnosis = 'AORTITIS' ORDER BY 'First Date' ASC LIMIT 1 )
SELECT T2.DATE, T2.ALP FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SLE' AND T2.`Date` = '1993-11-12' AND T1.`First Date` = '1994-02-19' AND T2.IGA IS NOT NULL AND T2.IGA < 10
SELECT CASE WHEN T2.SEX = 'M' THEN 'man' WHEN T2.SEX = 'F' THEN 'woman' END AS SEX FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.`Date` = '2012-06-09' AND T1.ALT = 9
SELECT (DATE '1991-10-21' - T1.Birthday) / 365 AS age FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.Date = '1991-10-21' AND T2.UA = 8.4
SELECT COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.`First Date` = '1991-06-13' AND T1.Diagnosis = 'SJS' AND T2.`Date` LIKE '1995%'
SELECT Diagnosis FROM Patient WHERE ID = ( SELECT ID FROM Patient WHERE Diagnosis = 'SLE' AND `First Date` = '1997-01-27' ) AND `First Date` = '1997-01-27'
SELECT DISTINCT T2.Symptoms FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Birthday = '1959-03-01' AND T2.`Examination Date` = '1993-09-27'
SELECT (SUM(CASE WHEN `Date` LIKE '1981-11' THEN T-CHO ELSE 0 END) - SUM(CASE WHEN `Date` LIKE '1981-12' THEN T-CHO ELSE 0 END)) / 30 FROM Laboratory WHERE Birthday = '1959-02-18'
SELECT ID FROM Patient WHERE Diagnosis = 'Behcet''s' AND `Admission` BETWEEN '1970-01-01' AND '1997-12-31'
SELECT COUNT(DISTINCT T2.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.GPT > 30 AND T1.ALB < 4 AND T2.`Admission` BETWEEN '1987-07-06' AND '1996-01-31'
SELECT ID FROM Patient WHERE SEX = 'F' AND strftime('%Y', Birthday) = '1964' AND Admission IS NOT NULL
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T3.Thrombosis = 'Level 2' AND T3.`ANA Pattern` = 'S' AND T2.IGM - ( SELECT AVG(IGM) FROM Laboratory ) * 100 > 20
SELECT CAST(SUM(CASE WHEN TAT > 1.5 AND UA < 1.5 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(ID) FROM Laboratory
SELECT CAST(SUM(CASE WHEN Diagnosis = 'BEHCET' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(ID) FROM Patient WHERE SEX = 'M' AND 'First Date' LIKE '1981%'
SELECT T2.ID FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.`Date` LIKE '1991-10%' AND T1.`T-BIL` BETWEEN 0 AND 5 AND T2.Description = 'Outpatient Clinic'
SELECT COUNT(ID) FROM Patient WHERE Birthday LIKE '198%' AND SEX = 'P' AND 'ANA Pattern' = 'P'
SELECT T2.SEX FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T2.ID = T3.ID WHERE T3.Diagnosis = 'PSS' AND T1.CRE = 2 AND T1.RBC = 1 AND T1.LDH = 123
SELECT AVG(T2.ALB) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T2.PLT > 400 AND T1.Diagnosis = 'SLE'
SELECT T2.Symptoms FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SLE' GROUP BY T2.Symptoms ORDER BY COUNT(T2.Symptoms) DESC LIMIT 1
SELECT `Admission`, `Diagnosis` FROM Patient WHERE ID = 48473
SELECT COUNT(ID) FROM Patient WHERE SEX = 'Female' AND Diagnosis = 'APS'
SELECT COUNT(ID) FROM Laboratory WHERE DATE LIKE '1997%' AND PLT > 150
SELECT CAST(SUM(CASE WHEN T2.Diagnosis = 'SLE' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.Thrombosis = 'Yes' AND T1.Symptoms = 'None'
SELECT CAST(SUM(SEX = 'Female') AS REAL) * 100 / COUNT(ID) FROM Patient WHERE Birthday LIKE '1980%' AND Diagnosis = 'RA'
SELECT COUNT(ID) FROM Patient WHERE SEX = 'M' AND `Admission` BETWEEN '1995-01-01' AND '1997-12-31' AND Diagnosis = 'BEHCET disease'
SELECT COUNT(ID) FROM Patient WHERE SEX = 'F' AND WBC < 3.5
SELECT DISTINCT `DATE` - Admission FROM Patient WHERE ID = 821298
SELECT CASE WHEN T1.URIC ACID BETWEEN 12 AND 70 THEN 'YES' ELSE 'NO' END AS t FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.ID = 57266
SELECT T2.`Examination Date` FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T1.ID = 48473 AND T3.GOT IS NOT NULL AND T3.GOT > 30
SELECT T2.ID, T2.SEX, T2.Birthday FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.Date LIKE '1994%' AND T1.GOT BETWEEN 1.5 AND 3.5
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GPT > 120 AND T1.SEX = 'M'
SELECT DISTINCT T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALT > 180 AND T1.ID = ( SELECT ID FROM Patient ORDER BY Birthday ASC LIMIT 1 )
SELECT AVG(T1.LDH) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.LDH BETWEEN 0 AND 20
SELECT T1.ID, T2.Age(T2.Birthday, T2.`Examination Date`) AS AGE FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH BETWEEN 100 AND 300
SELECT DISTINCT CASE WHEN T1.Admission IS NOT NULL THEN 'Inpatient' ELSE 'Outpatient' END FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALP BETWEEN 1.3 AND 3.3
SELECT T2.ID FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthday = '1982-04-01' AND T1.ALP BETWEEN 22 AND 30
SELECT ID, SEX, Birthday FROM Patient WHERE TP < ( SELECT TP FROM Laboratory WHERE TP IS NOT NULL AND TP > -2 AND TP < -1 AND ID = ( SELECT ID FROM Patient ORDER BY TP LIMIT 1 ) )
SELECT (T-BIL - T-CHO) * 100 AS TPdeviation FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T2.TP > 1.7 AND T2.TP < 1.9
SELECT DISTINCT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.ALB BETWEEN 50 AND 100 ORDER BY T1.Birthday DESC
SELECT CASE WHEN SUM(CASE WHEN ALB BETWEEN 3 AND 7 THEN 1 ELSE 0 END) = 0 THEN 'Normal' ELSE 'Abnormal' END FROM Patient WHERE strftime('%Y', Birthday) = '1982'
SELECT CAST(SUM(CASE WHEN T2.SEX = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.UA BETWEEN 40 AND 80
SELECT AVG(T2.UA) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.UA = 'Normal'
SELECT ID, SEX, Birthday FROM Patient WHERE UN BETWEEN 2 AND 4
SELECT ID, SEX, Birthday FROM Patient WHERE Diagnosis = 'RA' AND UN 'Normal'
SELECT COUNT(ID) FROM Patient WHERE SEX = 'M' AND CRE >= 1.5 AND CRE <= 3
SELECT CASE SUM(CASE WHEN SEX = 'M' THEN 1 ELSE 0 END) - SUM(CASE WHEN SEX = 'F' THEN 1 ELSE 0 END) AS COUNT FROM Patient WHERE CRE NOT BETWEEN 0.7 AND 1.3
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-BIL = ( SELECT MAX(T-BIL) FROM Laboratory )
SELECT SEX FROM Patient WHERE T-BIL NOT BETWEEN 0 AND 100 GROUP BY SEX
SELECT ID, T-CHO FROM Patient ORDER BY T-CHO DESC LIMIT 1
SELECT AVG(CAST(SUBSTR(T1.Birthday, 1, 4) AS int), CAST(SUBSTR(T1.Birthday, 7, 2) AS int)) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.HGB > 200 AND T1.SEX = 'M'
SELECT DISTINCT T1.ID, T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TG > 100
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T2.TG > 150 AND T1.ID = ( SELECT CAST(JULIAN_DAY(T1.`Birthday`) - JULIAN_DAY(T2.`Date`) AS REAL) / 365 FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TG > 150 )
SELECT DISTINCT ID FROM Patient WHERE CRE IN ('Normal', 'Normal (Low risk)')
SELECT COUNT(ID) FROM Patient WHERE CRE > 1.5 AND DIAGNOSIS IN ('Osteoarthritis', 'Rheumatoid arthritis') AND Birthday LIKE '193%' AND SEX = 'M'
SELECT T1.ID, T1.SEX, CAST(JULIANDAY(T1.`Birthday`) - JULIANDAY(T2.`Examination Date`) AS REAL) / 365 AS age FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.GLU NOT BETWEEN '125' AND '185' AND T2.T - CHO NOT BETWEEN '130' AND '190'
SELECT ID, GLU FROM Laboratory WHERE SUBSTR(DATE, 1, 4) = '1991' AND GLU BETWEEN 30 AND 100
SELECT ID, SEX, Birthday FROM Patient WHERE WBC > 12 AND WBC < 8 UNION SELECT ID, SEX, Birthday FROM Patient WHERE WBC < 4
SELECT T1.ID, 2022 - strftime('%Y', T1.Birthday) + strftime('%m', T1.Birthday) / 12 + strftime('%d', T1.Birthday) / 31 FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RBC < 100 ORDER BY T1.ID
SELECT DISTINCT CASE WHEN T2.RBC >= 15 AND T2.RBC < 7 AND T2.RBC > 0 AND T2.Date = '2013-08-01' THEN 'Yes' ELSE 'No' END AS result FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T1.ID = ( SELECT ID FROM Patient WHERE SEX = 'F' )
SELECT ID, SEX FROM Patient WHERE HGB < 7 OR HGB < 7 AND SEX = 'F' OR HGB < 7 AND SEX = 'M'
SELECT T1.ID, T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T3.Diagnosis = 'SLE' AND T2.HGB BETWEEN 1 AND 7 AND T1.SEX = 'M' ORDER BY T1.Birthday DESC LIMIT 1
SELECT T2.ID, DATEDIFF(CURRENT_DATE, T1.Birthday) / 365 FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.HCT > 60
SELECT AVG(HGB) FROM Laboratory WHERE DATE >= 1991 AND HGB < 10
SELECT SUM(CASE WHEN PLT < 150 THEN 1 ELSE 0 END) , SUM(CASE WHEN PLT > 199 THEN 1 ELSE 0 END) FROM Laboratory WHERE PLT BETWEEN 100 AND 150 OR PLT BETWEEN 200 AND 250
SELECT T2.ID FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.PLT = 129 AND T2.SEX = 'F' AND T2.Birthday LIKE '1984%'
SELECT CAST(SUM(CASE WHEN T2.SEX = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.T-PRO > 1.5 AND T2.Birthday < '1975-01-01'
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.`First Date` > 1992 AND T2.PT IN (149, 150)
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.`Examination Date` > '1997-01-01' AND T2.RVVT = '+'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.T-CHO < 30 AND T2.T-CHO > -30 AND T2.T-CHO IS NOT NULL AND T2.T-CHO <> '' AND T2.T-CHO <> ' ' AND T2.T-CHO <> '0' AND T2.T-CHO <> '0.' AND T2.T-CHO <> '.' AND T2.T-CHO <> '-' AND T2.T-CHO <> '-.' AND T2.T-CHO <> '-..' AND T2.T-CHO <> '-...' AND T2.T-CHO <> '-....' AND T2.T-CHO <> '-.....' AND T2.T-CHO <> '-......' AND T2.T-CHO <> '-.......' AND T2.T-CHO <> '-........' AND T2.T-CHO <> '-.........' AND T2.T-CHO <> '-..........' AND T2.T-CHO <> '-...........' AND T2.T-CHO <> '-............' AND T2.T-CHO <> '-.............' AND T2.T-CHO <> '-..............' AND T2.T-CHO <> '-...............' AND T2.T-CHO <> '-.................' AND T2.T-CHO <> '-..................' AND T2.T-CHO <> '-...................' AND T2.T-CHO <> '-.....................' AND T2.T-CHO <> '-...................' AND T2.T-CHO <> '-.................' AND T2.T-CHO <> '-...............' AND T2.T-CHO <> '-..............' AND T2.T-CHO <> '-............' AND T2.T-CHO <> '-..........' AND T2.T-CHO <> '-........' AND T2.T-CHO <> '-......' AND T2.T-CHO <> '-.....' AND T2.T-CHO <>
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.WBC = 'Normal' AND T2.FG = 'Abnormal'
SELECT COUNT(ID) FROM Patient WHERE Fibrinogen > 1.5 AND Fibrinogen < 1.8 AND Fibrinogen > 1.5 AND Fibrinogen < 1.8 AND `Birthday` >= '1980-01-01'
SELECT DISTINCT T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RNP > 1
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RF >= 3 AND T1.Diagnosis = 'SLE'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.aCL IgG < 'Normal' AND T1.Symptoms = 'Abortion'
SELECT COUNT(ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.aCL `IgG` BETWEEN 3.8 AND 7.4 AND T1.Symptoms IS NOT NULL
SELECT DISTINCT T1.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.IGA BETWEEN 0 AND 20
SELECT COUNT(ID) FROM Patient WHERE `First Date` > '1990-01-01' AND IGA < 20
SELECT T.diagnosis FROM ( SELECT T1.Diagnosis, COUNT(T1.ID) AS num FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.aCL IgM > 10 GROUP BY T1.Diagnosis ) AS T ORDER BY T.num DESC LIMIT 1
SELECT COUNT(ID) FROM Patient WHERE CRE = 'Normal' AND ID NOT IN ( SELECT ID FROM Laboratory )
SELECT COUNT(ID) FROM Patient WHERE CRE < 0.1 AND SUBSTR(Birthday, 1, INSTR(Birthday, '/') - 1) < 18
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RF = 'Normal' AND T2.T-CHO > 20
SELECT DISTINCT T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday > '1995-01-01' AND T2.RF = normal
SELECT ID FROM Patient WHERE RF = 'Normal' AND CAST(SUBSTR(Birthday, 1, 4) AS int) - CAST(SUBSTR(Birthday, 7, 2) AS int) < 60
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.RF = 'Normal' AND T2.Thrombosis = 'Negative'
SELECT COUNT(ID) FROM Patient WHERE C3 = 'Normal' AND `ANA Pattern` = 'P'
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.HGB NOT IN ( 'NaN', 'Inf' ) ORDER BY T2.HGB DESC LIMIT 1
SELECT COUNT(DISTINCT ID) FROM Patient WHERE C4 = 0 AND Diagnosis = 'Clofazimine'
SELECT COUNT(ID) FROM Patient WHERE RA = 'Normal' AND Admission != 'N/A'
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RNP > 180 OR T2.RNP < 30 GROUP BY T1.ID ORDER BY T1.Birthday LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Thrombosis = 'Severe' AND T2.Symptoms = 'None'
SELECT ID FROM Patient WHERE Description LIKE '%anti-SM%' AND ID IN ( SELECT ID FROM Patient ORDER BY Birthday ASC LIMIT 3 )
SELECT ID FROM Examination WHERE `Examination Date` > '1997-01-01' AND ANA = 'Normal'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.ANA = 'Normal' AND T1.SEX = 'M' AND T2.Symptoms = 'Vertigo'
SELECT COUNT(ID) FROM Patient WHERE Admission < 1990 AND SSA = 'Normal'
SELECT ID FROM Patient WHERE Admission = ( SELECT MIN(Admission) FROM Patient WHERE SSA < 25 OR SSA > 50 )
SELECT COUNT(ID) FROM Patient WHERE Diagnosis = 'SLE' AND SSA = 'Normal'
SELECT COUNT(ID) FROM Patient WHERE SSA = 'Normal' UNION ALL SELECT COUNT(ID) FROM Patient WHERE SSA = 'Normal' AND Symptoms != ''
SELECT COUNT(ID) FROM Patient WHERE SEX = 'M' AND (SC170 = '+' OR SC170 = ' ') AND (SSB = '+' OR SSB = ' ')
SELECT DISTINCT T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.DNA BETWEEN 100 AND 500
SELECT COUNT(DISTINCT ID) FROM Laboratory WHERE DNA-II = 'Normal' AND ID NOT IN ( SELECT ID FROM Laboratory WHERE Date IS NOT NULL )
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.DNA = 'Negative' AND T1.Admission IS NOT NULL
SELECT CAST(SUM(CASE WHEN T2.Diagnosis = 'SLE' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.`GOT` BETWEEN 40 AND 70
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GPT BETWEEN 15 AND 65 AND T1.SEX = 'M'
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GPT > 100 GROUP BY T1.ID ORDER BY T1.Birthday LIMIT 1
SELECT DISTINCT T2.Birthday FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.GPT BETWEEN 1.8 AND 4.8 ORDER BY T1.GPT DESC LIMIT 3
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GP-T = 'Normal' AND T1.SEX = 'M'
SELECT T2.`First Date` FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.LDH BETWEEN 0 AND 12 AND T2.SEX = 'F' GROUP BY T2.`First Date` ORDER BY COUNT(T2.`First Date`) DESC LIMIT 1
SELECT T2.`Date` FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALP > 150 GROUP BY T2.`Date` ORDER BY T2.`Date` DESC LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALP > 40 AND T1.Admission IS NOT NULL
SELECT COUNT(ID) FROM Patient WHERE ALKPHAPhase = 'Normal' AND Admission = 'Outpatient'
SELECT DISTINCT T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TP < 150
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SJS' AND T2.TP >= 100 AND T2.TP <= 200
SELECT DISTINCT T1.`Examination Date` FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALB IN (1.0, 1.3)
SELECT COUNT(ID) FROM Patient WHERE SEX = 'M' AND ALB = 'Normal' AND PLT = 'Normal'
SELECT T2.IGA FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T2.UA BETWEEN 12 AND 32 AND T2.URIA >= 12 AND T2.URIA <= 32 GROUP BY T2.IGA ORDER BY T2.IGA DESC LIMIT 1
SELECT MAX(ALP) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE CRE >= 1 AND ANA >= 1 AND T2.ID = ( SELECT ID FROM Laboratory ORDER BY CRE ASC LIMIT 1 )
SELECT ID FROM Laboratory WHERE CRE = 'Normal' AND IGA = 100
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-BIL > 1.5 AND T1.ANA = 'Peripheral'
SELECT T1.ANA FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-BIL = ( SELECT MAX(T-BIL) FROM Laboratory WHERE T-BIL BETWEEN 0.5 AND 1 OR T-BIL BETWEEN 1.5 AND 2 OR T-BIL BETWEEN 2.5 AND 3 ) ORDER BY T1.ANA DESC LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-CHO = '-' AND T2.T-CHO > 0
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-CHO BETWEEN 45 AND 100 AND T1.ANA = 'P'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TG >= 150 AND T1.Symptoms != ''
SELECT T2.Diagnosis FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.TG BETWEEN 100 AND 150 ORDER BY T1.TG DESC LIMIT 1
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'No Thrombosis' AND T2.CRE > 150
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CRE >= 1.8 AND T1.KCT > 10
SELECT T2.Date FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALB < 0 GROUP BY T1.Birthday ORDER BY T1.Birthday ASC LIMIT 1
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GPT = 'Normal' AND T1.Diagnosis != 'Thrombosis'
SELECT COUNT(ID) FROM Patient WHERE WBC = 'Normal' AND Admission = 'Admitted'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SLE' AND T2.WBC = 'Normal'
SELECT ID FROM Patient WHERE RBC < 7 AND Admission = 'Outpatient'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.PLT = 'Normal' AND T1.Symptoms != 'None'
SELECT DISTINCT T2.PLT, T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.PLT BETWEEN 150 AND 300 AND T1.Diagnosis = 'MCTD'
SELECT AVG(T2.TP) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.T-PRO = 'Normal'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T3.Thrombosis = 'Negative' AND T2.T-PRO = 'T-PRO' OR T-PRO = 'Normal'
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Angela' AND T1.last_name = 'Sanders'
SELECT COUNT(member_id) FROM member WHERE link_to_major IN ( SELECT major_id FROM major WHERE college = 'College of Engineering' )
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.department = 'Art and Design'
SELECT COUNT(T1.link_to_member) FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Women''s Soccer'
SELECT T1.phone FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T3.event_id = T2.link_to_event WHERE T3.event_name = 'Women''s Soccer'
SELECT COUNT(T1.t_shirt_size) FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = 'Women''s Soccer' AND T1.t_shirt_size = 'Medium'
SELECT T1.event_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.position = 'Student Club' GROUP BY T1.event_name ORDER BY COUNT(T2.link_to_event) DESC LIMIT 1
SELECT college FROM major WHERE department = 'Vice President'
SELECT T1.event_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = 'Maya' AND T3.last_name = 'Mclean'
SELECT COUNT(T1.link_to_event) FROM attendance AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Sacha' AND T2.last_name = 'Harrison' AND STRFTIME('%Y', T1.link_to_event) = '2019'
SELECT COUNT(T1.link_to_event) FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.type = 'Meeting' GROUP BY T1.link_to_event HAVING COUNT(T1.link_to_member) > 10
SELECT T1.event_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T2.link_to_event > 20
SELECT CAST(SUM(CASE WHEN T2.type = 'meeting' THEN 1 ELSE 0 END) AS REAL) / COUNT(T2.event_id) FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE strftime('%Y', T2.event_date) = '2020'
SELECT expense_description FROM expense WHERE link_to_budget = ( SELECT budget_id FROM budget WHERE category = 'Club Events' ORDER BY cost DESC LIMIT 1 )
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Environmental Engineering'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = 'Laugh Out Loud'
SELECT last_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Law and Constitutional Studies'
SELECT T2.county FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Sherri' AND T1.last_name = 'Ramsey'
SELECT T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Tyler' AND T1.last_name = 'Hewitt'
SELECT SUM(T1.amount) FROM income AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.position = 'Vice President'
SELECT T2.spent FROM member AS T1 INNER JOIN budget AS T2 ON T1.member_id = T2.link_to_member WHERE T2.category = 'Food' AND T2.event_status = 'sepmeet'
SELECT T2.city, T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.position = 'President'
SELECT DISTINCT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'Illinois'
SELECT SUM(T3.cost) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN expense AS T3 ON T2.link_to_member = T3.link_to_member WHERE T1.event_name = 'September Meeting' AND T3.expense_description = 'Advertisement'
SELECT T2.department FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Pierce' AND T1.last_name = 'Guidi'
SELECT SUM(T2.amount) FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'October Speaker'
SELECT approved FROM expense WHERE expense_date = '2019-10-08' AND link_to_budget = ( SELECT budget_id FROM budget WHERE category = 'October Meeting' )
SELECT SUM(T2.cost) / COUNT(T2.link_to_member) FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Elijah' AND T1.last_name = 'Allen' AND T2.expense_date LIKE '2020-09%' OR T2.expense_date LIKE '2020-10%'
SELECT SUM(CASE WHEN STRFTIME('%Y', T1.expense_date) = '2019' THEN T1.cost ELSE 0 END) - SUM(CASE WHEN STRFTIME('%Y', T1.expense_date) = '2020' THEN T1.cost ELSE 0 END) FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.position = 'President'
SELECT location FROM event WHERE event_name = 'Spring Budget Review'
SELECT T1.cost FROM expense AS T1 INNER JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T2.category = 'Posters' AND T1.expense_date = '2019-09-04'
SELECT remaining FROM budget WHERE amount = ( SELECT MAX(amount) FROM budget WHERE category = 'Food' )
SELECT T2.notes FROM income AS T1 INNER JOIN event AS T2 ON T1.link_to_member = T2.event_id WHERE T1.date_received = '2019-09-14' AND T2.event_date = '2019-09-14'
SELECT COUNT(major_id) FROM major WHERE college = 'College of Humanities and Social Sciences'
SELECT phone FROM member WHERE first_name = 'Carlo' AND last_name = 'Jacobs'
SELECT T2.county FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Adela' AND T1.last_name = 'O''Gallagher'
SELECT COUNT(T1.budget_id) FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'November Meeting' AND T1.remaining < 0
SELECT SUM(T2.amount) FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'September Speaker'
SELECT T1.status FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.expense_description = 'Post Cards, Posters' AND T2.cost = 5 AND T2.expense_date = '2019-08-20'
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Brent' AND T1.last_name = 'Thomason'
SELECT COUNT(T1.t_shirt_size) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Human Development and Family Studies' AND T1.t_shirt_size = 'Large'
SELECT T2.type FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Christof' AND T1.last_name = 'Nielson'
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Vice President'
SELECT T1.state FROM zip_code AS T1 INNER JOIN member AS T2 ON T1.zip = T2.zip WHERE T2.first_name = 'Sacha' AND T2.last_name = 'Harrison'
SELECT T2.department FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'President'
SELECT T2.date_received FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Connor' AND T1.last_name = 'Hilton' AND T2.source = 'dues'
SELECT first_name, last_name FROM member WHERE link_to_income = ( SELECT MIN(link_to_income) FROM income )
SELECT SUM(CASE WHEN T2.event_name = 'Yearly Kickoff' THEN 1 ELSE 0 END) - SUM(CASE WHEN T2.event_name = 'October Meeting' THEN 1 ELSE 0 END) AS count FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Advertisement'
SELECT CAST(SUM(CASE WHEN T2.category = 'Parking' THEN T2.amount ELSE 0 END) AS REAL) * 100 / SUM(T2.amount) FROM attendance AS T1 INNER JOIN budget AS T2 ON T1.link_to_event = T2.link_to_event WHERE T1.link_to_event = 23
SELECT SUM(T1.cost) FROM expense AS T1 INNER JOIN expense_description AS T2 ON T1.expense_description = T2.expense_description WHERE T2.expense_description = 'Pizzas'
SELECT COUNT(city) FROM zip_code WHERE county = 'Orange County' AND state = 'VA'
SELECT department FROM major WHERE college = 'College of Humanities and Social Sciences'
SELECT T2.city FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Amy' AND T1.last_name = 'Firth'
SELECT DISTINCT T2.expense_description FROM budget AS T1 INNER JOIN expense AS T2 ON T1.link_to_event = T2.link_to_budget WHERE T1.remaining = ( SELECT MIN(remaining) FROM budget )
SELECT T3.first_name, T3.last_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T1.event_name = 'October Meeting'
SELECT college FROM major GROUP BY college ORDER BY COUNT(college) DESC LIMIT 1
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.phone = '809-555-3360'
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.amount DESC LIMIT 1
SELECT T2.expense_description FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_member WHERE T1.position = 'Vice President'
SELECT COUNT(T3.link_to_member) FROM ( SELECT T2.link_to_member FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'Women''s Soccer' GROUP BY T2.link_to_member ) T3
SELECT T2.date_received FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Casey' AND T1.last_name = 'Mason'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'Maryland'
SELECT COUNT(T2.link_to_event) FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member WHERE T1.phone = '954-555-6240'
SELECT T2.first_name, T2.last_name FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'School of Applied Sciences, Technology and Education'
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.status = 'Closed' ORDER BY T2.spent / budget DESC LIMIT 1
SELECT COUNT(member_id) FROM member WHERE position = 'President'
SELECT link_to_event FROM budget ORDER BY amount DESC LIMIT 1
SELECT COUNT(event_id) FROM event WHERE type = 'Meeting' AND status = 'Completed' AND event_date LIKE '2020%'
SELECT SUM(spent) FROM budget WHERE category = 'Food'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member GROUP BY T1.member_id HAVING COUNT(T2.link_to_event) > 7
SELECT T3.first_name, T3.last_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T3 ON T2.link_to_member = T3.member_id INNER JOIN major AS T4 ON T3.member_id = T4.major_id WHERE T1.event_name = 'Community Theater' AND T4.department = 'Interior Design'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.county = 'Georgetown' AND T2.state = 'SC'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Grant' AND T1.last_name = 'Gilmour'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.amount > 40
SELECT T2.cost FROM event AS T1 INNER JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'Yearly Kickoff'
SELECT T3.first_name, T3.last_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id INNER JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T2.event_name = 'Yearly Kickoff' AND T1.category = 'budget' AND T1.event_status = 'budget'
SELECT T1.first_name, T1.last_name, T2.source FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member ORDER BY T2.amount DESC LIMIT 1
SELECT link_to_event FROM expense ORDER BY cost ASC LIMIT 1
SELECT CAST(SUM(IIF(T2.event_name = 'Yearly Kickoff', T1.cost, 0)) AS REAL) * 100 / SUM(T1.cost) FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id
SELECT CAST(SUM(CASE WHEN department = 'Finance' THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN department = 'Physics' THEN 1 ELSE 0 END) FROM major
SELECT source FROM income WHERE date_received LIKE '2019-09%' ORDER BY amount DESC LIMIT 1
SELECT first_name, last_name, email FROM member WHERE position = 'Secretary'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Physics Teaching'
SELECT COUNT(T3.link_to_member) FROM ( SELECT T2.link_to_member FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'Community Theater' AND T1.event_date LIKE '2019%' GROUP BY T2.link_to_member ) T3
SELECT T2.event_name, T1.major_name FROM major AS T1 INNER JOIN event AS T2 ON T1.major_id = T2.link_to_event INNER JOIN attendance AS T3 ON T2.event_id = T3.link_to_event INNER JOIN member AS T4 ON T3.link_to_member = T4.member_id WHERE T4.first_name = 'Luisa' AND T4.last_name = 'Guidi'
SELECT SUM(T2.cost) / COUNT(T2.expense_id) FROM budget AS T1 INNER JOIN expense AS T2 ON T1.link_to_budget = T2.expense_id WHERE T1.category = 'Food'
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = 'Advertisement' ORDER BY T2.spent DESC LIMIT 1
SELECT CASE WHEN T1.status LIKE 'Cancelled' THEN 'NO' ELSE 'YES' END FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = 'Maya' AND T3.last_name = 'Mclean' AND T1.event_name = 'Women''s Soccer'
SELECT CAST(COUNT(CASE WHEN T2.type = 'Community Service' THEN T1.event_id ELSE NULL END) AS REAL) * 100 / COUNT(T1.event_id) FROM event AS T1 INNER JOIN zip_code AS T2 ON T1.location = T2.zip_code WHERE STRFTIME('%Y', T1.event_date) = '2019'
SELECT T2.cost FROM event AS T1 INNER JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'September Speaker' AND T2.expense_description = 'Posters'
SELECT T1.t_shirt_size FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member GROUP BY T1.t_shirt_size ORDER BY COUNT(T1.member_id) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 INNER JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T1.status = 'Closed' ORDER BY T2.cost - ( SELECT spent FROM budget WHERE link_to_event = T1.event_id ORDER BY spent DESC LIMIT 1 ) DESC LIMIT 1
SELECT T1.expense_description, SUM(T1.cost) FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'October Meeting' AND T1.approved = 't' GROUP BY T1.expense_description
SELECT SUM(CASE WHEN T1.event_name = 'April Speaker' THEN T2.amount ELSE 0 END) FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.event_status = 'budgeted'
SELECT budget_id FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT budget_id FROM budget WHERE category = 'Advertising' ORDER BY amount DESC LIMIT 3
SELECT SUM(T.cost) FROM expense AS T WHERE T.expense_description = 'Parking'
SELECT SUM(cost) FROM expense WHERE expense_date = '2019-08-20'
SELECT T2.first_name, T2.last_name, T1.cost FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_member = T2.member_id WHERE T2.email = 'rec4BLdZHS2Blfp4v'
SELECT T2.expense_description FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_member WHERE T1.first_name = 'Sacha' AND T1.last_name = 'Harrison'
SELECT DISTINCT T2.expense_description FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_member WHERE T1.t_shirt_size = 'X-Large'
SELECT DISTINCT T1.zip FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.cost < 50
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Phillip' AND T1.last_name = 'Cullen'
SELECT T1.position FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Business'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.t_shirt_size = 'Medium' AND T2.department = 'Business'
SELECT DISTINCT T1.type FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining > 30
SELECT DISTINCT T2.category FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.location = 'MU 215'
SELECT DISTINCT T1.category FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date = '2020-03-24T12:00:00'
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Vice President'
SELECT CAST(SUM(CASE WHEN T2.major_name = 'Mathematics' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id
SELECT DISTINCT T2.category FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.location = 'MU 215'
SELECT COUNT(income_id) FROM income WHERE amount = 50
SELECT COUNT(member_id) FROM member WHERE t_shirt_size = 'Extra Large'
SELECT COUNT(major_id) FROM major WHERE college = 'College of Agriculture and Applied Sciences' AND department = 'School of Applied Sciences, Technology and Education'
SELECT T1.last_name, T2.department, T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Environmental Engineering'
SELECT DISTINCT T1.category FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.type = 'Guest Speaker' AND T2.location = 'MU 215' AND T1.spent = 0
SELECT T2.city, T2.state FROM major AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.department = 'Electrical and Computer Engineering'
SELECT T1.event_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.position = 'Vice President of Student Club' AND T3.phone = '900-555-1212'
SELECT T2.last_name, T2.position FROM income AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.date_received = '2019-09-10' AND T1.source = 'pizza'
SELECT T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = 'women''s soccer'
SELECT CAST(SUM(CASE WHEN T1.t_shirt_size = 'Medium' THEN T2.amount ELSE 0 END) AS REAL) * 100 / SUM(T2.amount) FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member
SELECT DISTINCT state FROM zip_code WHERE type = 'Box'
SELECT zip_code FROM zip_code WHERE state = 'Puerto Rico' AND type = 'Post Office Box'
SELECT event_name FROM event WHERE status = 'Closed' AND event_date BETWEEN '2019-03-15' AND '2020-03-20' AND type = 'game'
SELECT DISTINCT T2.link_to_event FROM income AS T1 INNER JOIN attendance AS T2 ON T1.link_to_member = T2.link_to_member WHERE T1.amount > 50
SELECT T1.first_name, T1.last_name, T2.link_to_event FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN expense AS T3 ON T2.link_to_member = T3.link_to_member WHERE T3.expense_date BETWEEN '2019-01-10' AND '2019-11-19' AND T3.approved = 'true'
SELECT college FROM major WHERE major_id = 'rec1N0upiVLy5esTO'
SELECT T1.phone FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.college = 'College of Agriculture and Applied Sciences' AND T2.department = 'Business'
SELECT T2.email FROM income AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.date_received BETWEEN '2019-09-10' AND '2019-11-19' AND T1.amount > 20
SELECT COUNT(member_id) FROM member WHERE link_to_major IN ( SELECT major_id FROM major WHERE college = 'College of Education & Human Services' AND department = 'Education' )
SELECT CAST(COUNT(CASE WHEN budget.remaining < 0 THEN budget.event_status ELSE NULL END) AS REAL) * 100 / COUNT(budget.event_status) FROM budget
SELECT event_id, location, status FROM event WHERE event_date BETWEEN '2019-11-01' AND '2020-03-31'
SELECT expense_description FROM expense WHERE cost > 50 GROUP BY expense_description HAVING AVG(cost) > 50
SELECT first_name, last_name FROM member WHERE t_shirt_size = 'Extra Large'
SELECT CAST(SUM(CASE WHEN type = 'box' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(zip_code) FROM zip_code
SELECT T2.event_name, T2.location FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.remaining < 0
SELECT T1.event_name, T2.expense_date FROM event AS T1 INNER JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T2.expense_description = 'Pizza' AND T2.cost BETWEEN 50 AND 100
SELECT T3.first_name, T3.last_name, T2.major_name FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_member = T2.member_id INNER JOIN major AS T3 ON T2.link_to_major = T3.major_id WHERE T1.cost > 100
SELECT DISTINCT T3.city, T3.state FROM income AS T1 INNER JOIN attendance AS T2 ON T1.link_to_member = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T1.amount > 40
SELECT T2.first_name, T2.last_name FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_member = T2.member_id GROUP BY T2.first_name, T2.last_name ORDER BY SUM(T1.cost) DESC LIMIT 1
SELECT AVG(T2.amount) FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.member_id WHERE T1.position <> 'Member'
SELECT DISTINCT T2.event_name FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.cost < ( SELECT AVG(cost) FROM expense )
SELECT CAST(SUM(CASE WHEN T2.type = 'game' THEN T1.cost ELSE 0 END) AS REAL) * 100 / SUM(T1.cost) FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id
SELECT budget_id FROM budget WHERE category IN ('Water', 'Chips', 'Cookies') ORDER BY amount DESC LIMIT 1
SELECT T2.first_name, T2.last_name FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_member = T2.member_id ORDER BY T1.cost DESC LIMIT 5
SELECT T1.first_name, T1.last_name, T1.phone FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_member WHERE T2.cost > ( SELECT AVG(cost) FROM expense )
SELECT CAST(SUM(CASE WHEN T2.state = 'Maine' THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T2.state = 'Vermont' THEN 1 ELSE 0 END) - SUM(CASE WHEN T2.state = 'Maine' THEN 1 ELSE 0 END) * 100 / SUM(CASE WHEN T2.state = 'Vermont' THEN 1 ELSE 0 END) AS perDiff FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code
SELECT T2.major_name, T2.department FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Garrett' AND T1.last_name = 'Gerke'
SELECT T1.first_name, T1.last_name, T2.cost FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_member WHERE T2.expense_description IN ('Water', 'Veggie tray', 'Supplies')
SELECT T1.last_name, T1.phone FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Elementary Education'
SELECT T2.category, T2.amount FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'January Speaker'
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = 'Food'
SELECT first_name, last_name, amount FROM income WHERE date_received = '2019-09-09'
SELECT T1.category FROM budget AS T1 INNER JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget WHERE T2.expense_description = 'Posters'
SELECT T1.first_name, T1.last_name, T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Secretary'
SELECT SUM(T1.cost), T2.event_name FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.expense_description = 'Speaker Gifts'
SELECT T2.city FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Garrett' AND T1.last_name = 'Girke'
SELECT T1.first_name, T1.last_name, T1.position FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.county = 'LINCOLNTON' AND T2.state = 'NC' AND T2.zip_code = 28092
SELECT COUNT(T2.GasStationID) FROM products AS T1 INNER JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID INNER JOIN gasstations AS T3 ON T2.GasStationID = T3.GasStationID WHERE T1.Description = 'Premium Gas' AND T3.Country = 'CZE'
SELECT CAST(SUM(IIF(T2.Currency = 'EUR', 1, 0)) AS REAL) / SUM(IIF(T2.Currency = 'CZK', 1, 0)) FROM transactions_1k AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID
SELECT T1.CustomerID FROM yearmonth AS T1 INNER JOIN products AS T2 ON T1.CustomerID = T2.ProductID WHERE T2.Description = 'LAM' AND T1.`Date` LIKE '%2012%' ORDER BY T1.Consumption ASC LIMIT 1
SELECT AVG(T1.Consumption) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'SME' AND STRFTIME('%Y', T1.`Date`) = '2013'
SELECT T1.CustomerID FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'CZK' ORDER BY T2.`2011` DESC LIMIT 1
SELECT COUNT(CustomerID) FROM yearmonth WHERE Consumption < 30000 AND `Date` LIKE '2012%' AND CustomerID IN ( SELECT CustomerID FROM customers WHERE Segment = 'KAM' )
SELECT SUM(CASE WHEN T2.Currency = 'CZK' THEN T1.Consumption ELSE 0 END) - SUM(CASE WHEN T2.Currency = 'EUR' THEN T1.Consumption ELSE 0 END) AS DIFFERENCE FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE STRFTIME('%Y', T1.`Date`) = '2012'
SELECT T1.`Date` FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = 'EUR' ORDER BY T1.Consumption DESC LIMIT 1
SELECT T2.Segment FROM yearmonth AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID ORDER BY T1.Consumption ASC LIMIT 1
SELECT T2.`Date` FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'CZK' ORDER BY T2.Consumption DESC LIMIT 1
SELECT T2.`Date` FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Segment = 'SME' AND T2.`Date` LIKE '%2013%' ORDER BY T2.Consumption DESC LIMIT 1
SELECT ( SUM(CASE WHEN T3.Segment = 'SME' THEN T2.Consumption ELSE 0 END) - SUM(CASE WHEN T3.Segment = 'LAM' THEN T2.Consumption ELSE 0 END) - SUM(CASE WHEN T3.Segment = 'KAM' THEN T2.Consumption ELSE 0 END) + SUM(CASE WHEN T3.Segment = 'SME' THEN T2.Consumption ELSE 0 END) ) / 400000 * 12 AS DIFF FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID INNER JOIN gasstations AS T3 ON T2.GasStationID = T3.GasStationID WHERE T1.Currency = 'CZK' AND T2.`Date` LIKE '%2013%'
SELECT T2.Segment, CAST((SUM(CASE WHEN T1.`Date` LIKE '%2013' THEN T1.Consumption ELSE 0 END) - SUM(CASE WHEN T1.`Date` LIKE '%2012' THEN T1.Consumption ELSE 0 END)) AS REAL) / SUM(CASE WHEN T1.`Date` LIKE '%2012' THEN T1.Consumption ELSE 0 END) FROM yearmonth AS T1 INNER JOIN gasstations AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment IN ('SME', 'LAM', 'KAM') GROUP BY T2.Segment ORDER BY SUM(CASE WHEN T1.`Date` LIKE '%2013' THEN T1.Consumption ELSE 0 END) - SUM(CASE WHEN T1.`Date` LIKE '%2012' THEN T1.Consumption ELSE 0 END) DESC LIMIT 1
SELECT SUM(D.Consumption) AS sum FROM yearmonth AS A INNER JOIN customers AS B ON A.CustomerID = B.CustomerID INNER JOIN yearmonth AS D ON A.CustomerID = D.CustomerID.Date WHERE A.Date BETWEEN '2013-08-01' AND '2013-11-30' AND A.CustomerID = 6
SELECT SUM(IIF(Segment = 'Discount', 1, 0)) - SUM(IIF(Segment = 'Discount', 1, 0)) FROM gasstations WHERE Country = 'Czech Republic'
SELECT ( SELECT Consumption FROM yearmonth WHERE CustomerID = 7 AND `Date` = '2013-04' ) - ( SELECT Consumption FROM yearmonth WHERE CustomerID = 5 AND `Date` = '2013-04' ) AS num FROM yearmonth WHERE `Date` = '2013-04'
SELECT COUNT(T1.Segment) FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Segment = 'sme' AND T1.Currency = 'CZK' > COUNT(T1.Segment) FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Segment = 'sme' AND T1.Currency = 'EUR'
SELECT T1.CustomerID FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'Euro' AND T1.Segment = 'LAM' AND T2.Date LIKE '2013-10%' ORDER BY T2.Consumption DESC LIMIT 1
SELECT T1.CustomerID, T1.Consumption FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'KAM' ORDER BY T1.Consumption DESC LIMIT 1
SELECT SUM(T1.Consumption) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'KAM' AND T1.`Date` BETWEEN '2013-05-01' AND '2013-05-31'
SELECT CAST(SUM(CASE WHEN T1.Consumption > 46.73 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.CustomerID) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Segment = 'LAM'
SELECT T.Country, SUM(T.num) AS num FROM ( SELECT T1.Country, COUNT(T1.GasStationID) AS num FROM gasstations AS T1 INNER JOIN `transactions_1k` AS T2 ON T1.GasStationID = T2.GasStationID GROUP BY T1.GasStationID, T1.Country HAVING SUM(T2.Amount) / SUM(T2.Price) > 1 ) GROUP BY T.Country
SELECT CAST(SUM(CASE WHEN Currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(CustomerID) FROM customers WHERE Segment = 'KAM'
SELECT CAST(SUM(CASE WHEN Consumption > 528.3 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(CustomerID) FROM yearmonth WHERE `Date` LIKE '2012-02%'
SELECT CAST(SUM(CASE WHEN T2.Segment = 'Premium' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.GasStationID) FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Country = 'SK'
SELECT CustomerID FROM yearmonth WHERE `Date` BETWEEN 20130901 AND 20130930 ORDER BY Consumption DESC LIMIT 1
SELECT T1.Segment FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE '2013-09%' ORDER BY T2.Consumption ASC LIMIT 1
SELECT T2.CustomerID FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE '2012-06%' AND T1.Segment = 'SME' ORDER BY T2.Consumption LIMIT 1
SELECT MAX(Consumption) FROM yearmonth WHERE `Date` LIKE '%2012%'
SELECT T1.Consumption FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = 'EUR' ORDER BY T1.Consumption DESC LIMIT 1
SELECT DISTINCT T1.Description FROM products AS T1 INNER JOIN yearmonth AS T2 ON T1.ProductID = T2.ProductID WHERE T2.Date LIKE '2013-09%'
SELECT DISTINCT T1.Country FROM gasstations AS T1 INNER JOIN `transactions_1k` AS T2 ON T1.GasStationID = T2.GasStationID INNER JOIN yearmonth AS T3 ON T2.Date = T3.`Date` WHERE T3.Date LIKE '2013-06%'
SELECT DISTINCT T1.ChainID, T2.Currency FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID INNER JOIN customers AS T3 ON T2.CustomerID = T3.CustomerID WHERE T3.Currency = 'EUR'
SELECT DISTINCT T1.Description FROM products AS T1 INNER JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID WHERE T2.Currency = 'EUR'
SELECT AVG(SUM(T1.Price)) FROM transactions_1k AS T1 INNER JOIN yearmonth AS T2 ON T1.TransactionID = T2.TransactionID WHERE T2.Date LIKE '2012-01%'
SELECT COUNT(T1.CustomerID) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'EUR' AND T2.Consumption > 1000
SELECT DISTINCT T2.Description FROM transactions_1k AS T1 INNER JOIN products AS T2 ON T1.ProductID = T2.ProductID INNER JOIN gasstations AS T3 ON T1.GasStationID = T3.GasStationID WHERE T3.Country = 'Czech Republic'
SELECT DISTINCT T2.`Time` FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.ChainID = 11
SELECT COUNT(T1.TransactionID) FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = 'Czech Republic' AND T1.Price > 1000
SELECT COUNT(T1.TransactionID) FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = 'Czech Republic' AND T1.`Date` > '2012-01-01'
SELECT AVG(SUM(T2.Price)) FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Country = 'Czech Republic'
SELECT AVG(SUM(T2.Price)) FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'EUR'
SELECT T2.CustomerID FROM transactions_1k AS T1 INNER JOIN yearmonth AS T2 ON T2.CustomerID = T1.CustomerID AND T2.`Date` = '2012-08-25' ORDER BY T1.Amount DESC LIMIT 1
SELECT T2.Country FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date = '2012-08-25' AND T1.CustomerID <> -1 GROUP BY T2.Country ORDER BY COUNT(T2.GasStationID) DESC LIMIT 1
SELECT T1.Currency FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.CardID = 1 AND T2.`Date` = '2012-08-24' AND T2.Time = '16:25:00'
SELECT T2.Segment FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date = '2012-08-23' AND T1.Time = '21:20:00'
SELECT COUNT(T1.TransactionID) FROM transactions_1k AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.`Date` = '2012-08-26' AND T1.Time <= '8AM' AND T2.Currency = 'EUR'
SELECT Segment FROM customers WHERE CustomerID = ( SELECT MIN(CustomerID) FROM customers )
SELECT T1.Country FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Date = '2012-08-24' AND T2.Time = '2012-08-24 12:42'
SELECT DISTINCT T2.ProductID FROM transactions_1k AS T1 INNER JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE T1.Date = '2012-08-23' AND T1.Time = '2012-08-23 21:20:00'
SELECT T2.`Date`, T1.Amount FROM transactions_1k AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2012-08-24' AND T1.Price = 124.05
SELECT COUNT(T1.GasStationID) FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Date = '2012-08-26' AND T2.Time BETWEEN '8:00' AND '9:00' AND T1.Country = 'CZE'
SELECT T1.Currency FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE '2013-06%' AND T2.Consumption = 214582.17
SELECT DISTINCT T1.Country FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.CardID = '667467'
SELECT T2.Country FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID INNER JOIN customers AS T3 ON T1.CustomerID = T3.CustomerID INNER JOIN yearmonth AS T4 ON T1.CustomerID = T4.CustomerID WHERE T1.Amount = 548.4 AND T4.Date = '2012-08-24'
SELECT CAST(SUM(CASE WHEN T2.Currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.CustomerID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.`Date` = '2012-08-25'
SELECT ( SELECT T2.Consumption FROM transactions_1k AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2012-08-25' AND T1.Price = 634.8 LIMIT 1 ) - ( SELECT T2.Consumption FROM transactions_1k AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2013-08-25' AND T1.Price = 634.8 LIMIT 1 )
SELECT T2.GasStationID FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID GROUP BY T2.GasStationID ORDER BY SUM(T1.Amount) DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.Segment = 'premium' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.Segment) FROM gasstations AS T1 INNER JOIN ( SELECT * FROM gasstations WHERE Country = 'SVK' ) AS T2 ON T1.ChainID = T2.ChainID
SELECT T2.Amount, SUM(T1.Consumption) FROM transactions_1k AS T2 INNER JOIN yearmonth AS T1 ON T2.CustomerID = T1.CustomerID WHERE T2.CustomerID = 38508 AND T1.`Date` LIKE '2012-01%'
SELECT T2.Description FROM transactions_1k AS T1 INNER JOIN products AS T2 ON T1.ProductID = T2.ProductID GROUP BY T2.ProductID ORDER BY COUNT(T1.ProductID) DESC LIMIT 5
SELECT T1.CustomerID, AVG(T2.Price), T1.Currency FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T1.CustomerID ORDER BY SUM(T2.Amount) DESC LIMIT 1
SELECT T2.Country FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID INNER JOIN products AS T3 ON T1.ProductID = T3.ProductID WHERE T3.ProductID = 2 AND T1.Amount = 1 AND T1.Price = ( SELECT MAX(T1.Price) FROM transactions_1k AS T1 INNER JOIN products AS T3 ON T1.ProductID = T3.ProductID WHERE T3.ProductID = 2 AND T1.Amount = 1 )
SELECT DISTINCT T1.Consumption FROM yearmonth AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID INNER JOIN products AS T3 ON T2.ProductID = T3.ProductID WHERE T3.ProductID = 5 AND T2.Price > 29 AND T1.`Date` LIKE '2012-08%'
SELECT T2.Street, T2.City, T2.Zip, T2.State FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.AvgScrRead LIMIT 1
SELECT County FROM schools WHERE CEA = 1 AND OpenDate BETWEEN '1980-01-01' AND '1989-12-31' GROUP BY County ORDER BY COUNT(CDSCode) DESC LIMIT 1
SELECT School, Latitude FROM schools WHERE Latitude = ( SELECT MAX(Latitude) FROM schools )
SELECT T2.City, T2.Low Grade FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.CDSCode IN ( SELECT MIN(CDSCode) FROM frpm ) ORDER BY T2.Latitude DESC LIMIT 1
SELECT High Grade - Low Grade FROM frpm ORDER BY Longitude DESC LIMIT 1
SELECT T2.account_id FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE STRFTIME('%Y', T1.date) = '1995' ORDER BY T1.date LIMIT 1
SELECT T1.account_id FROM loan AS T1 INNER JOIN client AS T2 ON T2.client_id = T1.account_id WHERE T2.gender = 'F' ORDER BY T1.amount / 12 DESC LIMIT 1
SELECT T2.label FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = 'double' ORDER BY T2.label DESC LIMIT 1
SELECT T1.label FROM molecule AS T1 INNER JOIN ( SELECT molecule_id FROM bond WHERE bond_type = 'double' ) AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id ORDER BY COUNT(molecule_id) DESC LIMIT 1
SELECT name FROM cards WHERE faceConvertedManaCost > convertedManaCost
SELECT T1.name FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'RU' GROUP BY T1.name ORDER BY COUNT(T1.name) DESC LIMIT 1
SELECT T1.name FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Coldsnap' ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT T1.name FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Coldsnap' ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT T2.releaseDate, T1.format FROM legalities AS T1 INNER JOIN sets AS T2 ON T2.code = T1.uuid WHERE T2.type = 'Mythic' ORDER BY T2.releaseDate LIMIT 1
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId ORDER BY T1.Reputation DESC LIMIT 1
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId ORDER BY T1.Reputation LIMIT 1
SELECT T2.Text, T1.DisplayName FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.PostId IN ( SELECT Id FROM posts WHERE Title = 'Analysing wind data with R' ORDER BY LasActivityDate DESC LIMIT 1 )
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Intelligence' ORDER BY T2.attribute_value LIMIT 1
SELECT T1.full_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id ORDER BY T2.attribute_value DESC LIMIT 1
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN hero_power AS T3 ON T1.id = T3.hero_id INNER JOIN superpower AS T4 ON T3.power_id = T4.id WHERE T2.publisher_name = 'Dark Horse Comics' AND T4.power_name = 'Durability' GROUP BY T1.superhero_name ORDER BY COUNT(T1.superhero_name) DESC LIMIT 1
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT T3.race FROM hero_attribute AS T1 INNER JOIN superpower AS T2 ON T1.hero_id = T2.id INNER JOIN superhero AS T3 ON T1.hero_id = T3.id GROUP BY T3.race ORDER BY COUNT(T2.power_name) DESC LIMIT 1
SELECT COUNT(T1.height_cm) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Speed' ORDER BY T1.height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT T2.surname FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.lap = 19 AND T1.position = 2 ORDER BY T1.time DESC LIMIT 1
SELECT T2.raceId, T1.points FROM driverStandings AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T1.position = 1 AND T2.driverId = ( SELECT driverId FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton' )
SELECT T1.name, T1.year, T1.location FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.laps = ( SELECT MAX(T2.laps) FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId )
SELECT player_api_id FROM Player_Attributes WHERE overall_rating = ( SELECT MAX(overall_rating) FROM Player_Attributes )
SELECT DISTINCT preferred_foot FROM Player_Attributes WHERE potential = ( SELECT MIN(potential) FROM Player_Attributes )
SELECT T.home_team_api_id FROM ( SELECT home_team_api_id, COUNT(id) FROM `Match` WHERE season = 2016 AND home_team_goal < away_team_goal GROUP BY home_team_api_id ORDER BY COUNT(id) ASC LIMIT 1 ) t
SELECT T2.team_long_name FROM Match AS T1 INNER JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id INNER JOIN League AS T3 ON T1.country_id = T3.id WHERE T3.name = 'Scotland Premier League' AND T1.season = 2010 ORDER BY T1.away_team_goal DESC LIMIT 1
SELECT T1.player_api_id FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date LIKE '2010%' ORDER BY T2.overall_rating - ( SELECT AVG(T2.overall_rating) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ) DESC LIMIT 1
SELECT T2.long_passing FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.birthday LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.potential DESC LIMIT 1
SELECT T1.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.IGA BETWEEN 15 AND 35 ORDER BY T2.IGA DESC LIMIT 1
SELECT T2.`First Date` FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.LDH BETWEEN 0 AND 20 ORDER BY T1.LDH DESC LIMIT 1
SELECT T2.`Examination Date` FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T3.ALB IN (2, 3) ORDER BY T3.ALB DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.position = 'Student Club' GROUP BY T1.event_name ORDER BY COUNT(T2.link_to_event) DESC LIMIT 1
SELECT T2.expense_description FROM budget AS T1 INNER JOIN expense AS T2 ON T1.link_to_event = T2.link_to_budget ORDER BY T1.remaining ASC LIMIT 1
SELECT T1.first_name, T1.last_name, T2.source FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member ORDER BY T2.amount DESC LIMIT 1
SELECT link_to_event FROM expense ORDER BY cost ASC LIMIT 1
SELECT Segment FROM customers WHERE CustomerID = ( SELECT MIN(CustomerID) FROM customers )
