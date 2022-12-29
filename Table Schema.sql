create table Titles (
	Title_ID varchar(200) primary key not null,
	Title varchar(200) not null
);

create table Employee_Information (
	Employees_ID int primary key not null,
	Title_ID varchar(200) not null,
	foreign key (Title_ID) references Titles(Title_ID),
	Birth_Date date,
	First_Name varchar(200),
	Last_Name varchar(200),
	Sex varchar(200),
	Hire_Date date
);

create table Departments (
	Departments_ID varchar(200) primary key not null,
	Departments_Name varchar(200)
);
	
create table Employees_Department (
	Employees_ID int not null,
	foreign key (Employees_ID) references Employee_Information(Employees_ID),
	Departments_ID varchar(200) not null,
	foreign key (Departments_ID) references Departments(Departments_ID),
	primary key(Employees_ID, Departments_ID)
);

create table Managers_Department (
	Departments_ID varchar(200) not null,
	foreign key (Departments_ID) references Departments(Departments_ID),
	Employees_ID int not null,
	foreign key (Employees_ID) references Employee_Information(Employees_ID),
	primary key(Employees_ID, Departments_ID)
);

create table Salaries (
	Employees_ID int not null,
	foreign key (Employees_ID) references Employee_Information(Employees_ID),
	Salary int,
	primary key(Employees_ID)
);