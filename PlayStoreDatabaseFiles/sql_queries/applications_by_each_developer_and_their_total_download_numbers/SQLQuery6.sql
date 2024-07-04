SELECT 
d.developerID,
d.name,
d.surname,
a.appName,
a.downloadCount
FROM 
developers d
JOIN 
application a ON d.developerID = a.developers_developerID
ORDER BY 
d.developerID, a.appName;
