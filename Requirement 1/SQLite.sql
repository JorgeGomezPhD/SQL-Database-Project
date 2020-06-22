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
--Table 3
CREATE TABLE Activities 
(
  UserID INTEGER NOT NULL,
  Activity VARCHAR, 
  CreatedAt DATETIME NOT NULL,
  UpdatedAt DATETIME NULL,
  FOREIGN KEY (UserID) REFERENCES User (UserID)--UserID from student table
);