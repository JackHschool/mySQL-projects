use studentsports;

CREATE TABLE Student_information
(
StudentID varchar(8) primary key,
First_Name varchar(20),
Last_Name varchar(30),
Student_DOB varchar(8),
Student_email varchar(45),
foreign key(StudentID) references Sport_registration(StudentID)

);

CREATE TABLE Sport_Infomration
(
SportID int primary key,
Sport_Name varchar(20),
Indoor_or_Outdoor ENUM("indoor","outdoor"),
FOREIGN KEY(SportID) references Sport_registration(SportID)
);

CREATE TABLE Sport_registration
(
registID int primary key,
StudentID varchar(8),
SportID  int,
INDEX (StudentID)
);