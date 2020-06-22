SELECT Activities.UserID, Activities.activity, Activities.createdat, Students.address, Students.lastname
FROM Students
INNER JOIN Activities ON Students.UserID = Activities.UserID;