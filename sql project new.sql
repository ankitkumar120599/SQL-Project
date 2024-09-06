create table employee_detail(
 employee_id int primary key, 
 First_Name nvarchar(10),
 Last_Name nvarchar(10),
 salary float,
 Joining_date datetime ,
 Department varchar(20),
 Gender varchar(20));

 select*from employee_detail
 insert into employee_detail values (1,'vikash','Ahlawat',600000,'2013-2-12 11:16:00','IT','Male');

 select First_Name from employee_detail

 select UPPER(First_Name) from employee_detail

 select CONCAT(First_Name,' ',Last_Name ) from employee_detail

 select * from employee_detail where First_Name = 'Vikash'
  select * from employee_detail where First_Name like 'a%'

  select * from employee_detail where First_Name like '%h'
  select * from employee_detail where First_Name like '[a-p]%'
    select * from employee_detail where First_Name not like '[a-p]%'
	  select * from employee_detail where gender like '__le'
	  select * from employee_detail where First_Name like 'a____' 
-- unique $ distinct values
	  select department,count(*) from employee_detail 
	  group by Department

	  select distinct department from employee_detail
--Get the highest "Salary" from EmployeeDetail table.
SELECT MAX(Salary) AS HighestSalary
FROM employee_detail;


--Get the lowest "Salary" from EmployeeDetail table 
SELECT min(Salary) AS lowestSalary
FROM employee_detail;

 
 select * from employee_detail
 --date format
 select FORMAT (Joining_date, 'yyyy/mm/dd hh:mm:ss') from employee_detail

 SELECT FORMAT(Joining_date, 'dd MMM yyyy') AS FormattedJoiningDate
FROM employee_detail;

SELECT FORMAT(Joining_date, 'yyyy/MM/dd') AS FormattedJoiningDate
FROM employee_detail;
--(19)

SELECT FORMAT(Joining_date, 'HH:mm') AS TimePart
FROM employee_detail;

---(21)
SELECT YEAR(Joining_date) AS YearPart
FROM employee_detail;

--(22)

SELECT month(Joining_Date) AS monthPart
FROM employee_detail;

--(23)
SELECT GETDATE() AS CurrentDate;

--(24)

SELECT 
    First_Name,
    GETUTCDATE() AS CurrentUTCDate,
    Joining_date,
    DATEDIFF(MONTH, Joining_date, GETUTCDATE()) AS MonthsDifference
FROM 
    employee_detail;

--(25)

SELECT 
    First_Name,
    GETDATE() AS CurrentDate,
    Joining_date,
    DATEDIFF(DAY, Joining_Date, GETDATE()) AS DaysDifference
FROM 
    employee_detail;

--(26)

SELECT * 
FROM employee_detail
WHERE YEAR(Joining_date) = 2013;

--(27)

SELECT * 
FROM employee_detail
WHERE MONTH(Joining_date) = 1;

--(28)

SELECT COUNT(*) AS TotalEmployees
FROM employee_detail;


--(29)

SELECT TOP 1 *
FROM employee_detail;

--(30)

SELECT *
FROM employee_detail
WHERE First_Name IN ('Vikash', 'Ashish', 'Nikhil');

--(31)

SELECT *
FROM employee_detail
WHERE First_Name NOT IN ('Vikash', 'Ashish', 'Nikhil');


--(32)

SELECT RTRIM(First_Name) AS TrimmedFirstName
FROM employee_detail;

--(33)

SELECT LTRIM(First_Name) AS TrimmedFirstName
FROM employee_detail;

--(34)

SELECT 
    First_Name,
    CASE 
        WHEN Gender = 'Male' THEN 'M'
        WHEN Gender = 'Female' THEN 'F'
        ELSE 'U' -- Optional: Handle unknown genders
    END AS Gender
FROM employee_detail;

--(35) Select first name from "EmployeeDetail" table prifixed with "Hello

SELECT CONCAT('Hello ', First_Name) AS PrefixedFirstName
FROM employee_detail;

---38. Get employee details from "EmployeeDetail" table whose Salary greater than 600000

SELECT *
FROM employee_detail
WHERE Salary > 600000;

--39. Get employee details from "EmployeeDetail" table whose Salary less than 700000

SELECT *
FROM employee_detail
WHERE Salary < 700000;

--40. Get employee details from "EmployeeDetail" table whose Salary between 500000 than 600000

SELECT *
FROM employee_detail
WHERE Salary BETWEEN 500000 AND 600000;

--41. Give records of ProjectDetail table

CREATE TABLE ProjectDetail (
    project_detail_id INT PRIMARY KEY,     
    employee_id INT,                     
    project_name VARCHAR(50)           
);

insert into ProjectDetail values (1,1,'Task Track');
insert into ProjectDetail values (2,1,'CLP');
insert into ProjectDetail values (3,1,'Survey Management');
insert into ProjectDetail values (4,2,'HR Management');
insert into ProjectDetail values (5,3,'Task Track');
insert into ProjectDetail values (6,3,'GRS');
insert into ProjectDetail values (7,3,'DDS');
insert into ProjectDetail values (8,4,'HR Management');
insert into ProjectDetail values (9,6,'GL Management');

select * from ProjectDetail

--42. Write the query to get the department and department wise total(sum) salary from "EmployeeDetail" table.

SELECT Department, SUM(Salary) AS TotalSalary
FROM employee_detail
GROUP BY Department;

--43. Write the query to get the department and department wise total(sum) salary, display it in ascending order according to salary.

SELECT Department, SUM(Salary) AS TotalSalary
FROM employee_detail
GROUP BY Department
ORDER BY TotalSalary ASC;

--44. Write the query to get the department and department wise total(sum) salary, display it in descending order according to salary

SELECT Department, SUM(Salary) AS TotalSalary
FROM employee_detail
GROUP BY Department
ORDER BY TotalSalary Desc;


--45. Write the query to get the department, total no. of departments, total(sum) salary with respect to department from "EmployeeDetail" table.


SELECT 
  Department, 
  COUNT(*) AS Total_Departments, 
  SUM(Salary) AS Total_Salary
FROM 
  employee_detail
GROUP BY 
  Department;

--46. Get department wise average salary from "EmployeeDetail" table order by salary ascending

SELECT Department, AVG(Salary) AS AVGSalary
FROM employee_detail
GROUP BY Department
ORDER BY AVGSalary Asc;

--47 . Get department wise maximum salary from "EmployeeDetail" table order by salary ascending

select Department, MAX(salary) as maxsalary
from employee_detail
group by Department
ORDER BY maxsalary Asc;

-- 48. Get department wise minimum salary from "EmployeeDetail" table order by salary ascending.

select Department, Min(salary) as minsalary
from employee_detail
group by Department
ORDER BY minsalary Asc;

--49. same question i.e 48

--50. Join both the table that is Employee and ProjectDetail based on some common paramter

SELECT e.*, p.*
FROM employee_detail e
JOIN ProjectDetail p ON e.employee_id = p.employee_id;

--51. Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for those employee which have assigned project already.

SELECT e.First_Name, p.project_name
FROM employee_detail e
JOIN ProjectDetail p ON e.employee_id = p.employee_id
ORDER BY e.First_Name;

--52. Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee even they have not assigned project.

SELECT e.First_Name, p.project_name
FROM employee_detail e
LEFT JOIN ProjectDetail p ON e.employee_id = p.employee_id
ORDER BY e.First_Name;


--53) Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee if project is not assigned then display "-No Project Assigned"

SELECT ed.First_Name AS EmployeeName,
       COALESCE(pd.Project_Name, '-No Project Assigned') AS Project_Name
FROM employee_detail ed
LEFT JOIN ProjectDetail pd ON ed.employee_id = pd.employee_id
ORDER BY ed.First_Name;

--54.Get all project name even they have not matching any employeeid, in left table, order by firstname from "EmployeeDetail" and "ProjectDetail

SELECT pd.project_name
FROM ProjectDetail pd
LEFT JOIN employee_detail ed ON pd.employee_id = ed.employee_id
ORDER BY ed.First_Name is NULL, ed.First_name;

--53) Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee if project is not assigned then display "-No Project Assigned"

SELECT e.First_Name,
       COALESCE(p.Project_Name, '-No Project Assigned') AS Project_Name
FROM employee_detail e
LEFT JOIN ProjectDetail p ON e.employee_id = p.employee_id
ORDER BY e.First_Name;

--54.Get all project name even they have not matching any employeeid, in left table, order by firstname from "EmployeeDetail" and "ProjectDetail

SELECT pd.project_name
FROM ProjectDetail pd
LEFT JOIN employee_detail ON pd.employee_id = employee_detail.employee_id
ORDER BY employee_detail.First_name;

--55. Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL

SELECT ed.First_Name AS EmployeeName,
       pd.project_name AS ProjectName
FROM employee_detail ed
FULL OUTER JOIN ProjectDetail pd ON ed.employee_id = pd.employee_id;

--56. Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NUL

-- 55 , 56 and 57  problem are same

--58.Write down the query to fetch EmployeeName & Project who has assign more than one project

SELECT ed.First_Name AS EmployeeName,
       pd.project_name AS ProjectName
FROM employee_detail ed
JOIN ProjectDetail pd ON ed.employee_id = pd.employee_id
WHERE ed.employee_id IN (
    SELECT employee_id
    FROM ProjectDetail
    GROUP BY employee_id
    HAVING COUNT(project_name) > 1 );

--59. Write down the query to fetch ProjectName on which more than one employee are working along with EmployeeName

SELECT pd.project_name,
       ed.First_Name AS EmployeeName
FROM ProjectDetail pd
JOIN employee_detail ed ON pd.employee_id = ed.employee_id
WHERE pd.project_name IN (
    SELECT project_name
    FROM ProjectDetail
    GROUP BY project_name
    HAVING COUNT(employee_id) > 1
);


--60. Apply Cross Join in Both the tables

SELECT ed.First_Name AS EmployeeName,
       pd.project_name AS ProjectName
FROM employee_detail ed
CROSS JOIN ProjectDetail pd;


                                     --Thank you---

