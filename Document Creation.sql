
CREATE TABLE dbo.Document
(
	Id INT PRIMARY KEY IDENTITY,
	Name VARCHAR(20) NOT NULL
);

CREATE TABLE dbo.FieldType
(
	Id INT PRIMARY KEY IDENTITY,
	Name VARCHAR(20) NOT NULL
);

CREATE TABLE dbo.Field
(
	Id INT PRIMARY KEY IDENTITY,
	Name VARCHAR(20) NOT NULL,
	FieldTypeId INT NOT NULL,
);

ALTER TABLE dbo.Field ADD CONSTRAINT fk_Field_FieldTypeId_Field_FieldTypeId FOREIGN KEY (FieldTypeId) REFERENCES dbo.FieldType(Id);

CREATE TABLE dbo.DocumentField
(
	Id INT PRIMARY KEY IDENTITY,
	DocumentId INT NOT NULL,
	FieldId INT NOT NULL,
);

ALTER TABLE dbo.DocumentField ADD CONSTRAINT fk_DocumentField_FieldId_Field_Id FOREIGN KEY (FieldId) REFERENCES dbo.Field(Id);

ALTER TABLE dbo.DocumentField ADD CONSTRAINT fk_DocumentField_DocumentId_Document_Id FOREIGN KEY (DocumentId) REFERENCES dbo.Document(Id);


