CREATE PROCEDURE ListApplicationsByCategory
@CategoryID INT
AS
BEGIN
SELECT 
a.appID,
a.appName,
a.description,
a.downloadCount,
a.releaseDate
FROM 
application a
WHERE 
a.categories_categoryID = @CategoryID;
END;
