

CREATE TABLE dbo.[User]
(
  Id INT PRIMARY KEY IDENTITY,
  Name VARCHAR(100) NOT NULL,
  Password VARCHAR(100) NOT NULL,
  RoleName VARCHAR(100) NULL,
  EmailId VARCHAR(100) NULL,
  LoggedIn INT NOT NULL DEFAULT 0
);


/***** Sample Data *****/
INSERT INTO dbo.[User] (Name, Password, RoleName, EmailId) VALUES ('Batman', 'Wayne', 'admin', 'ceo@wayne.tech');
INSERT INTO dbo.[User] (Name, Password, RoleName, EmailId) VALUES ('admin', 'admin', 'admin', 'admin@gmail.com');
INSERT INTO dbo.[User] (Name, Password, RoleName, EmailId) VALUES ('user', 'user', 'user', 'user@gmail.com');

select * from [User];
