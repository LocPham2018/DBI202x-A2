select Title, count(Cmt_ID)
from dbo.Video v
left join dbo.Comment c on v.Video_ID = c.Video_ID
group by Title
having count(Cmt_ID) > 1;