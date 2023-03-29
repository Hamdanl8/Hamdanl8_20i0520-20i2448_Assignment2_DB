use ASSIGNMENT
/*QUERY 7*/
/* THIS MULTIPLE INNER JOIN GETS ALL THE ENTRIES WHICH ARE COMMON B/W "AIRPLANE", "PLANETYPE" & "PLANEsERVICE" */
SELECT DISTINCT A.REG#, PT.MODEL AS NAME, PS.DATE_
FROM AIRPLANE A
INNER JOIN PLANEsERVICE PS ON A.REG# = PS.PLANErEG#
INNER JOIN PLANETYPE PT ON A.OF_TYPE = PT.MODEL
WHERE PS.DATE_>= DATEADD(day, -7, GETDATE());
