--Table 1
CREATE TABLE Students
(
  UserID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, --PRIMARY KEY distinguishing unique thing
  FirstName VARCHAR NOT NULL,
  LastName VARCHAR NOT NULL,
  Address VARCHAR NOT NULL,
  CreatedAt DATETIME NOT NULL,
  UpdatedAt DATETIME NULL
);

INSERT INTO Students --myList =  name of list
(
  FirstName, 
  LastName,
  Address,
  CreatedAt
  UpdatedAt
)  
VALUES 
( 'Jorge', 'Chambers', '1 Generic St.',CURRENT_DATE),
( 'Gayle', 'Chambers', '12 Generic St.',CURRENT_DATE),
( 'Gayle', 'Gomez', '123 Generic St.',CURRENT_DATE),
( 'Jorge', 'Chambers', '1234 Generic St.',CURRENT_DATE),
( 'Madison', 'Chambers', '12345 Generic St.',CURRENT_DATE),
( 'Madison', 'Gomez', '12346 Generic St.',CURRENT_DATE),
( 'Gayle', 'Sanders', '12347 Generic St.',CURRENT_DATE),
( 'Javier', 'Smith', '1 Generic Ave.',CURRENT_DATE),
( 'Gayle', 'Smith', '12 Generic Ave.',CURRENT_DATE),
( 'Frank', 'Gomez', '123 Generic Ave.',CURRENT_DATE),
( 'Antonio', 'Dalton', '1234 Generic Ave.',CURRENT_DATE),
( 'Madison', 'Dalton', '12345 Generic Ave.',CURRENT_DATE),
( 'Madison', 'Thomas', '12346 Generic Ave.',CURRENT_DATE),
( 'Greg', 'Sanders', '12347 Generic Ave.',CURRENT_DATE),
( 'JT', 'Adams', '1 Generic Drive',CURRENT_DATE),
( 'Adam', 'Chambers', '12 Generic Drive',CURRENT_DATE),
( 'Gregory', 'Gomez', '123 Generic Drive',CURRENT_DATE),
( 'Jorge', 'Adams', '1234 Generic Drive',CURRENT_DATE),
( 'Madison', 'Adams', '12345 Generic Drive',CURRENT_DATE),
( 'Madison', 'Smith', '12346 Generic Drive',CURRENT_DATE),
( 'Gayle', 'Smith', '12347 Generic Drive',CURRENT_DATE),
( 'Dalton', 'Stong', '11 Generic St.',CURRENT_DATE),
( 'Greg', 'Chambers', '112 Generic St.',CURRENT_DATE),
( 'Toni', 'Gomez', '1123 Generic St.',CURRENT_DATE),
( 'Maria', 'Chambers', '12134 Generic St.',CURRENT_DATE);
SELECT * FROM Students;

--Table 2
CREATE TABLE Grades 
(
  UserID INTEGER NOT NULL,
  Subject VARCHAR NOT NULL, 
  TeacherID VARCHAR PRIMARY KEY NOT NULL,
  Campus VARCHAR NOT NULL,
  Grade INTEGER NOT NULL,
  CreatedAt DATETIME NOT NULL,
  UpdatedAt DATETIME NULL,
  FOREIGN KEY (UserID) REFERENCES User (UserID)--UserID from student table
);
INSERT INTO Grades --grades =  name of list
(UserID, Subject, TeacherID, Campus, Grade, CreatedAt) 
VALUES 
(1, 'Science', 'Jenny Sam', 'Main', 87, CURRENT_DATE),
(3, 'Math', 'James Dane', 'South', 80, CURRENT_DATE),
(5, 'Biology', 'James Sam', 'Southeast', 87, CURRENT_DATE),
(7, 'Science', 'Jenny Dane', 'Main', 83, CURRENT_DATE),
(9, 'Math', 'Greg Dane', 'Main', 88, CURRENT_DATE),
(11, 'Biology', 'John Sam', 'Main', 87, CURRENT_DATE),
(13, 'Science', 'Jenny Smith', 'West', 84, CURRENT_DATE),
(15, 'Math', 'John Smith', 'South', 82, CURRENT_DATE),
(17, 'Biology', 'Gregory Dane', 'Main', 88, CURRENT_DATE),
(19, 'Science', 'Gayle Sam', 'West', 87, CURRENT_DATE);
SELECT * FROM Grades;


--Table 3
CREATE TABLE Activities 
(
  UserID INTEGER NOT NULL,
  Activity VARCHAR, 
  CreatedAt DATETIME NOT NULL,
  UpdatedAt DATETIME NULL,
  FOREIGN KEY (UserID) REFERENCES User (UserID)--UserID from student table
);

INSERT INTO Activities --Activities =  name of list
(UserID, Activity, CreatedAt) 
VALUES 
(1, 'Football', CURRENT_DATE),
(3, 'Vollyball', CURRENT_DATE),
(5, 'Vollyball', CURRENT_DATE),
(7, 'Vollyball', CURRENT_DATE),
(9, 'Vollyball', CURRENT_DATE),
(11, 'Football', CURRENT_DATE),
(13, 'Soccer', CURRENT_DATE),
(15, 'Football', CURRENT_DATE),
(17, 'Football', CURRENT_DATE),
(19, 'Soccer', CURRENT_DATE);
SELECT * FROM Activities;


SELECT Activities.UserID, Activities.activity, Activities.createdat, Students.address, Students.lastname
FROM Students
INNER JOIN Activities ON Students.UserID = Activities.UserID;

SELECT Activities.UserID, Activities.activity, Activities.createdat, Students.address, Students.lastname
FROM ((Students
INNER JOIN Activities ON Students.UserID = Activities.UserID)
INNER JOIN Grades ON Orders.ShipperID = Shippers.ShipperID);

ALTER TABLE Students
ADD Email varchar;

