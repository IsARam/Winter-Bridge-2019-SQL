
#Relationship Type
#A many-to-many relationship is a type of cardinality that refers to the relationship between two entities[1] A and B in which A may contain a parent instance for which there are many children in B and vice versa. 

#Create and populate table
create table Groups (GroupName varchar(100), Room varchar(100));
create table Users (EmpName varchar(100), GroupName varchar(100));

insert into Groups values('I.T.', '101');
insert into Groups values('I.T.', '102');
insert into Groups values('Sales', '102');
insert into Groups values('Sales', 'Auditorium A');
insert into Groups values('Administration', 'No Access');
insert into Groups values('Operations', null);
insert into Groups values(null, 'Auditorium B');

insert into Users values('Modesto', 'I.T.');
insert into Users values('Ayine', 'I.T.');
insert into Users values('Christopher', 'Sales');
insert into Users values('Cheong', 'Sales');
insert into Users values('Saulat', 'Administration');
insert into Users values('Heidy', null);
insert into Users values(null,'Operations');

#Question 1
SELECT * FROM Assignment3.Users
where groupname is not null;

#or
select distinct Groups.groupName, Users.EmpName
From Groups
Left Join Users on Groups.GroupName = Users.GroupName
where Groups.groupname is not null
Order by Groups.groupname;

#Question 2
SELECT * FROM Assignment3.Groups
where room is not null;

#or
select distinct Groups.Room, Users.GroupName
From Users
Right Join Groups on Groups.GroupName = Users.GroupName
where Groups.Room <>'No Access' and Groups.Room is not null 
Order by Groups.room;

#Question 3
select Users.EmpName, Users.GroupName,Groups.Room
from Users, Groups
where Users.groupname=Groups.groupname AND Users.EmpName is not Null
order by Users.empname,Users.groupname,Groups.room;