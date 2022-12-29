# Data Engineering for Pewlett Hackard
</br>

## Purpose:

  The purpose of this task is to model, engineer, and analyze the people whom Pewlett Hackard employed during the 1980s and 1990s. The data are in raw CSV files that need to be imported into a SQL database.
  
## Data:

  A quick snapshot of the aggregated, raw CSV data:
</br></br>
<p align="center">
  <img src="https://github.com/ericyang91/SQL-Challenge/blob/main/Images/datasnapshot.jpg" alt="rawdata"/>
</p>
</br>

## Data Modeling:
</br>
<a href="https://app.quickdatabasediagrams.com/"> <b>QuickDBD</b></a> was used to model the data into an Entity Relationship Diagram.
</br>
</br>
<p align="center">
  <img src="https://github.com/ericyang91/SQL-Challenge/blob/main/Entity%20Relationship%20Diagram/ERD.png" alt="erd"/>
</p>
</br>
Note:
</br>
One-to-one relationship: A straight line with a short, perpendicular line.
</br>
One-to-many relationship: A straight line with a short, perpendicular line with three short branches.
</br>

</p>
</br>
Table Schema for the ERD:
</br>
</br>
<p align="center">
  <img src="https://github.com/ericyang91/SQL-Challenge/blob/main/Images/tableschema.jpg" alt="erdschema"/>
</p>
</br>


## Data Engineering:
</br>
PostgreSQL table schema for each of the six CSV files:
</br>
</br>
<p align="center">
  <img src="https://github.com/ericyang91/SQL-Challenge/blob/main/Images/dataengineering.jpg" alt="postgresqlschema"/>
</p>
</br>

</br>
</br>

## Data Analysis:
</br>
List of the employee ID, last name, first name, sex, and salary of each employee.
</br>
</br>
<p align="center">
  <img src="https://github.com/ericyang91/SQL-Challenge/blob/main/Images/1.jpg" alt="1"/>
</p>
</br>
</br>
List of first name, last name, and hire date for the employees who were hired in 1986.
</br>
</br>
<p align="center">
  <img src="https://github.com/ericyang91/SQL-Challenge/blob/main/Images/2.jpg" alt="2"/>
</p>
</br>
</br>
List of the manager of each department along with their department number, department name, employee number, last name, and first name.
</br>
</br>
<p align="center">
  <img src="https://github.com/ericyang91/SQL-Challenge/blob/main/Images/3.jpg" alt="3"/>
</p>
</br>
</br>
List of the department number for each employee along with that employee's employee number, last name, first name, and department name.
</br>
</br>
<p align="center">
  <img src="https://github.com/ericyang91/SQL-Challenge/blob/main/Images/4.jpg" alt="4"/>
</p>
</br>
</br>
List of first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
</br>
</br>
<p align="center">
  <img src="https://github.com/ericyang91/SQL-Challenge/blob/main/Images/5.jpg" alt="5"/>
</p>
</br>
</br>
Listing of the employee in the Sales department, including their employee number, last name, and first name.
</br>
</br>
<p align="center">
  <img src="https://github.com/ericyang91/SQL-Challenge/blob/main/Images/6.jpg" alt="6"/>
</p>
</br>
</br>
List of each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
</br>
</br>
<p align="center">
  <img src="https://github.com/ericyang91/SQL-Challenge/blob/main/Images/7.jpg" alt="7"/>
</p>
</br>
</br>
List of the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
</br>
</br>
<p align="center">
  <img src="https://github.com/ericyang91/SQL-Challenge/blob/main/Images/8.jpg" alt="8"/>
</p>
</br>

## Languages and Libraries:
</br>

`pgAdmin 4 v.6.15`
`postgreSQL v.14.6`
`Visual Studio 1.74.1`
