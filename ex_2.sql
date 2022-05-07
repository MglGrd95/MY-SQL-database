CREATE TABLE Users
(UserID			INT			not null PRIMARY KEY,
EmailAddress		VARCHAR(50)		null,
FirstName		VARCHAR(50)		null,
LastName		VARCHAR(50)		null);

CREATE TABLE Products
(ProductID		INT			not null PRIMARY KEY,
ProductName		varchar(50)		null);

CREATE TABLE Downloads
(DownloadID		INT			not null PRIMARY KEY,
UserID			INT			not null REFERENCES Users (UserID),
DownloadDate		smalldatetime		null,
FileName		varchar(50)		null,
ProductID		INT		not null REFERENCES Products (ProductID));

CREATE INDEX IX_Downloads_UserID
ON Downloads (UserID);
CREATE INDEX IX_Downloads_ProductID
ON Downloads (ProductID);