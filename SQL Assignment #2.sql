#Question 1

use assignment2;
create table Videos (ID int, Tile varchar(100), Length time, URL varchar(500));
insert into Videos values(1, 'MySQL Tutorial Create table insert and select in workbench', '06:18', 'https://www.youtube.com/watch?=-RrfsIPy4uE');
insert into Videos values(2, 'MySQL Tutorial', '41:09:00', 'https://www.youtube.com/watch?v=yPu6qV5byu4');
insert into Videos values(3, 'Create MySQL Database - MySQL Workbench Tutorial', '17:14:00', 'https://www.youtube.com/watch?v=K6w0bZjl_Lw');

#Question 2

use assignment2;
create table Reviewers (ID int, Users_Name varchar(100), Rating int, Review varchar(500));

insert into Reviewers values (1, 'Isabel', 5,'Exactly what I needed to solve homework');
insert into Reviewers values (1, 'Kish', 5,'Good');
insert into Reviewers values (2, 'Jane', 3,'Ok');
insert into Reviewers values (2, 'John', 1,'Annoying voice');
insert into Reviewers values (3, 'Tom', 4,'Nice video');
insert into Reviewers values (3, 'Tara', 5,'Perfect');

#Question 3
SELECT Videos.ID, Videos.Tile, Videos.Length, Videos.URL, Reviewers.Users_Name, Reviewers.Rating, Reviewers.Review
From Videos
Inner Join Reviewers on Videos.ID=Reviewers.ID;