-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/RRzsvB
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "Departments_ID" int   NOT NULL,
    "Departments_Name" varchar   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Departments_ID"
     )
);

CREATE TABLE "Titles" (
    "Titles_ID" int   NOT NULL,
    "Title" varchar   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Titles_ID"
     )
);

CREATE TABLE "Salaries" (
    "Employee_ID" int   NOT NULL,
    "Salary" int   NOT NULL
);

CREATE TABLE "Employees_Department" (
    "Employees_ID" int   NOT NULL,
    "Departments_ID" int   NOT NULL
);

CREATE TABLE "Managers_Department" (
    "Employees_ID" int   NOT NULL,
    "Departments_ID" int   NOT NULL
);

CREATE TABLE "Employee_Information" (
    "Employees_ID" int   NOT NULL,
    "Title_ID" int   NOT NULL,
    "Birth_Date" varchar   NOT NULL,
    "First_Name" varchar   NOT NULL,
    "Last_Name" varchar   NOT NULL,
    "Sex" varchar   NOT NULL,
    "Hire_Date" varchar   NOT NULL,
    CONSTRAINT "pk_Employee_Information" PRIMARY KEY (
        "Employees_ID"
     )
);

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Employee_ID" FOREIGN KEY("Employee_ID")
REFERENCES "Employee_Information" ("Employees_ID");

ALTER TABLE "Employees_Department" ADD CONSTRAINT "fk_Employees_Department_Employees_ID" FOREIGN KEY("Employees_ID")
REFERENCES "Employee_Information" ("Employees_ID");

ALTER TABLE "Employees_Department" ADD CONSTRAINT "fk_Employees_Department_Departments_ID" FOREIGN KEY("Departments_ID")
REFERENCES "Departments" ("Departments_ID");

ALTER TABLE "Managers_Department" ADD CONSTRAINT "fk_Managers_Department_Employees_ID" FOREIGN KEY("Employees_ID")
REFERENCES "Employee_Information" ("Employees_ID");

ALTER TABLE "Managers_Department" ADD CONSTRAINT "fk_Managers_Department_Departments_ID" FOREIGN KEY("Departments_ID")
REFERENCES "Departments" ("Departments_ID");

ALTER TABLE "Employee_Information" ADD CONSTRAINT "fk_Employee_Information_Title_ID" FOREIGN KEY("Title_ID")
REFERENCES "Titles" ("Titles_ID");

