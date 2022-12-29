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

## Languages and Libraries:
</br>

`pgAdmin 4 v.6.15`
`postgreSQL v.14.6`
`Visual Studio 1.74.1`
