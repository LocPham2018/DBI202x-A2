select Name from dbo.[User]
where Gender = 'Male' and (Nation like '%A' or Nation like '%A%');