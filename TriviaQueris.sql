--Queries for the trivia project

--Trivia questions insertion

INSERT INTO questions (question_text, answer_a, answer_b, answer_c, answer_d, correct_answer) VALUES
('What is the largest planet in our solar system?', 'Earth', 'Jupiter', 'Saturn', 'Neptune', 'b'),
('Who wrote "To Kill a Mockingbird"?', 'J.K. Rowling', 'F. Scott Fitzgerald', 'Harper Lee', 'Ernest Hemingway', 'c'),
('What is the capital of Japan?', 'Tokyo', 'Beijing', 'Seoul', 'Bangkok', 'a'),
('In which year did World War II end?', '1939', '1941', '1943', '1945', 'd'),
('What is the chemical symbol for water?', 'H2O', 'CO2', 'NaCl', 'O2', 'a'),
('Who painted the Mona Lisa?', 'Pablo Picasso', 'Michelangelo', 'Leonardo da Vinci', 'Vincent van Gogh', 'c'),
('How many continents are there?', '5', '6', '7', '8', 'c'),
('What is the powerhouse of the cell?', 'Nucleus', 'Mitochondria', 'Ribosome', 'Cytoplasm', 'b'),
('Which planet is known as the Red Planet?', 'Venus', 'Jupiter', 'Mars', 'Saturn', 'c'),
('Who discovered penicillin?', 'Alexander Fleming', 'Marie Curie', 'Thomas Edison', 'Albert Einstein', 'a'),
('What is the capital of Canada?', 'Toronto', 'Vancouver', 'Ottawa', 'Montreal', 'c'),
('Which organ pumps blood throughout the human body?', 'Brain', 'Lungs', 'Kidney', 'Heart', 'd'),
('What is the largest mammal in the world?', 'Elephant', 'Great White Shark', 'Blue Whale', 'Giraffe', 'c'),
('Who was the first person to walk on the moon?', 'Yuri Gagarin', 'Neil Armstrong', 'Buzz Aldrin', 'Alan Shepard', 'b'),
('What is the freezing point of water in Celsius?', '100', '32', '0', '-10', 'c'),
('What does “www” stand for in a website browser?', 'World Web Wide', 'World Wide Web', 'Web Wide World', 'Web World Wide', 'b'),
('Which country gifted the Statue of Liberty to the United States?', 'Germany', 'Italy', 'France', 'Spain', 'c'),
('How many colors are in a rainbow?', '5', '6', '7', '8', 'c'),
('Who invented the telephone?', 'Thomas Edison', 'Alexander Graham Bell', 'Nikola Tesla', 'Albert Einstein', 'b'),
('What is the tallest mountain in the world?', 'K2', 'Kangchenjunga', 'Mount Everest', 'Mount Kilimanjaro', 'c');



--Players and admin INSERT

insert into players (username, "password", email, age) values ('Administrator', 'admin', 'admin@gmail.com', 22)
INSERT INTO players (username, "password", email, age) VALUES
('User1', 'password123', 'user1@example.com', 21),
('User2', 'securepass', 'user2@example.com', 25),
('User3', 'mypassword', 'user3@example.com', 19),
('User4', 'pass1234', 'user4@example.com', 28),
('User5', 'qwerty789', 'user5@example.com', 23),
('User6', 'letmein456', 'user6@example.com', 30),
('User7', 'password567', 'user7@example.com', 26),
('User8', 'abc123xyz', 'user8@example.com', 24),
('User9', 'zxcvbn123', 'user9@example.com', 22),
('User10', 'unique1234', 'user10@example.com', 20);



--checkUsername FUNCTION

create or replace function checkUsername(_username text)
--If the username exists, it return TRUE, otherwise FALSE
returns bool 
language plpgsql as $$
DECLARE
	userExists text;
begin 
	select username into userExists from players where username = _username;
	if userExists is not null then 
		return true ;
	else 
		return false ;
end if;		
end;
$$;



--checkEmail FUNCTION

create or replace function checkEmail(_email text)
--If the email exists, it return TRUE, otherwise FALSE
returns bool 
language plpgsql as $$
DECLARE
	emailExists text;
begin 
	select email into emailExists from players where email = _email;
	if emailExists is not null then 
		return true ;
	else 
		return false ;
end if;		
end;
$$;