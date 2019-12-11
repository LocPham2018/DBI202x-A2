select [Title], [Name] 
from dbo.[User] u
inner join dbo.Video v on u.ID = v.[User_ID];