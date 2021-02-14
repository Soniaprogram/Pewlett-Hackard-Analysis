# Pewlett-Hackard-Analysis

## Overview of the analysis

Pewlett Hackard is looking to offer retirement packages to eligible employees. Bobby, is a HR analyst tasked with researching who is retiring and how many positions will need to be filled in the company. All employee data is currently stored in six .csv files. I will assist Bobby by building an employee database with SQL by applying my data modelling, engineering, and analysis skills 

The purpose of this analysis is to determine the number of retiring employees per title and identify which employees are eligible to participate in a mentorship program. This analysis will allow the manager of Pewlett Hackard to prepare for the upcoming "silver tsunami" as many current employees reach retirement age. 

For this analysis, I generated an Entity Relationship Diagram (as seen below) to highlight the relational data and created tables in SQL for each of the six .csv files to build up the employee database. 

![ERD](https://github.com/Soniaprogram/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)

***Image 1: Entity Relationship Diagram***

#### Deliverable 1: The Number of Retiring Employees by Title

Using the ERD I created as a reference, I created a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. 

#### Deliverable 2: The Employees Eligible for the Mentorship Program

Using the ERD and SQL Queries, I also created a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.


## Results

### Deliverable 1: Retirement Titles

For Deliverable 1, I created my first query to retrieve the required columns from the Employees and Titles table and joined both tables on the primary key. I created a new table called retirement_titles to contain this data. I filtered the data to show the employees born between Jan 1, 1952 and Dec 31, 1955 and ordered by the employee number. The outputted table had duplicate entires for employees with multiple titles over the years.

![QueryRetirement_Titles](https://github.com/Soniaprogram/Pewlett-Hackard-Analysis/blob/main/Images/query1retirement_titles.PNG)

![Retirement_Titles](https://github.com/Soniaprogram/Pewlett-Hackard-Analysis/blob/main/Images/retirementtitles.PNG)

***Image 2: Retirement Titles***

### Deliverable 1: Unique Titles
For the second query, I removed these duplicates to keep the most recent employee title using DISTINCT ON. I created a new table called Unique Titles, sorted in ascending order by employee number and descending order by the last date of the most recent title. As a result, there were no duplicate entries. 

![QueryUnique_Titles](https://github.com/Soniaprogram/Pewlett-Hackard-Analysis/blob/main/Images/query2uniquetitles.PNG)

![Unique_Titles](https://github.com/Soniaprogram/Pewlett-Hackard-Analysis/blob/main/Images/uniquetitles.PNG)

***Image 3: Unique Titles***

### Deliverable 1: Retiring Titles
For the next query, I retrieved the number of titles from the Unique Titles table, grouped by title, and sorted the count column in descending order. This way, I could see the amount of employees eligible for retirement organized by current title. 

![QueryRetiring_Titles](https://github.com/Soniaprogram/Pewlett-Hackard-Analysis/blob/main/Images/query3retirementtitles.PNG)

![Retiring_Titles](https://github.com/Soniaprogram/Pewlett-Hackard-Analysis/blob/main/Images/retiringtitles.PNG)

***Image 4: Retiring Titles***

### Deliverable 2: Mentorship Eligibility
For Deliverable 2, I wrote a query to retrieve the required columns from the employees, dep_emp, and titles tables. I used a DISTINCT ON statement to avoid duplicate results so it would only retrieve the first instance of employee number. I joined the tables and filtered to get current employees with birth dates between Jan 1, 1965 and Dec 31, 1965. I ordered the table by employee number.

![QueryMentorship eligibility](https://github.com/Soniaprogram/Pewlett-Hackard-Analysis/blob/main/Images/deliver2.PNG)

![Mentorship eligibility](https://github.com/Soniaprogram/Pewlett-Hackard-Analysis/blob/main/Images/del2table.PNG)

***Image 5: Mentorship Eligibility***

Through both deliverables we could see that:
- Looking at retiring titles, the largest group of employees eligible for retirement are senior engineers with a count of 29,414 and 28,254 senior staff who will need to be replaced.
- 1549 employees are eligible for the mentorship program
- If you filter the mentorship_eligibility.csv created in Deliverable 2, this includes 529 Senior engineers and 569 Senior Staff eligible for mentorship
- Judging by these findings, Pewlett-Hackard will need to implement a plan to kickstart the mentorship program very soon and a plan to fill the positions that may be vacant soon due to potential retirees

## Summary

#### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
According to the retiring titles table, a total of 90,398 roles will need to be filled. 

#### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
Looking at the mentorship eligibility query, there are only 1549 retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. 

It would be really useful to further query the Mentorship eligibility table to get a count of each employee eligible for the Mentorship program organized by job title. This way, the company can see how many mentors are available for each job title. 

![newquery](https://github.com/Soniaprogram/Pewlett-Hackard-Analysis/blob/main/Images/additionalquery.PNG)
![newtable](https://github.com/Soniaprogram/Pewlett-Hackard-Analysis/blob/main/Images/newquery.PNG)

It would be beneficial to join the above table with the retiring tables table to directly see the ratio of retiring employees and mentorship ready employees organized by job title. It would also be useful to add a query for the sum of potential retirees and add that to the table to easily see how many roles will need to be potentially filled as the "silver tsunami" approaches. 

![sumquery](https://github.com/Soniaprogram/Pewlett-Hackard-Analysis/blob/main/Images/sumofretirees.PNG)
![sum](https://github.com/Soniaprogram/Pewlett-Hackard-Analysis/blob/main/Images/sum.PNG)
