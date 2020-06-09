CREATE TABLE [dbo].[Table]
(
	[ideaID] CHAR(10) NOT NULL PRIMARY KEY, 
    [ideaTitle] VARCHAR(50) NOT NULL, 
    [thumbnail] VARCHAR(MAX) NULL, 
    [imgCaption] VARCHAR(50) NOT NULL, 
    [ideaDescription] VARCHAR(MAX) NOT NULL, 
    [category] VARCHAR(50) NOT NULL, 
    [toDo] BIT NOT NULL
)
