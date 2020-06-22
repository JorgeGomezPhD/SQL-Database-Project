SELECT Activities.UserID, Activities.activity, Activities.createdat, Students.address, Students.lastname, Grades.Subject, Grades.Grade
FROM ((Students
INNER JOIN Activities ON Students.UserID = Activities.UserID)
INNER JOIN Grades ON Students.UserID = Grades.UserID);