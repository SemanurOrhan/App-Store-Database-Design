CREATE PROCEDURE ListCommentsByApplication
@AppID INT
AS
BEGIN
SELECT 
c.comID,
c.raiting,
c.c_text,
c.commentDate,
u.userID,
u.name,
u.surname,
u.eMail
FROM 
comments c
JOIN 
users u ON c.users_userID = u.userID
WHERE 
c.application_appID = @AppID;
END;
