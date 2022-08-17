# Pewlett-Hackard-Analysis

## Overview of the analysis

After we help Bobby to developing a code for analyze the databases of Pewlett-Hackard, now we have other task from his manager: first, we had to **determine the number of retiring employees per title and identify employees who are eligible to participate in a mentorship program**. Then, we had to make a report that summarizes our analysis and help prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age. For this task, we will use the databases we create with Bobby and make new ones. 

## Results

To determine the number of retiring employees, we use the tables we create before called “employees” and “titles” to create a new table with the personal information of the employees, the employee number, and the working start/end date. Then we select the employees that still working in the company and their actual position to finally counting how many employees per title are going to retire, this is the result:

![retiring_tiles](https://github.com/raulesqueda/Pewlett-Hackard-Analysis/blob/main/Module/retiring_titles.JPG)

With this information, **we suggest**:
- Make a retirement plan for the company, focusing in the “Senior Engineer” and “Senior Staff”, this represents the 70% of the total retiring employees, we also suggest making this slowly, we want to prevent a lack of technical employees in the company.
- We also suggest asking more information about where these employees work, to develop a better retirement plan.

For the second task, we determine who are eligible to participate in the mentorship program with the tables we create in the last request, but we filter the information for the employees who born in 1965 and we got 1,549 potentially mentors:
 
![mentorship_elegibles](https://github.com/raulesqueda/Pewlett-Hackard-Analysis/blob/main/Module/mentorship_elegibility.JPG)
 
With this information, **we suggest**:
-	We need to contrast how many mentors are based in the title; we want all the titles have mentors to start the mentorship program.
-	In the case any title lacks mentors, we suggest extending the number of employees by born date.

## Summary

With the new information we get to help Bobby’s manager, there is many things that the company could do for these employees, but how many roles will need to be filled as the "silver tsunami" begins to make an impact? **In total, the company needs 72,458 new employees to fill the existing positions**.

Also, there is other question: Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? **We got 1,549 potentially mentors, this represents around 2% of the total retiring employees, so we suggest to extend the program and maybe includes voluntary employees who want to participate**.
