ALTER TABLE Users
ALTER COLUMN FirstName VARCHAR(20) not null;

USE MyWebDB;
update Users
SET FirstName = null
WHERE UserID = 1;

USE MyWebDB;
update Users
SET FirstName = '123456789012345678901'
WHERE UserID = 1;