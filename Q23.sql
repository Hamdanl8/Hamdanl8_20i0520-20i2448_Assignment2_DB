use ASSIGNMENT
/*QUERY 23*/
-- 1
/*Retrieve the number and capacity of all hangars, along with the number of planes currently stored in each hangar.*/
SELECT type.OF_TYPE,hanger.Number,hanger.CAPACITY 
FROM AIRPLANE type 
JOIN HANGAR hanger ON type.STORED_IN = hanger.Number;
--2
/*Retrieve the date and name when an owner bought a plane.*/
SELECT  o.NAME_, Pdate
FROM OWNS ow 
JOIN PERSON o ON ow.PERSONoWNERiD = o.Ssn;
--3
/*Retrieve the names of corporation who have less than or equal to 3 plane.*/
SELECT o.NAME_ 
FROM CORPORATION o 
JOIN OWNS ow ON o.ID = ow.CORPoWNERiD 
GROUP BY o.NAME_ 
HAVING COUNT(ow.AIRPLANEREG#) <=3;

--4
/*Retrieve the name of pilot flying a specific type of plane.*/
SELECT p.NAME_ 
FROM PILOT p 
JOIN FLIES f ON p.Ssn = f.SSN 
JOIN PLANETYPE pt ON f.PLAIN_TYPE = pt.MODEL 
WHERE pt.Model = 'E';

--5
/*Find the names and phone numbers of all owners who have purchased a plane that has undergone maintenance work in the past 10 year and one month*/
SELECT DISTINCT o.NAME_,o.ADDRESS_,o.PHONE
FROM PERSON o
JOIN OWNS ow ON o.SSN = ow.PERSONoWNERiD
JOIN PLANEsERVICE ps ON ow.AIRPLANEREG#= ps.PLANErEG#
WHERE ps.DATE_ >= DATEADD(year, -10, GETDATE());

SELECT DISTINCT o.NAME_,o.ADDRESS_,o.PHONE
FROM CORPORATION o
JOIN OWNS ow ON o.ID = ow.CORPoWNERiD
JOIN PLANEsERVICE ps ON ow.AIRPLANEREG#= ps.PLANErEG#
WHERE ps.DATE_ >= DATEADD(month, -1, GETDATE());