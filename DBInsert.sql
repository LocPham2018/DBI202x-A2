use snsDb;

insert into [dbo].[User] ([Name], B_date, Gender, Nation)
values
	('Albert', '1990-11-27', 'Male', 'ENG'),
	('Bettina', '1999-05-03', 'Female', 'FRA'),
	('Charlotte', '1996-12-21', 'Female', 'ESP'),
	('David', '1993-06-11', 'Male', 'USA'),
	('Evangelie', '1995-09-27', 'Female', 'USA'),
	('Rivera', '2002-05-03', 'Male', 'CAN');

insert into [dbo].[Video] (Title, [Description], [User_ID])
values
	('My cats', 'OMG 2 my cat at home the first night!', 1),
	('Mario Maker demo', 'How to create a course', 3),
	('F1 2019 gameplay', null, 3),
	('How Trump not to be president in 2021?', 'How can Trump not to be president for 4 more years, lets find out...', 3),
	('Hicstrid', 'Love journey of hiccup and astrid', 4),
	('PUBG gameplay', null, 4);

insert into [dbo].[Like] ([User_ID], Video_ID)
values
	(1, 2),
	(1, 3),
	(2, 1),
	(2, 5),
	(4, 2),
	(5, 3),
	(6, 6),
	(6, 4);

insert into [dbo].[Share] ([User_ID], Video_ID)
values
	(1, 4),
	(2, 6),
	(2, 3),
	(2, 1),
	(3, 1),
	(5, 6),
	(5, 2),
	(5, 1);

insert into [dbo].[Follow] ([User_ID], Follower_ID)
values
	(2, 4),
	(2, 3),
	(3, 1),
	(5, 3),
	(5, 1),
	(6, 1),
	(6, 3),
	(6, 4);

insert into [dbo].[Comment] ([User_ID], Video_ID, [Note])
values
	(1, 3, 'Great play!'),
	(2, 4, 'Kidding me right?'),
	(1, 6, 'Awesome'),
	(3, 1, 'Cute'),
	(4, 1, 'hahahahah'),
	(4, 4, 'Good point mate!'),
	(3, 5, 'I love toothless'),
	(6, 1, 'What a cat!!!'),
	(5, 2, 'Killin me'),
	(2, 6, 'Well play. How much time can you achieve that?'),
	(5, 5, 'Sweet couple'),
	(5, 6, 'Can we make friends to play together?');