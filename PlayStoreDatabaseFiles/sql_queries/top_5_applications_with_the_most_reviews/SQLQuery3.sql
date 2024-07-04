SELECT 
a.appName,
COUNT(c.comID) AS commentCount
FROM 
application a
JOIN 
comments c ON a.appID = c.application_appID
GROUP BY 
a.appName
ORDER BY 
commentCount DESC
LIMIT 5;
