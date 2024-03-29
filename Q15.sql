use ASSIGNMENT
/*QUERY 15*/
SELECT A.OF_TYPE AS NAME, A.REG#
FROM AIRPLANE A
LEFT JOIN OWNS O ON A.REG#=O.AIRPLANEREG#
INNER JOIN WORKS_ON WO ON WO.MODEL=A.OF_TYPE
INNER JOIN EMPLOYEE E ON WO.SSN=E.SSN
WHERE O.AIRPLANEREG# IS NULL
UNION
SELECT A.OF_TYPE AS NAME, A.REG#
FROM AIRPLANE A
LEFT JOIN OWNS O ON A.REG#=O.AIRPLANEREG#
WHERE O.OWNERtYPE='PERSON';