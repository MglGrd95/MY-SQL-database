INSERT INTO Users
VALUES
	(1, 'bob@bob.com', 'Bob', 'McBobberson'),
	(2, 'billy@bob.com', 'Billy', 'McBobberson');

GO
INSERT INTO Products
VALUES
	(1, 'ShamWow'),
	(2, 'NeverDull Ginsu Knife Set');

GO
INSERT INTO Downloads
VALUES
	(1, 1, getdate(), 'file 1.txt', 2),
	(2, 2, getdate(), 'file 2.txt', 1),
	(3, 2, getdate(), 'file 3.txt', 2);

GO
SELECT u.EmailAddress AS email_address,
	u.FirstName AS first_name,
	u.LastName AS last_name,
	d.DownloadDate AS download_date,
	d.FileName AS filename,
	p.ProductName AS product_name
FROM Downloads d
JOIN Users u
ON u.UserID = d.UserID
JOIN Products p
ON p.ProductID = d.UserID
ORDER BY EmailAddress DESC, ProductName ASC
