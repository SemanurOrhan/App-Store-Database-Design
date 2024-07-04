SELECT 
u.userID,
u.name,
u.surname,
a.appName
FROM 
users u
JOIN 
comments c ON u.userID = c.users_userID
JOIN 
application a ON c.application_appID = a.appID
ORDER BY 
u.userID, a.appName;
