CREATE TABLE Downloads (
	DownloadID INT NOT NULL,
	UserID INT NOT NULL,
	FileName INT NOT NULL,
	ProductID INT NOT NULL,
	PRIMARY KEY (DownloadID),
	FOREIGN KEY (UserID) REFERENCES Users (UserID),
	FOREIGN KEY (ProductID) REFERENCES Products (ProductID)
	);