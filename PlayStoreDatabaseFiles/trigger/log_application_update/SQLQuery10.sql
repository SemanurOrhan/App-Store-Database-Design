CREATE TRIGGER LogApplicationUpdate
ON application
AFTER UPDATE
AS
BEGIN
DECLARE @appID INT;
DECLARE @developerID INT;
DECLARE @updateDate DATETIME;
DECLARE @updateComment VARCHAR(150);
DECLARE @version VARCHAR(10);
    
SELECT 
@appID = INSERTED.appID,
@developerID = INSERTED.developers_developerID,
@updateDate = GETDATE(),
@updateComment = 'Application updated',
@version = 'v' + CAST((SELECT COUNT(*) + 1 FROM appHistory WHERE application_appID = INSERTED.appID) AS VARCHAR)
FROM INSERTED; 
INSERT INTO appHistory (version, updateComment, updateDate, developers_developerID, application_appID)
VALUES (@version, @updateComment, @updateDate, @developerID, @appID);
END;