SELECT 
a.appName,
ah.version,
ah.updateDate
FROM 
application a
JOIN 
appHistory ah ON a.appID = ah.application_appID
ORDER BY 
ah.updateDate DESC;
