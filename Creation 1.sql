CREATE TABLE dbo.DD_Role
(
  Id INT PRIMARY KEY IDENTITY,
  Name VARCHAR(20) NOT NULL
);

select * from dbo.DD_Role;



CREATE TABLE dbo.DD_User
(
  Id INT PRIMARY KEY IDENTITY,
  Name VARCHAR(100) NOT NULL,
  Password VARCHAR(100) NOT NULL,
  RoleId INT NOT NULL,
  EmailId VARCHAR(100) NULL,
  LoggedIn INT NOT NULL DEFAULT 0
);

ALTER TABLE dbo.DD_User ADD CONSTRAINT fk_DD_User_RoleId_DD_Role_Id FOREIGN KEY (RoleId) REFERENCES dbo.DD_Role(Id)

select * from DD_User;


/***** Sample Data *****/
INSERT INTO dbo.DD_Role (Name) VALUES ('admin');
INSERT INTO dbo.DD_Role (Name) VALUES ('user');

INSERT INTO dbo.DD_User (Name, Password, RoleId, EmailId) VALUES ('Batman', 'Wayne', 1, 'ceo@wayne.tech');
INSERT INTO dbo.DD_User (Name, Password, RoleId, EmailId) VALUES ('admin', 'admin', 2, 'admin@gmail.com');
INSERT INTO dbo.DD_User (Name, Password, RoleId, EmailId) VALUES ('user', 'user', 2, 'user@gmail.com');
