CREATE TABLE TestTable
   (Col1 int IDENTITY,
    Col2 varchar(50),
    Col3 int);  

CREATE PROCEDURE UpdateTestTable  
   @Col2 varchar(50),  
   @Col3 int  
AS  
BEGIN  
   UPDATE TestTable  
   SET Col2 = @Col2, Col3 = @Col3  
END;  
INSERT INTO dbo.TestTable (Col2, Col3) VALUES ('b', 10);