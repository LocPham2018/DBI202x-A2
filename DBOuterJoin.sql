select [Name], count(Title)
from dbo.[User] u
left join dbo.Video v on u.ID = v.[User_ID]
group by [Name];