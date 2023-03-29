
use ASSIGNMENT
/*QUERY 22*/
SELECT P.SSN, P.NAME_ AS NAME, COUNT(DISTINCT F.PLAIN_TYPE) AS PLANES
FROM PILOT P
LEFT JOIN FLIES F ON P.SSN = F.SSN
GROUP BY P.SSN, P.NAME_
ORDER BY PLANES DESC;