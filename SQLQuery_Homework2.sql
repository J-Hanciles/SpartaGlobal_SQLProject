DROP TABLE Spartans_Engineering26

CREATE TABLE Spartans_Engineering26 (
    title VARCHAR (255),
    first_name VARCHAR (255),
    last_name VARCHAR (255),
    sex CHAR (255),
    university_attended VARCHAR (255),
    course_studied VARCHAR (255),
    mark_attained VARCHAR (255),
    laptop_code VARCHAR (255),
    catchphrase VARCHAR (255)

);

INSERT INTO Spartans_Engineering26
(
    title, first_name, last_name, sex, university_attended, course_studied, mark_attained, laptop_code, catchphrase
)
VALUES
(
    'Mr', 'Jerome', 'Hanciles', 'yes', 'Middlesex University', '3D Animation and Games', 'Third', 'TechW98', 'Bruh'
),
(
    'Mr', 'Rahib', 'Sayed', 'not assumed', 'Westminister University', 'Computer Science', '2:2', 'TechW70', 'Dunno'
),
(
    'Mr', 'Tevin', 'Muparadzi', 'm', 'Middlesex University', 'Biomedical Engineering', '2:1', 'TechW93', 'I see what you saying, I see what you saying, I see what you sayiiiing'
),
(
    'Mr', 'Thomas', 'Dam', 'm', 'Keele University', 'Psychology', '2:1', 'TechW83', 'You played Apex Legends yet?'
),
(
    'Mr', 'Sulman', 'Malik', 'm', 'Don''t Worry About it', 'Don''t Worry About it', 'Don''t Worry About it', 'Don''t Worry About it', 'Don''t Worry About it'
),
(
    'Mr', 'Matthew', 'Shaw', 'm', 'Exeter', 'Computer Science', '2:1', 'TechW100', 'Well that is your opinion BUT'
),
(
    'Miss', 'Mishu', 'Jashar', 'f', 'Queen Mary University of London', 'Mathematics', 'First', 'TechW96', 'I''m not really sure'
),
(
    'Miss', 'Faduma', 'Hussein', 'f', 'St George''s University of London', 'Biomedical Science', '2:2', 'TechW94', 'How did you do with the homework?'
),
(
    'Miss', 'Yolanda', 'Simpson', 'f', 'University of Northhampton', 'Computing (Computer Systems Engineering)', '2:1', 'TechW99', 'Hee hee hee'
),
(
    'Miss', 'Rume', 'Rhuada', 'f', 'Coventry University', 'Medical and Pharmacological Science', '2:2', 'TechW86', 'Hey Guys'
)
;