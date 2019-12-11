--create database
create database snsDb;

--tables
use snsDb;

--table User
create table [dbo].[User] (
	ID int identity(1, 1) primary key,
	[Name] varchar(40) not null,
	B_date date not null,
	Gender varchar(6) not null,
	Nation varchar(15) not null
);

--table Video
create table [dbo].[Video] (
	Video_ID int identity(1, 1) primary key,
	Upload_time datetime default getdate(),
	Title nvarchar(256) not null,
	[Description] nvarchar(max),
	[User_ID] int foreign key references [dbo].[User](ID)
);

--table Like
create table [dbo].[Like] (
	[User_ID] int foreign key references [dbo].[User](ID),
	Video_ID int foreign key references [dbo].[Video](Video_ID),
	constraint PK_Like primary key ([User_ID], Video_ID)
);

--table Share
create table [dbo].[Share] (
	[User_ID] int foreign key references [dbo].[User](ID),
	Video_ID int foreign key references [dbo].[Video](Video_ID),
	Share_time datetime default getdate(),
	constraint PK_Share primary key ([User_ID], Video_ID, Share_time)
);

--table Comment
create table [dbo].[Comment] (
	[User_ID] int foreign key references [dbo].[User](ID),
	Video_ID int foreign key references [dbo].[Video](Video_ID),
	Cmt_ID int identity(1, 1) primary key,
	[Time] datetime default getdate(),
	Note nvarchar(max) not null
);

--table Follow
create table [dbo].[Follow] (
	[User_ID] int foreign key references [dbo].[User](ID),
	Follower_ID int foreign key references [dbo].[User](ID),
	constraint PK_Follow primary key ([User_ID], Follower_ID)
);