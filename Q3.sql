use ASSIGNMENT

/*QUERY 3 */  
SELECT SHIFT_, AVG(SALARY) AS AVERAGE_SALARY
FROM EMPLOYEE
WHERE SHIFT_ = 'NIGHT'
GROUP BY SHIFT_;