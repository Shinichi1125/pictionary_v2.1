CREATE TABLE user 
(
	id int AUTO_INCREMENT,
	name varchar(32) NOT NULL,
    own_language varchar(16) NOT NULL,
    target_language varchar(16) NOT NULL,
    country varchar(16),
	email varchar(32) NOT NULL,
	password varchar(256) NOT NULL, 
    image longblob,
    description varchar(255),
	PRIMARY KEY (id),
    UNIQUE KEY (email)
);

INSERT INTO user VALUES (NULL, 'Shinichi', 'English', 'Finnish', 'Japan', 'nextplanehome1988@yahoo.co.jp', 'testpassword', NULL, 'Currently working on Finnish as my 4th language!');
INSERT INTO user VALUES (NULL, 'Test User', 'English', 'Japanese', 'United States', 'testuser@gmail.com', 'testpassword', NULL, 'I want to watch Japanese anime without subtitles!');
INSERT INTO user VALUES (NULL, 'Ismo', 'Finnish', 'English', 'Finland', 'IsmoLeikola@gmail.com', 'testpassword', NULL, 'Suomen tärkein sana on nimenomaan "noni". Siitä pärjää 90% keskustelusta.');
INSERT INTO user VALUES (NULL, 'Gustav', 'Swedish', 'English', 'Sweden', 'gustav.svensson@gmail.com', 'testpassword', NULL, 'Örebro är den bästa i hela världen!');
INSERT INTO user VALUES (NULL, 'Greta', 'Swedish', 'English', 'Sweden', 'greta.franzen@gmail.com', 'testpassword', NULL, 'Det gör inget, Gustav. Min pappa talar illa om dig också.');
INSERT INTO user VALUES (NULL, 'Logo', 'Cantonese', 'Icelandic', 'Hong Kong', 'logo@gmail.com', 'testpassword', NULL, '');
INSERT INTO user VALUES (NULL, 'Ebba', 'Swedish', 'English', 'Sweden', 'ebba.lindstrom@gmail.com', 'testpassword', NULL, 'Tyvärr ska det inte faktiskt bli någon resa...');
INSERT INTO user VALUES (NULL, 'Alex', 'English', 'Swedish', 'United Kingdom', 'alex.armstrong@gmail.com', 'testpassword', NULL, 'Mod ökats hundra gånger, muskler ökats tusen gånger!');
INSERT INTO user VALUES (NULL, 'Test User 2', 'English', 'Swedish', 'Canada', 'testuser2@gmail.com', 'testpassword', NULL, 'At first I thought that learning Swedish would be easy, but I realized that I underestimated it...');
INSERT INTO user VALUES (NULL, 'Test User 3', 'English', 'Finnish', 'Australia', 'testuser3@gmail.com', 'testpassword', NULL, 'I\'ll keep in mind Ismo\'s advice. Whenever I get in trouble, I\'ll just keep saying \'no niin\'.');
INSERT INTO user VALUES (NULL, 'Olivier', 'English', 'Finnish', 'United Kingdom', 'olivier.mira.armstrong@gmail.com', 'testpassword', NULL, 'If my brother can learn Swedish, I should be capable of mastering Finnish, which is way much more challenging. Ha!');

SELECT * FROM user;

#DELETE FROM user WHERE id = 21;

DROP TABLE user;

CREATE TABLE word (
	id int AUTO_INCREMENT,
    user_id int,
    own_lang_word_name varchar(64) NOT NULL,
    target_lang_word_name varchar(64) NOT NULL,
	own_lang_ex_sentence varchar(255),
    target_lang_ex_sentence varchar(255),
    created_date datetime NOT NULL,
    image longblob,
    PRIMARY KEY(id),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES user(id)
);

INSERT INTO word VALUES (NULL, 2, 'write', '書く', 'One of the effective ways to learn is to write', '効果的な勉強法の1つは書く事だ', '2020-6-28 15:00:00', NULL);
INSERT INTO word VALUES (NULL, 2, 'effective', '効果的', 'One of the effective ways to learn is to write', '効果的な勉強法の1つは書く事だ', '2020-6-28 15:05:00', NULL);
INSERT INTO word VALUES (NULL, 3, 'no niin', 'come on', 'No niin, onpas pitkä jono taas', 'Come on, a long queue again?', '2020-6-28 15:05:00', NULL);
INSERT INTO word VALUES (NULL, 4, 'starkare', 'stronger', 'Du är inte världens starkaste björn längre. Med 3 brukar av dunderhonong i magen, nu är jag starkare än starkaste!', 'You are no longer the world\'s strongest bear. With 3 pots of thunder-honey, now I am stronger than the strongest!', '2020-6-28 15:05:00', NULL);
INSERT INTO word VALUES (NULL, 5, 'avancerad', 'advanced', 'Det tar steg för steg för att uppnå den avancerade nivån i språkinlärning', 'It takes step by step to reach the advanced level in language learning', '2020-07-29 22:44:22', NULL);
INSERT INTO word VALUES (NULL, 1, 'grammar', 'kielioppi', 'Finnish grammar is certainly one of the most difficult in the entire world.', 'Suomen kielioppi on varmasti yksi vaikeimmista koko maailmassa.', '2020-07-30 21:51:40', NULL);
INSERT INTO word VALUES (NULL, 3, 'pärjätä', 'to be fine', 'Sanalla "noni" pärjää 90% keskustelusta.', 'With the word "noni" alone you\'ll be fine in 90% of the conversation.', '2020-08-01 15:56:04', NULL);
INSERT INTO word VALUES (NULL, 1, 'settle for', 'tyytyä', 'Bolt settles for the second place.', 'Bolt tyytyy kakkoseksi.', '2020-08-02 10:54:45', NULL);
INSERT INTO word VALUES (NULL, 4, 'jorden', 'the Earth', 'Enligt Muminpappa har planeten Mars en högre utvecklad civilisation än jorden.', 'According to Moominpappa the planet Mars has a more developed civilization than the Earth.', '2020-08-03 11:24:15', NULL);
INSERT INTO word VALUES (NULL, 4, 'osannolik', 'unlikely', 'Det är högt osannolikt att de skulle vilja anfalla andra planeter, enligt den här boken.', 'It\'s highly unlikely that they would want to attack other planets, according to this book.', '2020-08-07 22:32:28', NULL);
INSERT INTO word VALUES (NULL, 4, 'spela in', 'record', 'Spela in? Kalle Anka sänds bara en gång om året och det är nu!', 'Record? Donald Duck is broadcast only once a year, and it\'s now!', '2020-08-25 18:45:52', NULL);
INSERT INTO word VALUES (NULL, 4, 'beredd', 'prepared', 'Du kan inte ta med din pojkvän till New York. Är du verkligen beredd för att lämna ditt vackert land?', 'You cannot ta med your boyfriend to the Big Apple. Are you really prepared to leave your beautiful country?', '2020-09-06 17:36:08', NULL);
INSERT INTO word VALUES (NULL, 8, 'move', 'flytta', 'Sister, could you move your foot?', 'Syster, kunde du flytta din fot?', '2020-09-09 18:37:17', NULL);
INSERT INTO word VALUES (NULL, 11, 'muscle', 'lihas', 'I don\'t understand why Alex loves muscles and showing them off so much.', 'En ymmärrä miksi Alex rakastaa lihaksiaan ja niiden esittelyä niin paljon.', '2020-10-05 09:50:00', NULL);

UPDATE word SET user_id = 6 WHERE id = 22;

SELECT * FROM word;

DELETE FROM word WHERE user_id = 6;

DROP TABLE word;

CREATE TABLE follower_relation
(
	pair_id int NOT NULL AUTO_INCREMENT,
	followee_id int NOT NULL,
    follower_id int NOT NULL,
    PRIMARY KEY(pair_id)
);

# Next time the table is redefined, IDs for follower / following should be 'long' instead of int

INSERT INTO follower_relation VALUES (Null, 2, 1);
INSERT INTO follower_relation VALUES (Null, 1, 2);
INSERT INTO follower_relation VALUES (Null, 1, 3);
INSERT INTO follower_relation VALUES (Null, 1, 4);
INSERT INTO follower_relation VALUES (Null, 2, 5);
INSERT INTO follower_relation VALUES (Null, 4, 1);
INSERT INTO follower_relation VALUES (Null, 7, 1);
INSERT INTO follower_relation VALUES (Null, 8, 1);
INSERT INTO follower_relation VALUES (Null, 8, 2);
INSERT INTO follower_relation VALUES (Null, 5, 2);
INSERT INTO follower_relation VALUES (Null, 1, 8);
INSERT INTO follower_relation VALUES (Null, 2, 8);
INSERT INTO follower_relation VALUES (Null, 8, 3);
INSERT INTO follower_relation VALUES (Null, 8, 4);
INSERT INTO follower_relation VALUES (Null, 3, 7);
INSERT INTO follower_relation VALUES (Null, 2, 8);
INSERT INTO follower_relation VALUES (Null, 2, 1);
INSERT INTO follower_relation VALUES (Null, 8, 1);
INSERT INTO follower_relation VALUES (Null, 7, 1);
INSERT INTO follower_relation VALUES (Null, 11, 8);
INSERT INTO follower_relation VALUES (Null, 11, 1);
INSERT INTO follower_relation VALUES (Null, 1, 11);
INSERT INTO follower_relation VALUES (Null, 3, 10);
INSERT INTO follower_relation VALUES (Null, 3, 1);
INSERT INTO follower_relation VALUES (Null, 11, 10);
INSERT INTO follower_relation VALUES (Null, 4, 9);
INSERT INTO follower_relation VALUES (Null, 8, 9);
INSERT INTO follower_relation VALUES (Null, 1, 5);

SELECT * FROM follower_relation;

#DROP TABLE follower_relation;

CREATE TABLE like_relation
(
	like_id int NOT NULL AUTO_INCREMENT,
	word_id int NOT NULL,
    user_id int NOT NULL,
    PRIMARY KEY(like_id)
);

INSERT INTO like_relation VALUES (Null, 6, 2);
INSERT INTO like_relation VALUES (Null, 6, 3);
INSERT INTO like_relation VALUES (Null, 6, 4);
INSERT INTO like_relation VALUES (Null, 6, 8);
INSERT INTO like_relation VALUES (Null, 12, 1);
INSERT INTO like_relation VALUES (Null, 12, 8);
INSERT INTO like_relation VALUES (Null, 12, 5);
INSERT INTO like_relation VALUES (Null, 13, 1);
INSERT INTO like_relation VALUES (Null, 8, 4);
INSERT INTO like_relation VALUES (Null, 13, 4);
INSERT INTO like_relation VALUES (Null, 5, 4);
INSERT INTO like_relation VALUES (Null, 7, 1);
INSERT INTO like_relation VALUES (Null, 12, 2);
INSERT INTO like_relation VALUES (Null, 6, 4);
INSERT INTO like_relation VALUES (Null, 6, 5);
INSERT INTO like_relation VALUES (Null, 2, 1);
INSERT INTO like_relation VALUES (Null, 14, 1);
INSERT INTO like_relation VALUES (Null, 14, 3);
INSERT INTO like_relation VALUES (Null, 6, 11);
INSERT INTO like_relation VALUES (Null, 6, 10);
INSERT INTO like_relation VALUES (Null, 14, 10);
INSERT INTO like_relation VALUES (Null, 14, 8);

SELECT * FROM like_relation;

#DROP TABLE like_relation;

CREATE TABLE comment
(
	comment_id int NOT NULL AUTO_INCREMENT,
	word_id int NOT NULL,
    user_id int NOT NULL,
    text varchar(255),
    date datetime NOT NULL,
    PRIMARY KEY(comment_id)
);

INSERT INTO comment VALUES (NULL, 6, 3, 'This is not true! Finnish is so easy that I could speak it well even as a child.', '2020-9-27 15:00:00');
INSERT INTO comment VALUES (NULL, 6, 4, 'Den här är exakt den anledningen jag inte vill lära mig finska. Ha!', '2020-9-27 18:00:00');
INSERT INTO comment VALUES (NULL, 6, 1, 'Well, this image might be a bit too exaggerated, but Finnish is certainly hard to learn!', '2020-9-28 20:00:00');
INSERT INTO comment VALUES (NULL, 6, 5, 'Det spelar ingen roll, Gustav. Du är ju dålig på alla språk i alla fall.', '2020-9-28 20:05:00');
INSERT INTO comment VALUES (NULL, 6, 8, 'Svårigheten ökats tio gånger!', '2020-9-30 15:05:25');
INSERT INTO comment VALUES (NULL, 12, 5, 'Du glömde att översätta \'ta med\' till engelska.', '2020-10-1 19:45:17');
INSERT INTO comment VALUES (NULL, 1, 1, 'ブログやったら書く練習にもなるし、うまくいけば稼げますね！一石二鳥です！', '2020-10-04 12:30:09');
INSERT INTO comment VALUES (NULL, 6, 1, 'Finska inlärning kräver tre gånger mer tid än svenska!', '2020-10-05 06:57:39');
INSERT INTO comment VALUES (NULL, 1, 2, 'そうですね、頑張ってまずは0を1にしたいです！', '2020-10-05 07:03:23');
INSERT INTO comment VALUES (NULL, 14, 8, 'Sister, building muscles is important! It\'s my passion!', '2020-10-05 10:12:01');
INSERT INTO comment VALUES (NULL, 14, 11, 'Why do you have to show them off???', '2020-10-05 10:13:12');

SELECT * FROM comment;

DROP TABLE comment;
