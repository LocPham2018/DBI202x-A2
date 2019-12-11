select Title, No_of_Cmt
from dbo.Video v
inner join (
	select Video_ID, count(Cmt_ID) as No_of_Cmt
	from dbo.Comment
	group by Video_ID
) t on v.Video_ID = t.Video_ID;