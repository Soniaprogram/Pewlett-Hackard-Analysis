# Pewlett-Hackard-Analysis

## Overview of the analysis

Pewlett Hackard is looking to offer retirement packages to eligible employees. Bobby, is a HR analyst tasked with researching who is retiring and how many positions will need to be filled in the company. All employee data is currently stored in six .csv files. I will assist Bobby by building an employee database with SQL by applying my data modelling, engineering, and analysis skills 

The purpose of this analysis is to determine the number of retiring employees per title and identify which employees are eligible to participate in a mentorship program. This analysis will allow the manager of Pewlett Hackard to prepare for the upcoming "silver tsunami" as many current employees reach retirement age. 

For this analysis, I generated an Entity Relationship Diagram (as seen below) to highlight the relational data and created tables in SQL for each of the 6 .csv files to build up the employee database. 

![ERD](https://github.com/Soniaprogram/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)

Deliverable 1: The Number of Retiring Employees by Title

Using the ERD I created as a reference, I created a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. 

Deliverable 2: The Employees Eligible for the Mentorship Program

Using the ERD and SQL Queries, I also created a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.


## Results
Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
For Deliverable 1, I created my first query to retrieve the required columns from the Employees and Titles table and joined both tables on the primary key. I created a new table called retirement_titles to contain this data. I filtered the data to show the employees born between Jan 1, 1952 and Dec 31, 1955 and ordered by the employee number. 
The outputted table had duplicate entires for employees with multiple titles over the years.
Show Retirement Titles

For the second query, I removed these duplicates to keep the most recent employee title using DISTINCT ON. I created a new table called Unique Titles, sorted in ascending order by employee number and descending order by the last date of the most recent title. 
As a result, there were no duplicate entries. 
Show Unique Titles

For the next query, I retrieved the number of titles from the Unique Titles table, grouped by title, and sorted the count column in descending order. This way, I could see the amount of employees eligible for retirement organized by current title. 
Show retiring titles

For Deliverable 2, I wrote a query to retrieve the required columns from the Employees, dep_emp, and titles tables. I used a DISTINCT ON statement to avoid duplicate results so it would only retrieve the first instance of employee number. I joined the tables and filtered to 
I ordered the table by employee number
Show mentorship eligibility

## Summary
Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
According to the retiring titles table, a total of 90,398 roles will need to be filled. 

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
There are only 1549 retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employee. 
