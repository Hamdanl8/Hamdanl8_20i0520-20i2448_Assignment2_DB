use ASSIGNMENT
/*QUERY 18*/
SELECT OF_TYPE AS TYPE, COUNT(*) AS PLANES
FROM AIRPLANE
GROUP BY OF_TYPE;