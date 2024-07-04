SELECT 
c.categoryName,
COUNT(a.appID) AS applicationCount,
SUM(a.downloadCount) AS totalDownloadCount
FROM 
categories c
JOIN 
application a ON c.categoryID = a.categories_categoryID
GROUP BY 
c.categoryName;
