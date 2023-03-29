README

At the start, the table formation and identifying the relations were the main concern and it took us quite a while to add in dummy data and ensure that the foreign and primary keys are in accordance with the manual.

after getting the tables sorted we went in and inserted dummy data.

then comes the querries, we stuc to given queries and completed them in accordance but faced difficulties in solving Q13,Q14 and Q18 and we skipped those.


Q1.
Write a SQL query to find the registration numbers of airplanes that have never
undergone maintenance.

we applied left join on airplane and planeservice to find the registration number of the plane that was never maintained


Q2
write a SQL query to find the names and addresses of corporations that own airplanes
with a capacity greater than 200.

in this querry we just needed to find those corporations who have a plane with capicity of more than 200.
we had to use multiple inner joins on airplane planetype and owns

Q3
 Write a SQL query to find the average salary of employees who work the night shift(between 10 PM and 6 AM).

we found the average using simple AVG and putting the condition of Night

Q4
Write a SQL query to find the top 5 employees with the highest total number of
maintenance hours worked.

 we found the highest hrs worked via using joins b/w employee and planeservice


Q5
Write a SQL query to find the names and registration numbers of airplanes that have undergone maintenance in the past week.

we used inner join to find the name and reg of planes that went under maintainance on AIRPLANES and PLANESERVICE and using dating format as well

Q6
 Write a SQL query to find the names and phone numbers of all owners who have
purchased a plane in the past month.

we applied simple dating format to solve this query.


Q7
 Write a SQL query to find the number of airplanes each pilot is authorized to fly.

we used joins b/w AIRPLANES and PILOTS via Relation FLIES to find this query

Q8
 Write a SQL query to find the location and capacity of the hangar with the most
available space.

its a simple querry which used MAX(capacity) function in the hangar table

Q9
 Write a SQL query to find the number of planes owned by each corporation, sorted in descending order by number of planes.

it used joins b/w airplane and corporation via owns to find the total number of planes.

Q10
 Write a SQL query to find the average number of maintenance hours per plane, broken down by plane type. 

so joins were used b/w planetype and planeservice to find the AVG(hours) per plane type.

Q11
 Write a SQL query to find the names of pilots who are qualified to fly a plane that is currently undergoing maintenance.

inner join was used b/w pilots and planeservice to find this querry

Q12
 Write a SQL query to find the names of employees who have worked on planes owned
by a particular corporation, sorted by the total number of maintenance hours worked.
inner joins were used b/w corporation,employees,planservice and also OWNS

Q13 Write a SQL query to find the names and registration numbers of airplanes that have never been owned by a corporation or undergone maintenance work from an employee who works the day shift.
inner joins were used b/w AIRPLANE,CORPORATION,EMPLOYEE,PLANESERVICE via owns

Q14
 Write a Query to find the total number of planes stored in each hangar.
simple querry of airplace stored_in hangar as count

Q15 Write a Query to find the total number of planes of each plane type.
used count in planetypes

Q16 Write a Query to find the total number of services performed on each plane.
Marks
 
Q17 Write a Query to find the average salary of employees in each shift. 
simple AVG(salary )formula and applying condition as well
 
Q18
Write a Query to find the total number of planes each owner owns
both person and corporate total number of planes owned

Q19
 Write a Query to find the number of planes each pilot is authorized to fly.
inner join b/w airplane and pilots via flies
Q20
 Write 4 Queries Other than this and write their Importance in the Comments why do
you think they are important and where can they be used.
Retrieve the number and capacity of all hangars, along with the number of planes currently stored in each hangar.

--2
Retrieve the date and name when an owner bought a plane.

--3
Retrieve the names of corporation who have less than or equal to 3 plane.


--4
Retrieve the name of pilot flying a specific type of plane.

--5
Find the names and phone numbers of all owners who have purchased a plane that has undergone maintenance work in the past 10 year and one month

