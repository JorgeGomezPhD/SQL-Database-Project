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