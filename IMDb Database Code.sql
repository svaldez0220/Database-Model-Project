DROP TABLE Person CASCADE CONSTRAINTS;
DROP TABLE Multimedia CASCADE CONSTRAINTS;
DROP TABLE Review CASCADE CONSTRAINTS;
DROP TABLE Showing CASCADE CONSTRAINTS;
DROP TABLE Cast_In CASCADE CONSTRAINTS;
DROP TABLE Appears_In CASCADE CONSTRAINTS;
DROP TABLE Voice_In CASCADE CONSTRAINTS;
DROP TABLE Theater CASCADE CONSTRAINTS;
DROP TABLE Individual_Award CASCADE CONSTRAINTS;
DROP TABLE Publicity_Listings CASCADE CONSTRAINTS;
DROP TABLE Children CASCADE CONSTRAINTS;
DROP TABLE Quotes CASCADE CONSTRAINTS;
DROP TABLE Trademarks CASCADE CONSTRAINTS;
DROP TABLE Show_Times CASCADE CONSTRAINTS;
DROP TABLE Genres CASCADE CONSTRAINTS;
DROP TABLE Languages CASCADE CONSTRAINTS;
DROP TABLE Production_Companies CASCADE CONSTRAINTS;

CREATE TABLE Person(
P_ID       		VARCHAR2(12) CONSTRAINT Person_ID_PK PRIMARY KEY,
F_Name       	VARCHAR2(20),
L_Name       	VARCHAR2(20),
Birth_City         	VARCHAR2(17),
Birth_Country       	CHAR(2),
Birth_Date       	DATE,
SpouseF_Name       	VARCHAR2(20),
SpouseL_Name       	VARCHAR2(20),
D_Flag       	CHAR(1),
S_Flag       	CHAR(1));

CREATE TABLE Multimedia(
M_ID       		VARCHAR2(12) CONSTRAINT Multimedia_ID_PK PRIMARY KEY,
Title       		VARCHAR2(40),
Year       		NUMBER(4),
Rating       	VARCHAR2(4),
Origin_Country       	VARCHAR2(15),
Storyline       	VARCHAR2(400),
M_Flag       	CHAR(1),
Runtime       	NUMBER(3),
Gross_Earned       	NUMBER(10),
Dir_ID		VARCHAR2(12),
TV_Flag       	CHAR(1),
Num_episodes 	NUMBER(3),
VG_Flag       	CHAR(1));

CREATE TABLE Review(
Movie_ID       	VARCHAR2(12),
Review_ID       	VARCHAR2(12),
UserName       	VARCHAR2(25),
Score         	NUMBER(2),
Description       	VARCHAR2(300),
Post_Date       	DATE,
Thumbs_Up       	NUMBER(6),
Thumbs_Down       	NUMBER(6),
CONSTRAINT Review_movie_id_review_id_pk PRIMARY KEY(Movie_ID, Review_ID));

CREATE TABLE Showing(
Theater_name	VARCHAR2(50),
Movie_ID		VARCHAR2(12),
CONSTRAINT Showing_pk PRIMARY KEY(Theater_name, Movie_ID));

CREATE TABLE Cast_In(
Star_ID		VARCHAR2(12),
Movie_ID		VARCHAR2(12),
CONSTRAINT Cast_In_pk PRIMARY KEY(Star_ID, Movie_ID));

CREATE TABLE Appears_In(
Star_ID		VARCHAR2(12),
TV_ID		VARCHAR2(12),
CONSTRAINT Appears_In_pk PRIMARY KEY(Star_ID, TV_ID));

CREATE TABLE Voice_In(
Star_ID		VARCHAR2(12),
VG_ID		VARCHAR2(12),
CONSTRAINT Voice_In_pk PRIMARY KEY(Star_ID, VG_ID));

CREATE TABLE Theater(
Name		VARCHAR(50) CONSTRAINT theater_name_pk PRIMARY KEY,
Phone_Number   	NUMBER(10),
Street		VARCHAR(50),
State 		CHAR(2),
Zip		CHAR(5));

CREATE TABLE Individual_Award(
A_Name		VARCHAR(35),
Category		VARCHAR(100),
Year		NUMBER(4),
Street		VARCHAR(50),
State		CHAR(2),
Zip		CHAR(5),
Star_ID		VARCHAR2(12),
CONSTRAINT Award_name_category_year_pk PRIMARY KEY(A_Name, Category, Year));

CREATE TABLE Publicity_Listings(
Person_ID              	VARCHAR2(12),
Listing_Name          	VARCHAR2(100),
CONSTRAINT Pub_list_id_name_pk PRIMARY KEY(Person_ID, Listing_Name));

CREATE TABLE Children(
Person_ID               	VARCHAR2(12),
ChildF_name           	VARCHAR2(20),
ChildL_name           	VARCHAR2(20),
CONSTRAINT Child_id_fname_lname_pno_pk PRIMARY KEY(Person_ID, ChildF_name, ChildL_name));

CREATE TABLE Quotes(
Star_ID                 	VARCHAR2(12),
Quote_String         	VARCHAR2(400),
CONSTRAINT Quotes_s_id_str_pk PRIMARY KEY(Star_ID, Quote_String));

CREATE TABLE Trademarks(
Director_ID              VARCHAR2(12),
Trademark_String     VARCHAR2(100),
CONSTRAINT Trademark_d_id_str_pk PRIMARY KEY(Director_ID, Trademark_String));

CREATE TABLE Show_Times(
Th_Name		VARCHAR2(50),
Time		VARCHAR(50),
ST_Date		DATE,
CONSTRAINT Show_time_date_pk PRIMARY KEY(Th_Name, Time, ST_Date));

CREATE TABLE Genres(
MM_ID		VARCHAR2(12),
Genre_Name	VARCHAR2(50),
CONSTRAINT Genres_mm_id_genre_name_pk PRIMARY KEY(MM_ID, Genre_Name));

CREATE TABLE Languages(
MM_ID		VARCHAR2(12),
Lang		VARCHAR2(50),
CONSTRAINT Languages_mm_id_lang_pk PRIMARY KEY(MM_ID, Lang));

CREATE TABLE Production_Companies(
MM_ID		VARCHAR2(12),
Company_Name	VARCHAR2(80),
CONSTRAINT Prod_comp_mm_id_comp_name_pk PRIMARY KEY(MM_ID, Company_Name));

INSERT INTO Multimedia
VALUES ('tt0111161', 'The Shawshank Redemption', 1994, 'R', 'United States', 'Chronicles the experiences of a formerly successful banker as a prisoner in the gloomy jailhouse of Shawshank after being found guilty of a crime he did not commit.', 'Y', 142, 28817291, 'nm0001104', 'N', NULL, 'N');

INSERT INTO Multimedia
VALUES ('tt0068646', 'The Godfather', 1972, 'R', 'United States', 'The Godfather Don Vito Corleone is the head of the Corleone mafia family in New York.', 'Y', 175, 246120986, 'nm000033', 'N', NULL, 'N');

INSERT INTO Multimedia
VALUES ('tt0468569', 'The Dark Knight', 2008, 'PG13', 'United States', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'Y', 152, 1005973645, 'nm0634240', 'N', NULL, 'N');

INSERT INTO Multimedia
VALUES ('tt0050083', '12 Angry Men', 1957, 'NR', 'United States', 'The jury in a New York City murder trial is frustrated by a single member whose skeptical caution forces them to more carefully consider the evidence before jumping to a hasty verdict.', 'Y', 96, 955, 'nm0001486', 'N', NULL, 'N');

INSERT INTO Multimedia
VALUES ('tt0108052', 'Schindlers List', 1993, 'R', 'United States', 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.', 'Y', 195, 322161245, 'nm0000229', 'N', NULL, 'N');

INSERT INTO Multimedia
VALUES ('tt0110912', 'Pulp Fiction', 1994, 'R', 'United States', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.', 'Y', 148, 213928762, 'nm0000233', 'N', NULL, 'N');

INSERT INTO Multimedia
VALUES ('tt1375666', 'Inception', 2010, 'PG13', 'United States', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'Y', 154, 836836967, 'nm0634240', 'N', NULL, 'N');

INSERT INTO Multimedia
VALUES ('tt0099685', 'Goodfellas', 1990, 'R', 'United States', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.', 'Y', 146, 46963277, 'nm0000217', 'N', NULL, 'N');

INSERT INTO Multimedia
VALUES ('tt0114369', 'Se7en', 1990, 'R', 'United States', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.', 'Y', 127, 327333559, 'nm0000399', 'N', NULL, 'N');

INSERT INTO Multimedia
VALUES ('tt6751668', 'Parasite', 2019, 'R', 'South Korea', 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.', 'Y', 132, 258668626, 'nm0094435', 'N', NULL, 'N');

INSERT INTO Multimedia
VALUES ('tt4154756', 'Avengers: Infinity War', 2018, 'PG13', 'United States', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', 'Y', 149, 2048359754, 'nm0751577', 'N', NULL, 'N');

INSERT INTO Multimedia
VALUES ('tt7131622', 'Once Upon a Time... In Hollywood', 2019, 'R', 'United States', 'A faded television actor and his stunt double strive to achieve fame and success in the final years of Hollywoods Golden Age in 1969 Los Angeles.', 'Y', 161, 374565754, 'nm0000233', 'N', NULL, 'N');

INSERT INTO Multimedia
VALUES ('tt4975722', 'Moonlight', 2016, 'R', 'United States', 'A young African-American man grapples with his identity and sexuality while experiencing the everyday struggles of childhood, adolescence, and burgeoning adulthood.', 'Y', 111, 65336603, 'nm1503575', 'N', NULL, 'N');

INSERT INTO Multimedia
VALUES ('tt0119217', 'Good Will Hunting', 1997, 'R', 'United States', 'Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.', 'Y', 126, 225933435, 'nm0001814', 'N', NULL, 'N');

INSERT INTO Multimedia
VALUES ('tt2096673', 'Inside Out', 2015, 'PG', 'United States', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.', 'Y', 95, 225933435, 'nm0230032', 'N', NULL, 'N');

INSERT INTO Multimedia
VALUES ('tt3398228', 'Bojack Horseman', 2014, 'TVMA', 'United States', 'BoJack Horseman was the star of the hit television show "Horsin Around" in the 80s and 90s, but now hes washed up, living in Hollywood, complaining about everything, and wearing colorful sweaters.', 'N', NULL, NULL, NULL, 'Y', 77, 'N');

INSERT INTO Multimedia
VALUES ('tt0903747', 'Breaking Bad', 2008, 'TVMA', 'United States', 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his familys future.', 'N', NULL, NULL, NULL, 'Y', 62, 'N');

INSERT INTO Multimedia
VALUES ('tt10160804', 'Hawkeye', 2021, 'TV14', 'United States', 'Series based on the Marvel Comics superhero Hawkeye, centering on the adventures of Young Avenger, Kate M. Bishop, who took on the role after the original Avenger, Clint Barton.', 'N', NULL, NULL, NULL, 'Y', 6, 'N');

INSERT INTO Multimedia
VALUES ('tt10986410', 'Ted Lasso', 2020, 'TVMA', 'United States', 'American college football coach Ted Lasso heads to London to manage AFC Richmond, a struggling English Premier League soccer team.', 'N', NULL, NULL, NULL, 'Y', 23, 'N');

INSERT INTO Multimedia
VALUES ('tt0386676', 'The Office', 2005, 'TV14', 'United States', 'A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.', 'N',  NULL, NULL, NULL, 'Y', 188, 'N');

INSERT INTO Multimedia
VALUES ('tt0098904', 'Seinfeld', 1989, 'TV14', 'United States', 'The continuing misadventures of neurotic New York City stand-up comedian Jerry Seinfeld and his equally neurotic New York City friends.', 'N', NULL, NULL, NULL, 'Y', 173, 'N');

INSERT INTO Multimedia
VALUES ('tt8772296', 'Euphoria', 2019, 'TVMA', 'United States', 'A look at life for a group of high school students as they grapple with issues of drugs, sex, and violence.', 'N', NULL, NULL, NULL, 'Y', 16, 'N');

INSERT INTO Multimedia
VALUES ('tt0141842', 'The Sopranos', 1999, 'TVMA', 'United States', 'New Jersey mob boss Tony Soprano deals with personal and professional issues in his home and business life that affect his mental state, leading him to seek professional psychiatric counseling.', 'N', NULL, NULL, NULL, 'Y', 86, 'N');

INSERT INTO Multimedia
VALUES ('tt0306414', 'The Wire', 2002, 'TVMA', 'United States', 'The Baltimore drug scene, as seen through the eyes of drug dealers and law enforcement.', 'N', NULL, NULL, NULL, 'Y', 60, 'N');

INSERT INTO Multimedia
VALUES ('tt10919420', 'Squid Game', 2021, 'TVMA', 'South Korea', 'Hundreds of cash-strapped players accept a strange invitation to compete in childrens games. Inside, a tempting prize awaits with deadly high stakes. A survival game that has a whopping 45.6 billion-won prize at stake.', 'N', NULL, NULL, NULL, 'Y', 10, 'N');

INSERT INTO Multimedia
VALUES ('tt14844718', 'Marvels Guardians of the Galaxy', 2021, 'T', 'United States', 'After an epic conflict known as the Galactic War swept through the cosmos. Star-Lord recently formed the Guardians of the Galaxy, theyve been together for less than a year.', 'N', NULL, NULL, NULL, 'N', NULL, 'Y');

INSERT INTO Multimedia
VALUES ('tt0383385', 'Grand Theft Auto: San Andreas', 2004, 'M', 'United States', 'A family tragedy prompts gangster Carl "CJ" Johnson to return home, only to find it overrun by crime and corruption, which he must regain control of the streets before it gets even worse.', 'N', NULL, NULL, NULL, 'N', NULL, 'Y');

INSERT INTO Multimedia
VALUES ('tt6161168', 'Red Dead Redemption II', 2018, 'M', 'United States', 'Amidst the decline of the Wild West at the turn of the 20th century, outlaw Arthur Morgan and his gang struggle to cope with the loss of their way of life.', 'N', NULL, NULL, NULL, 'N', NULL, 'Y');

INSERT INTO Multimedia
VALUES ('tt9437014', 'Halo: Infinite', 2021, 'M', 'United States', 'When all hope is lost and humanitys fate hangs in the balance, Master Chief is ready to confront the most ruthless foe hes ever faced.', 'N', NULL, NULL, NULL, 'N', NULL, 'Y');

INSERT INTO Multimedia
VALUES ('tt12693278', 'Far Cry 6', 2021, 'M', 'Canada', 'As dictator of Yara, Anton Castillo is intent on restoring his nation back to its former glory by any means, with his son, Diego, following in his bloody footsteps.', 'N', NULL, NULL, NULL, 'N', NULL, 'Y');

INSERT INTO Multimedia
VALUES ('tt5807606', 'Death Stranding', 2019, 'M', 'Japan', 'Deliveryman Sam Porter must travel across a ravaged wasteland and reconnect the city states of America formed after a mysterious apocalyptic event dubbed "death stranding" left the world in ruins and plagued by supernatural tar creatures.', 'N', NULL, NULL, NULL, 'N', NULL, 'Y');

INSERT INTO Multimedia
VALUES ('tt6298000', 'The Last of Us: Part II', 2020, 'M', 'United States', 'Five years after the events of The Last of Us, Ellie embarks on another journey through a post-apocalyptic America on a mission of vengeance against a mysterious militia.', 'N', NULL, NULL, NULL, 'N', NULL, 'Y');

INSERT INTO Multimedia
VALUES ('tt3810192', 'Cyberpunk 2077', 2020, 'M', 'Poland', 'In Night City, a mercenary known as V navigates a dystopian society in which the line between humanity and technology becomes blurred.', 'N', NULL, NULL, NULL, 'N', NULL, 'Y');

INSERT INTO Multimedia
VALUES ('tt5807780', 'Spider-Man', 2018, 'T', 'United States', 'When a new villain threatens New York City, Peter Parker and Spider-Mans worlds collide. To save the city and those he loves, he must rise up and be greater.', 'N', NULL, NULL, NULL, 'N', NULL, 'Y');

INSERT INTO Multimedia
VALUES ('tt4044024', 'Horizon Zero Dawn', 2017, 'T', 'United States', 'In a primitive tribal world where strange, monstrous, animalistic machines roam the wilderness, a brave young female warrior goes on a quest to learn the truth about her mysterious origin and the state the world is in.', 'N', NULL, NULL, NULL, 'N', NULL, 'Y');

INSERT INTO Person
VALUES ('nm0230032', 'Pete', 'Docter', 'Bloomington', 'US', '09-October-1968', 'NULL', 'NULL', 'Y', 'N');

INSERT INTO Person
VALUES ('nm0751577', 'Anthony', 'Russo', 'Cleveland', 'US', '03-February-1970', 'NULL', 'NULL', 'Y', 'N');

INSERT INTO Person
VALUES ('nm0001486', 'Sidney', 'Lumet', 'Philadelphia', 'US', '25-June-1924', 'NULL', 'NULL', 'Y', 'N');

INSERT INTO Person
VALUES ('nm0001104', 'Frank', 'Darabont', 'Montbeliard', 'FR', '28-January-1959', 'NULL', 'NULL', 'Y', 'N');

INSERT INTO Person
VALUES ('nm0001814', 'Gus', 'Van Sant', 'Louisville', 'US', '24-July-1952', 'NULL', 'NULL', 'Y', 'N');

INSERT INTO Person
VALUES ('nm1503575', 'Barry', 'Jenkins', 'Miami', 'US', '19-November-1979', 'NULL', 'NULL', 'Y', 'N');

INSERT INTO Person
VALUES ('nm0000151', 'Morgan', 'Freeman', 'Memphis', 'US', '01-June-1937', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0000008', 'Marlon', 'Brando', 'Omaha', 'US', '03-April-1924', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm000033', 'Francis Ford', 'Coppola', 'Detroit', 'US', '07-April-1939', 'Eleanor', 'Coppola', 'Y', 'N');

INSERT INTO Person
VALUES ('nm000028', 'Christian', 'Bale', 'Pembrokeshire', 'UK', '30-January-1974', 'Sibi', 'Blazic', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0634240', 'Christopher', 'Nolan', 'London', 'UK', '30-July-1970', 'Emma', 'Thomas', 'Y', 'N');

INSERT INTO Person
VALUES ('nm0000020', 'Henry', 'Fonda', 'Grand Island', 'US', '16-May-1905', 'Shirlee', 'Fonda', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0000553', 'Liam', 'Neeson', 'Ballymena', 'UK', '07-June-1952', 'Natasha', 'Richardson', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0000229', 'Steven', 'Spielberg', 'Cincinnati', 'US', '18-December-1946', 'Kate', 'Capshaw', 'Y', 'N');

INSERT INTO Person
VALUES ('nm0000233', 'Quentin', 'Tarantino', 'Knoxville', 'US', '27-March-1963', 'Daniella', 'Pick', 'Y', 'N');

INSERT INTO Person
VALUES ('nm0000168', 'Samuel L.', 'Jackson', 'Washington D.C.', 'US', '21-December-1948', 'LaTanya', 'Jackson', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0000138', 'Leonardo', 'DiCaprio', 'Hollywood', 'US', '11-November-1974', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0000217', 'Martin', 'Scorsese', 'New York City', 'US', '17-November-1942', 'Helen', 'Scorsese', 'Y', 'N');

INSERT INTO Person
VALUES ('nm0000134', 'Robert', 'De Niro', 'Washington D.C.', 'US', '17-August-1943', 'Grace', 'Hightower', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0000399', 'David', 'Fincher', 'Denver', 'US', '28-August-1962', 'NULL', 'NULL', 'Y', 'N');

INSERT INTO Person
VALUES ('nm0000093', 'Brad', 'Pitt', 'Shawnee', 'US', '18-December-1963', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0094435', 'Bong Joon', 'Ho', 'Daegu', 'SK', '14-September-1969', 'NULL', 'NULL', 'Y', 'N');

INSERT INTO Person
VALUES ('nm000037', 'Robert', 'Downey Jr.', 'New York City', 'US', '04-April-1965', 'Susan', 'Downey', 'N', 'Y');

INSERT INTO Person
VALUES ('nm1165110', 'Chris', 'Hemsworth', 'Melbourne', 'AU', '11-August-1983', 'Elsa', 'Pataky', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0991810', 'Mahershala', 'Ali', 'Oakland', 'US', '16-February-1974', 'Amatus', 'Karim', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0000354', 'Matt', 'Damon', 'Massachusetts', 'US', '08-October-1970', 'Luciana', 'Barroso', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0688132', 'Amy', 'Poehler', 'Burlington', 'US', '16-September-1971', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0004715', 'Will', 'Arnett', 'Toronto', 'CA', '04-May-1970', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0186505', 'Bryan', 'Cranston', 'Hollywood', 'US', '07-March-1956', 'Robin', 'Dearden', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0719637', 'Jeremy', 'Renner', 'Modesto', 'US', '07-January-1971', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0837177', 'Jason', 'Sudeikis', 'Fairfax', 'US', '18-September-1975', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0000506', 'Julia', 'Louis-Dreyfus', 'New York City', 'US', '13-January-1961', 'Brad', 'Hall', 'N', 'Y');

INSERT INTO Person
VALUES ('nm3918035', 'Zendaya', 'NULL', 'Oakland', 'US', '01-September-1996', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0001254', 'James', 'Gandolfini', 'Westwood', 'US', '18-September-1961', 'Deborah', 'Lin', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0714698', 'Lance', 'Reddick', 'Baltimore', 'US', '07-June-1962', 'Stephanie', 'Day', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0497631', 'Lee', 'Jung-jae', 'Seoul', 'SK', '15-March-1973', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm2374363', 'Jon', 'McLaren', 'Ottawa', 'CA', '26-October-1984', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0694066', 'Clifton', 'Powell', 'Washington D.C.', 'US', '16-March-1956', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm1177880', 'Benjamin', 'Davis', 'Boston', 'US', '21-June-1972', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm1091994', 'Steve', 'Downes', 'Columbus', 'US', '28-June-1950', 'Liz', 'Zwelifler', 'N', 'Y');

INSERT INTO Person
VALUES ('nm000206', 'Giancarlo', 'Esposito', 'Copenhagen', 'US', '26-April-1958', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0005342', 'Norman', 'Reedus', 'Hollywood', 'US', '06-January-1969', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0424534', 'Ashley', 'Johnson', 'Camarillo', 'US', '09-August-1983', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0000206', 'Keanu', 'Reeves', 'Beirut', 'LB', '02-September-1964', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Person
VALUES ('nm0523180', 'Yuri', 'Lowenthal', 'Alliance', 'US', '05-March-1971', 'Tara', 'Platt', 'N', 'Y');

INSERT INTO Person
VALUES ('nm39500750', 'Ashly', 'Burch', 'Phoenix', 'US', '19-June-1990', 'NULL', 'NULL', 'N', 'Y');

INSERT INTO Review
VALUES ('tt0111161', 'rw2053711', 'TheLittleSongbird', 10, 'Enthralling, fantastic, intriguing, truly remarkable!', '17-April-2009', 63, 34);

INSERT INTO Review
VALUES ('tt0068646', 'rw2774909', 'MartinHafer', 10, '#2 on IMDbs Top 100, a multi-Oscar-winner and over 1500 reviews...what more can I say about the movie?!', '30-March-2013', 33, 15);

INSERT INTO Review
VALUES ('tt0468569', 'rw1999145', 'claudio_carvalho', 9, 'Sometimes the Truth is not Good Enough', '31-December-2008', 12, 16);

INSERT INTO Review
VALUES ('tt0108052', 'rw2984638', 'SnoopyStyle', 10, 'Spielbergs most important work', '23-March-2014', 11, 6);

INSERT INTO Review
VALUES ('tt0110912', 'rw5297766', 'Horst_In_Translation', 6, 'Occasionally great, overall a genuinely entertaining movie', '03-December-2019', 2, 8);

INSERT INTO Review
VALUES ('tt1375666', 'rw3518451', 'Leofwine_draca', 8, 'A Hollywood rarity - an intelligent action film', '04-August-2016', 2, 3);

INSERT INTO Review
VALUES ('tt0099685', 'rw292350', 'gogoschka-1', 10, 'In one word: perfection', '17-December-2013', 338, 38);

INSERT INTO Review
VALUES ('tt0114369', 'rw2580485', 'Leofwine_draca', 9, 'It doesnt get much more influential than this...', '13-March-2012', 5, 2);

INSERT INTO Review
VALUES ('tt4975722', 'rw3573662', 'bardia-moose', 10, 'Identity Takes Time to Discover', '02-November-2016', 364, 256);

INSERT INTO Review
VALUES ('tt6751668', 'rw4978432', 'Jeremy_Urquhart', 10, 'One of the best films of this decade', '05-July-2019', 1859, 515);

INSERT INTO Review
VALUES ('tt0114369', 'rw0370669', 'Insipid_Shell', 10, 'Se7en is well crafted and ingeniously clever, making it one of the greatest films of the 90s', '25-March-2002', 710, 100);

INSERT INTO Review
VALUES ('tt7131622', 'rw5019130', 'g_bake', 7, 'Just kept waiting and waiting and waiting and waiting', '26-July-2019', 4361, 1302);

INSERT INTO Review
VALUES ('tt0119217', 'rw1095751', 'MartinHafer', 5, 'As long as you realize there are LOTS of errors in the movie, it is entertaining', '05-June-2005', 16, 71);

INSERT INTO Review
VALUES ('tt0119217', 'rw3152630', 'SnoopyStyle', 9, 'terrific characters', '31-December-2014', 5, 3);

INSERT INTO Review
VALUES ('tt2096673', 'rw4933689', 'gloriesalbuainain', 9, 'I cried like a baby..', '14-June-2019', 127, 85);

INSERT INTO Review
VALUES ('tt3398228', 'rw4129116', 'annabaloo', 10, 'This show! Is! Too much! Man!', '14-April-2018', 499, 17);

INSERT INTO Review
VALUES ('tt0903747', 'rw7088846', 'FiRE2904', 10, 'A masterpiece now, and a masterpiece a hundred years from now.', '04-July-2021', 240, 7);

INSERT INTO Review
VALUES ('tt0386676', 'rw2695446', 'mikelordwpg-513-991698', 7, 'in its glory it was great but nowadays', '27-October-2012', 0, 4);

INSERT INTO Review
VALUES ('tt8772296', 'rw5012725', 'ghees-24837', 9, 'C I N E M A T O G R A P H Y', '22-July-2019', 664, 92);

INSERT INTO Review
VALUES ('tt0306414', 'rw7351819', 'timeuschristiansunder', 10, 'Doesnt get better than this', '17-September-2021', 30, 0);

INSERT INTO Review
VALUES ('tt14844718', 'rw7498954', 'Master_Strange', 8, 'Solid Game Definitely Worth Picking Up', '31-October-2021', 4, 0);

INSERT INTO Review
VALUES ('tt6161168', 'rw5643424', 'Pjtaylor-96-138044', 10, 'Perhaps even better than its predecessor.', '15-April-2020', 8, 2);

INSERT INTO Review
VALUES ('tt5807606', 'rw5245057', 'shivamghe', 10, 'A slow burning masterpiece.', '09-November-2019', 154, 28);

INSERT INTO Review
VALUES ('tt6298000', 'rw5836934', 'themeganlh', 5, 'As a fan, Im just sad.', '19-June-2020', 778, 570);

INSERT INTO Review
VALUES ('tt3810192', 'rw6362790', 'jacobaanes', 6, 'I wish they delayed it further back', '13-December-2020', 43, 8);

INSERT INTO Individual_Award
VALUES('Oscar', 'Best Performance by an Actor in a Supporting Role', 2005, '6801 Hollywood Blvd', 'CA', '90028', 'nm0000151');

INSERT INTO Individual_Award
VALUES('Oscar', 'Best Actor in a Leading Role', 1973, '135 N Grand Ave', 'CA', '90012', 'nm0000008');

INSERT INTO Individual_Award
VALUES('Oscar', 'Best Performance by an Actor in a Supporting Role', 2011, '6801 Hollywood Blvd', 'CA', '90028', 'nm000028');

INSERT INTO Individual_Award
VALUES('Saturn Award', 'Best Director', 2001, '1735 Vine St', 'CA', '90028', 'nm0634240');

INSERT INTO Individual_Award
VALUES('Primetime Emmy', 'Outstanding Lead Actress in a Drama Series', 2020, '1111 S Figueroa St', 'CA', '90015', 'nm3918035');

INSERT INTO Individual_Award
VALUES('BAFTA Film Award', 'Best Actor in a Supporting Role', 1995, '8 Argyll St, London W1F 7TF, United Kingdom', NULL, NULL, 'nm0000168');

INSERT INTO Individual_Award
VALUES('BAFTA Film Award', 'Best Foreign Actor', 1958, 'London, United Kingdom', NULL, NULL, 'nm0000020');

INSERT INTO Individual_Award
VALUES('Primetime Emmy', 'Outstanding Lead Actor in a Drama Series', 2003, '1111 S Figueroa St', 'CA', '90015', 'nm0001254');

INSERT INTO Individual_Award
VALUES('Oscar', 'Best Achievement in Directing', 2020, '6801 Hollywood Blvd', 'CA', '90028', 'nm0094435');

INSERT INTO Individual_Award
VALUES('Oscar', 'Best Director', 1994, '135 N Grand Ave', 'CA', '90012', 'nm0000229');

INSERT INTO Individual_Award
VALUES('Blockbuster Entertainment Award', 'Favorite Actor - Video', 1999, '665 W Jefferson Blvd', 'CA', '90007', 'nm0000354');

INSERT INTO Individual_Award
VALUES('Annie Award', 'Outstanding Achievement for Voice Acting in an Animated Television/Broadcast Production', 2019, '20745 Dickson Ct', 'CA', '90095', 'nm0004715');

INSERT INTO Individual_Award
VALUES('VGA', 'Best Performance by a Human Male', 2004, NULL, NULL, NULL, 'nm0000168');

INSERT INTO Individual_Award
VALUES('NAVGTR Award', 'Outstanding Performance in a Drama, Lead', 2021, NULL, NULL, NULL, 'nm0424534');

INSERT INTO Theater
VALUES('Cinemark Colonel Glenn 18 and XD', 5016870499, '18 Colonel Glenn Plaza Dr', 'AR', 72210);

INSERT INTO Theater
VALUES('AMC Empire 25', 2123982597, '234 W 42nd St', 'NY', 10036);

INSERT INTO Theater
VALUES('Harkins Theatres Chandler Fashion 20', 4807320110, '3159 W Chandler Blvd', 'AZ', 85226);

INSERT INTO Theater
VALUES('Cinemark Towne Centre and XD', 5014507558, '201 Skyline Dr Suite 25', 'AR', 72032);

INSERT INTO Theater
VALUES('AMC Chenal 9', 5018178070, '17825 Chenal Pkwy', 'AR', 72211);

INSERT INTO Theater
VALUES('Regal Fox Tower', 8444627342, '846 SW Park Ave', 'OR', 97205);

INSERT INTO Theater
VALUES('The Landmark at Merrick Park', 7865744116, '358 San Lorenzo Ave', 'FL', 33146);

INSERT INTO Theater
VALUES('Plaza Theatre', 4704101939, '1049 Ponce De Leon Ave', 'GA', 30306);

INSERT INTO Theater
VALUES('AMC The Regency 20', 8136853396, '2496 W Brandon Blvd', 'FL', 33511);

INSERT INTO Theater
VALUES('Silverspot Cinema - Orange Village', 4402011900, '10 Park Ave Suite 218', 'OH', 44122);

INSERT INTO Theater
VALUES('Regal Webster Place', 8444627342, '1471 W Webster Ave', 'IL', 60614);

INSERT INTO Theater
VALUES('Hickory Ridge Cinema', 3302200110, '1055 Pearl Rd', 'OH', 44212);

INSERT INTO Showing
VALUES('Cinemark Colonel Glenn 18 and XD', 'tt0111161');

INSERT INTO Showing
VALUES('AMC Empire 25', 'tt0068646');

INSERT INTO Showing
VALUES('Harkins Theatres Chandler Fashion 20', 'tt0468569');

INSERT INTO Showing
VALUES('Cinemark Towne Centre and XD', 'tt1375666');

INSERT INTO Showing
VALUES('AMC Chenal 9', 'tt4154756');

INSERT INTO Showing
VALUES('Regal Fox Tower', 'tt0110912');

INSERT INTO Showing
VALUES('The Landmark at Merrick Park', 'tt0050083');

INSERT INTO Showing
VALUES('Plaza Theatre', 'tt4975722');

INSERT INTO Showing
VALUES('AMC The Regency 20', 'tt6751668');

INSERT INTO Showing
VALUES('Silverspot Cinema - Orange Village', 'tt0108052');

INSERT INTO Showing
VALUES('Regal Webster Place', 'tt0119217');

INSERT INTO Showing
VALUES('Hickory Ridge Cinema', 'tt0114369');

INSERT INTO Show_Times
VALUES('Cinemark Colonel Glenn 18 and XD', '11:50a, 3:25p, 7:00p, 10:35', '17-Dec-2021');

INSERT INTO Show_Times
VALUES('AMC Empire 25', '1:15p, 4:15p, 7:15p, 9:00p', '05-Dec-2021');

INSERT INTO Show_Times
VALUES('Harkins Theatres Chandler Fashion 20', '11:30a, 3:10p, 6:50p', '07-Dec-2021');

INSERT INTO Show_Times
VALUES('Cinemark Towne Centre and XD', '10:25a, 2:05p, 5:45p, 9:25p', '04-Jan-2021');

INSERT INTO Show_Times
VALUES('AMC Chenal 9', '12:30p, 4:00p, 7:50p', '20-Dec-2021');

INSERT INTO Show_Times
VALUES('Regal Fox Tower', '10:30a, 2:15p, 6:00p, 9:45p', '11-Dec-2021');

INSERT INTO Show_Times
VALUES('The Landmark at Merrick Park', '11:45a, 3:15p, 6:45p', '02-Jan-2021');

INSERT INTO Show_Times
VALUES('Plaza Theatre', '2:30p, 7:30p', '08-Dec-2021');

INSERT INTO Show_Times
VALUES('AMC The Regency 20', '12:30p, 2:00p, 3:30p, 5:00p, 6:45p, 8:00p', '11-Jan-2021');

INSERT INTO Show_Times
VALUES('Silverspot Cinema - Orange Village', '4:30p, 7:30p, 8:30p', '27-Dec-2021');

INSERT INTO Show_Times
VALUES('Regal Webster Place', '11:50, 3:25p, 7:00p, 10:30p', '23-Dec-2021');

INSERT INTO Show_Times
VALUES('Hickory Ridge Cinema', '12:45p, 4:20p, 8:10', '08-Jan-2021');

INSERT INTO Cast_In
VALUES('nm0000151', 'tt0111161');

INSERT INTO Cast_In
VALUES('nm0000008', 'tt0068646');

INSERT INTO Cast_In
VALUES('nm000028', 'tt0468569');

INSERT INTO Cast_In
Values('nm0000020', 'tt0050083');

INSERT INTO Cast_In
VALUES('nm0000553', 'tt0108052');

INSERT INTO Cast_In
VALUES('nm0000168', 'tt0110912');

INSERT INTO Cast_In
VALUES('nm0000138', 'tt1375666');

INSERT INTO Cast_In
VALUES('nm0000134', 'tt0099685');

INSERT INTO Cast_In
VALUES('nm0000093', 'tt0114369');

INSERT INTO Cast_In
VALUES('nm0000151', 'tt0114369');

INSERT INTO Cast_In
VALUES('nm000037', 'tt4154756');

INSERT INTO Cast_In
VALUES('nm1165110', 'tt4154756');

INSERT INTO Cast_In
VALUES('nm0000138', 'tt7131622');

INSERT INTO Cast_In
VALUES('nm0000093', 'tt7131622');

INSERT INTO Cast_In
VALUES('nm0991810', 'tt4975722');

INSERT INTO Cast_In
VALUES('nm0000354', 'tt0119217');

INSERT INTO Appears_In
VALUES('nm0004715', 'tt3398228');

INSERT INTO Appears_In
VALUES('nm0186505', 'tt0903747');

INSERT INTO Appears_In
VALUES('nm0719637', 'tt10160804');

INSERT INTO Appears_In
VALUES('nm0837177', 'tt10986410');

INSERT INTO Appears_In
VALUES('nm0000506', 'tt0098904');

INSERT INTO Appears_In
VALUES('nm3918035', 'tt8772296');

INSERT INTO Appears_In
VALUES('nm0001254',  'tt0141842');

INSERT INTO Appears_In
VALUES('nm0714698', 'tt0306414');

INSERT INTO Appears_In
VALUES('nm0497631', 'tt10919420');

INSERT INTO Voice_In
VALUES('nm2374363', 'tt14844718');

INSERT INTO Voice_In
VALUES('nm0694066', 'tt0383385');

INSERT INTO Voice_In
VALUES('nm1177880', 'tt6161168');

INSERT INTO Voice_In
VALUES('nm1091994', 'tt9437014');

INSERT INTO Voice_In
VALUES('nm000206', 'tt12693278');

INSERT INTO Voice_In
VALUES('nm0005342', 'tt5807606');

INSERT INTO Voice_In
VALUES('nm0424534', 'tt6298000');

INSERT INTO Voice_In
VALUES('nm0000206', 'tt3810192');

INSERT INTO Voice_In
VALUES('nm0523180', 'tt5807780');

INSERT INTO Voice_In
VALUES('nm39500750', 'tt4044024');

INSERT INTO Genres
VALUES('tt0111161', 'Drama');

INSERT INTO Genres
VALUES('tt0068646', 'Crime');

INSERT INTO Genres
VALUES('tt0468569', 'Action');

INSERT INTO Genres
VALUES('tt1375666', 'Action');

INSERT INTO Genres
VALUES('tt8772296', 'Drama');

INSERT INTO Genres
VALUES('tt0110912', 'Crime');

INSERT INTO Genres
VALUES('tt0050083', 'Crime');

INSERT INTO Genres
VALUES('tt0141842', 'Crime');

INSERT INTO Genres
VALUES('tt6751668', 'Comedy');

INSERT INTO Genres
VALUES('tt0108052', 'Drama');

INSERT INTO Genres
VALUES('tt0119217', 'Drama');

INSERT INTO Genres
VALUES('tt3398228', 'Comedy');

INSERT INTO Genres
VALUES('tt0383385', 'Action');

INSERT INTO Genres
VALUES('tt6298000', 'Action');

INSERT INTO Languages
VALUES('tt0111161', 'English');

INSERT INTO Languages
VALUES('tt0068646', 'English, Italian, Latin');

INSERT INTO Languages
VALUES('tt0468569', 'English, Mandarin');

INSERT INTO Languages
VALUES('tt1375666', 'English, Japanese, French');

INSERT INTO Languages
VALUES('tt8772296', 'English');

INSERT INTO Languages
VALUES('tt0110912', 'English, Spanish, French');

INSERT INTO Languages
VALUES('tt0050083', 'English');

INSERT INTO Languages
VALUES('tt0141842', 'English, Italian, Russian');

INSERT INTO Languages
VALUES('tt6751668', 'Korean, English');

INSERT INTO Languages
VALUES('tt0108052', 'English, Hebrew, German, Polish, Latin');

INSERT INTO Languages
VALUES('tt0119217', 'English');

INSERT INTO Languages
VALUES('tt3398228', 'English');

INSERT INTO Languages
VALUES('tt0383385', 'English, Spanish, German');

INSERT INTO Languages
VALUES('tt6298000', 'English');

INSERT INTO Production_Companies
VALUES('tt0111161','Castle Rock Entertainment');

INSERT INTO Production_Companies
VALUES('tt0068646', 'Paramount Pictures');

INSERT INTO Production_Companies
VALUES('tt0468569', 'Warner Bros., Legendary Entertainment, Syncopy');

INSERT INTO Production_Companies
VALUES('tt1375666', 'Warer Bros., Legendary Entertainment, Syncopy');

INSERT INTO Production_Companies
VALUES('tt8772296', 'A24, Home Box Office (HBO), Little Lamb');

INSERT INTO Production_Companies
VALUES('tt0110912', 'Miramax, A Band Apart, Jersey Films');

INSERT INTO Production_Companies
VALUES('tt0050083', 'Orion-Nova Productions');

INSERT INTO Production_Companies
VALUES('tt0141842', 'Home Box Office (HBO), Brillstein Entertainment Partners');

INSERT INTO Production_Companies
VALUES('tt6751668', 'CJ Entertainment, Barunson E and A');

INSERT INTO Production_Companies
VALUES('tt0108052', 'Official Facebook, Universal Pictures Home Entertainment (United States)');

INSERT INTO Production_Companies
VALUES('tt0119217','Miramax, Be Gentlemen Limited Partnership, Lawrence Bender Productions');

INSERT INTO Production_Companies
VALUES('tt3398228', 'Tornante Company, ShadowMachine, Netflix');

INSERT INTO Production_Companies
VALUES('tt0383385', 'Rockstar North, Rockstar Games, Grove Street Games');

INSERT INTO Production_Companies
VALUES('tt6298000','Naughty Dog');

INSERT INTO Publicity_Listings
VALUES ('nm0000151', 'The Story Of Us With Morgan Freeman');

INSERT INTO Publicity_Listings
VALUES ('nm0000008', 'Eilandje voor de dorst');

INSERT INTO Publicity_Listings
VALUES ('nm000033', '6 Questions: Francis Ford Coppola');

INSERT INTO Publicity_Listings
VALUES ('nm000028', ' This is not the Christian Bale youre expecting');

INSERT INTO Publicity_Listings
VALUES ('nm0634240', 'Playboy Interview: Christopher Nolan');

INSERT INTO Publicity_Listings
VALUES ('nm0000020', 'Playboy Interview');

INSERT INTO Publicity_Listings
VALUES ('nm0000553', 'Personality Parade: Walter Scott Asks... Liam Neeson');

INSERT INTO Publicity_Listings
VALUES ('nm0000229', 'Joe Dante - Jai probablement aidé Steven Spielberg à se payer une extension de sa maison');

INSERT INTO Publicity_Listings
VALUES ('nm0000233', 'Il ya un petit pey de presque tous mes films dans celui-là' );

INSERT INTO Publicity_Listings
VALUES ('nm0000168', 'Playboy Interview: Samuel L. Jackson');

INSERT INTO Publicity_Listings
VALUES ('nm0000138', 'Man of the World');

INSERT INTO Publicity_Listings
VALUES ('nm0000217', 'Martin Scorsese: 3D is liberating. Every shot is rethinking cinema');

INSERT INTO Publicity_Listings
VALUES ('nm0000134', 'Walter Scott asks...Robert DeNiro' );

INSERT INTO Publicity_Listings
VALUES ('nm0000399', 'Through a Lens, DARKLY');

INSERT INTO Publicity_Listings
VALUES ('nm0000093', 'I hit the lottery. I have to share whatever I can.');

INSERT INTO Publicity_Listings
VALUES ('nm0094435', 'Bong Jun-Ho');

INSERT INTO Publicity_Listings
VALUES ('nm000037', 'Questions à Robert Downey Jr, acteur. Je déteste ce qui est trop ficelé davance');

INSERT INTO Publicity_Listings
VALUES ('nm1165110', 'CHRIS ALMIGHTY: The ever-versatile Chris Hemsworth is no mere mortal');

INSERT INTO Publicity_Listings
VALUES ('nm0991810', 'Traveling Mercies');

INSERT INTO Publicity_Listings
VALUES ('nm0000354', 'Sunday with...Matt Damon');

INSERT INTO Publicity_Listings
VALUES ('nm0688132', 'Amy Poehler tells all');

INSERT INTO Publicity_Listings
VALUES ('nm0004715', 'Walter Scott asks...Will Arnett');

INSERT INTO Publicity_Listings
VALUES ('nm0186505', '7 Questions: Bryan Cranston Breaking Bads Emmy winner returns to the small screen…');

INSERT INTO Publicity_Listings
VALUES ('nm0719637', 'We tag Jeremy Renner for a work chat');

INSERT INTO Publicity_Listings
VALUES ('nm0837177', 'Fall Guy');

INSERT INTO Publicity_Listings
VALUES ('nm0000506', 'TELEVISION in a POLITICAL AGE');

INSERT INTO Publicity_Listings
VALUES ('nm3918035', 'ZENDAYA: THE COOLEST GIRL IN HOLLYWOOD MAKES HISTORY');

INSERT INTO Publicity_Listings
VALUES ('nm0001254', 'Once Tough Guy, Now Nurturer');

INSERT INTO Publicity_Listings
VALUES ('nm0714698', 'Chronicles of Reddick');

INSERT INTO Publicity_Listings
VALUES ('nm1177880', 'Five More Join James Gunns The Belko Experiment; Shooting Begins');

INSERT INTO Publicity_Listings
VALUES ('nm000206', 'SCENE STEALER: Giancarlo Esposito');

INSERT INTO Publicity_Listings
VALUES ('nm0005342', 'Pick of Glitter');

INSERT INTO Publicity_Listings
VALUES ('nm0424534', 'Growing Pains');

INSERT INTO Publicity_Listings
VALUES ('nm0000206', 'An A-list slacker grows up');

INSERT INTO Publicity_Listings
VALUES ('nm0523180', 'The man behind the [giant teddy bear] mask');

INSERT INTO Trademarks
VALUES ('nm0000151', 'Frequently plays characters with calm demeanor');

INSERT INTO Trademarks
VALUES ('nm0000008', 'Bizarrely unique voice with an extreme nasal tonality spoken in mumbles');

INSERT INTO Trademarks
VALUES ('nm000033', 'Beard');

INSERT INTO Trademarks
VALUES ('nm0634240', 'Opening scenes are usually a flashback or a piece of a scene from the middle or ending of the movie.');

INSERT INTO Trademarks
VALUES ('nm0000229', 'His consistent references to World War II.');

INSERT INTO Trademarks
VALUES ('nm0000217', 'Frequently sets his films in New York City');

INSERT INTO Trademarks
VALUES ('nm0000134', 'Mole on his right cheek');

INSERT INTO Trademarks
VALUES ('nm0000399', 'Wide shots');

INSERT INTO Trademarks
VALUES ('nm0094435', 'Socially and politically conscious films');

INSERT INTO Trademarks
VALUES ('nm0000206', 'Deep husky voice');

INSERT INTO Trademarks
VALUES ('nm39500750', 'Short dark hair');

INSERT INTO Quotes
VALUES ('nm0000151', 'I gravitate towards gravitas.');

INSERT INTO Quotes
VALUES ('nm0000008', 'The only thing an actor owes his public is not to bore them.');

INSERT INTO Quotes
VALUES ('nm000033', 'I bring to my life a certain amount of mess.');

INSERT INTO Quotes
VALUES ('nm000028', 'I started my career without fans.');

INSERT INTO Quotes
VALUES ('nm0634240', 'I think theres a vague sense out there that movies are becoming more and more unreal. I know Ive felt it.');

INSERT INTO Quotes
VALUES ('nm0000020', 'I dont want to just sell war bonds. I want to be a sailor.');

INSERT INTO Quotes
VALUES ('nm0000553', 'Laid-back? My wife said that? Well, I guess I am. It takes a lot to get me riled.');

INSERT INTO Quotes
VALUES ('nm0000229', 'Once a month the sky falls on my head, I come to and I see another movie I want to make.');

INSERT INTO Quotes
VALUES ('nm0000233', 'If Ive made it a little easier for artists to work in violence, great! Ive accomplished something.');

INSERT INTO Quotes
VALUES ('nm0000168', 'I think everyone who says they dont like watching themselves in movies should stop lying.');

INSERT INTO Quotes
VALUES ('nm0000138', 'People want you to be a crazy, out-of-control teen brat. They want you miserable, just like them. They dont want heroes; what they want is to see you fall.');

INSERT INTO Quotes
VALUES ('nm0000217', 'Anything with a ball, no good');

INSERT INTO Quotes
VALUES ('nm0000134', 'I dont like to watch my own movies--I fall asleep in my own movies.');

INSERT INTO Quotes
VALUES ('nm0000399', 'I dont want to tell you how to do your job, but somebody has to.');

INSERT INTO Quotes
VALUES ('nm0000093', 'Im one of those people you hate because of genetics. Its the truth.');

INSERT INTO Quotes
VALUES ('nm0094435', 'Its fun for me to bury my political and social comments here and there in a film.');

INSERT INTO Quotes
VALUES ('nm000037', 'Ive always felt like such an outsider in this industry. Because Im so insane, I guess.');

INSERT INTO Quotes
VALUES ('nm1165110', 'I love the adventure that comes with this work, the travel and all that. But also the craft, the storytelling. From a kid, I remember enjoying certain books and getting swept away in movies.');

INSERT INTO Quotes
VALUES ('nm0991810', 'Mahershala is my nickname.');

INSERT INTO Quotes
VALUES ('nm0000354', 'If your movies dont perform, they just stop calling you.');

INSERT INTO Quotes
VALUES ('nm0688132', 'No one looks stupid when theyre having fun!');

INSERT INTO Quotes
VALUES ('nm0004715', 'Thats my wife, then the nanny, then the dog, the neighbour across the street whos got a glass eye, and the dude Im guessing is our gardener.');

INSERT INTO Quotes
VALUES ('nm0186505', 'I dont want to say its not important to win [an Emmy], because it is. Would it be important to me Quotesally to win? It would be wonderful; I would be delighted. Is it important for an actors career? I would say Yes.');

INSERT INTO Quotes
VALUES ('nm0719637', 'Oh, all those ridiculous people with zero talent who spend their lives making sure everyone knows their name. Those stupid, stupid people.');

INSERT INTO Quotes
VALUES ('nm0837177', 'I think people who live in the worlds that movies are based on end up disliking them. Unless theyre from a different time and era.');

INSERT INTO Quotes
VALUES ('nm0000506', 'I will quote Norman Lear, who said that celebrity is something you can spend. And so I have taken my so-called celebrity and occasionally spent it down on causes or things that Im passionate about. Im not running for office. Im not a scientist. But Im a concerned citizen.');

INSERT INTO Quotes
VALUES ('nm3918035', 'This is so beautiful... doing and making positive programming for young people is so important to me, and I will keep doing it. To all the parents out there, thank you for allowing me to be a role model for your children. I really, really do not take that for granted.');

INSERT INTO Quotes
VALUES ('nm0001254', 'Im a neurotic mess. Im really basically just like a 260-pound Woody Allen');

INSERT INTO Quotes
VALUES ('nm0714698', 'Its funny, because in drama school, my greatest strength was my range. So my early career was like that: I played all kinds of different characters.');

INSERT INTO Quotes
VALUES ('nm000206', 'My advice for achieving success is to make a career choice that reflects your passion. Then work your craft a little bit each day - even if someones not paying you to do it. Try to balance your social life with your educational (or professional) life, and have patience.');

INSERT INTO Quotes
VALUES ('nm0005342', 'Damaged people tend to gravitate towards damaged people.');

INSERT INTO Quotes
VALUES ('nm0424534', 'I know you hear horror stories about child actors, but I think in my family when I did start acting it was never a big deal.');

INSERT INTO Quotes
VALUES ('nm0000206', 'My name cant be *that* tough to pronounce!');

INSERT INTO Quotes
VALUES ('nm39500750', 'I grew up when YouTube was kind of becoming the goliath that it is now. And its easy to get sucked into wanting to make a viral video... I think you see a lot of stuff online that isnt made necessarily with love. Its not even to say that theyre unsuccessful, but for me, the whole point of being into anything creative is because you love the process.');

INSERT INTO Children
VALUES ('nm0000151', 'Alfonso', 'Freeman');

INSERT INTO Children
VALUES ('nm0000151', 'Morgana', 'Freeman');

INSERT INTO Children
VALUES ('nm0000151', 'Saifoulaye', 'Freeman');

INSERT INTO Children
VALUES ('nm0000151', 'Deena', 'Freeman');

INSERT INTO Children
VALUES ('nm0000008', 'Christian', 'Brando');

INSERT INTO Children
VALUES ('nm0000008','Miko', 'Brando');

INSERT INTO Children
VALUES ('nm0000008', 'Rebecca', 'Brando');

INSERT INTO Children
VALUES ('nm0000008', 'Teihotu', 'Brando');

INSERT INTO Children
VALUES ('nm0000008', 'Stefano', 'Brando');

INSERT INTO Children
VALUES ('nm0000008', 'Tarita', 'Brando');

INSERT INTO Children
VALUES ('nm0000008', 'Ninna', 'Brando');

INSERT INTO Children
VALUES ('nm0000008', 'Myles', 'Brando');

INSERT INTO Children
VALUES ('nm0000008', 'Timothy', 'Brando');

INSERT INTO Children
VALUES ('nm0000008', 'Petra', 'Brando');

INSERT INTO Children
VALUES ('nm0000008', 'Maimiti', 'Brando');

INSERT INTO Children
VALUES ('nm0000008', 'Raiatua', 'Brando');

INSERT INTO Children
VALUES ('nm000033', 'Sofia', 'Coppola');

INSERT INTO Children
VALUES ('nm000033', 'Roman', 'Coppola');

INSERT INTO Children
VALUES ('nm000033', 'Gian-Carlo', 'Coppola');

INSERT INTO Children
VALUES ('nm000028', 'Bale', 'Joseph');

INSERT INTO Children
VALUES ('nm000028', 'Emmeline', 'Bale');

INSERT INTO Children
VALUES ('nm0634240', 'Nolan', 'Flora');

INSERT INTO Children
VALUES ('nm0634240', 'Rory', 'Nolan');

INSERT INTO Children
VALUES ('nm0634240','Oliver', 'Nolan');

INSERT INTO Children
VALUES ('nm0634240', 'Magnus', 'Nolan');

INSERT INTO Children
VALUES ('nm0000020', 'Peter', 'Fonda');

INSERT INTO Children
VALUES ('nm0634240', 'Jane', 'Fonda');

INSERT INTO Children
VALUES ('nm0000553', 'Daniel','Neeson');

INSERT INTO Children
VALUES ('nm0000553', 'Micheál', 'Richardson');

INSERT INTO Children
VALUES ('nm0000229', 'Sasha', 'Spielberg');

INSERT INTO Children
VALUES ('nm0000229', 'Max', 'Spielberg');

INSERT INTO Children
VALUES ('nm0000229', 'Sawyer', 'Spielberg');

INSERT INTO Children
VALUES ('nm0000229', 'Destry', 'Spielberg');

INSERT INTO Children
VALUES ('nm0000229', 'Mikaela', 'Spielberg');

INSERT INTO Children
VALUES ('nm0000229', 'Theo', 'Spielberg');

INSERT INTO Children
VALUES ('nm0000233', 'Leo', 'Tarantino');

INSERT INTO Children
VALUES ('nm0000168', 'Zoe', 'Jackson');

INSERT INTO Children
VALUES ('nm0000217', 'Francesca', 'Scorsese');

INSERT INTO Children
VALUES ('nm0000217', 'Cathy', 'Scorsese');

INSERT INTO Children
VALUES ('nm0000217', 'Domenica', 'Scorsese');

INSERT INTO Children
VALUES ('nm0000134', 'Drena', 'De Niro');

INSERT INTO Children
VALUES ('nm0000134', 'Raphael', 'De Niro');

INSERT INTO Children
VALUES ('nm0000134', 'Elliot', 'De Niro');

INSERT INTO Children
VALUES ('nm0000134', 'Helen', 'De Niro');

INSERT INTO Children
VALUES ('nm0000399', 'Phelix Imogen', 'Fincher');

INSERT INTO Children
VALUES ('nm0000093', 'Maddox', 'Jolie-Pitt');

INSERT INTO Children
VALUES ('nm0000093', 'Shiloh', 'Jolie-Pitt');

INSERT INTO Children
VALUES ('nm0000093', 'Pax', 'Jolie-Pitt');

INSERT INTO Children
VALUES ('nm0000093', 'Vivienne', 'Jolie-Pitt');

INSERT INTO Children
VALUES ('nm0000093', 'Knox', 'Jolie-Pitt');

INSERT INTO Children
VALUES('nm0000093', 'Zahara', 'Jolie-Pitt');

INSERT INTO Children
VALUES ('nm0094435', 'Hyomin', 'Bong');

INSERT INTO Children
VALUES ('nm000037', 'Indio', 'Downey');

INSERT INTO Children
VALUES ('nm000037', 'Avri', 'Downey');

INSERT INTO Children
VALUES ('nm1165110', 'India Rose', 'Hemsworth');

INSERT INTO Children
VALUES ('nm1165110', 'Sasha', 'Hemsworth');

INSERT INTO Children
VALUES('nm1165110', 'Tristan', 'Hemsworth');

INSERT INTO Children
VALUES ('nm0991810', 'Bari Najma', 'Ali');

INSERT INTO Children
VALUES ('nm0000354', 'Alexia', 'Damon');

INSERT INTO Children
VALUES ('nm0000354', 'Isabella', 'Damon');

INSERT INTO Children
VALUES ('nm0000354', 'Gia', 'Damon');

INSERT INTO Children
VALUES ('nm0000354', 'Stella', 'Damon');

INSERT INTO Children
VALUES ('nm0688132', 'Archibald', 'Poehler Arnett');

INSERT INTO Children
VALUES ('nm0688132', 'Abel', 'Poehler Arnett');

INSERT INTO Children
VALUES ('nm0004715', 'Archibald' , 'Arnett');

INSERT INTO Children
VALUES ('nm0004715',  'Abel' , 'Arnett');

INSERT INTO Children
VALUES ('nm0186505', 'Taylor', 'Dearden');

INSERT INTO Children
VALUES ('nm0719637', 'Ava Berlin', 'Renner');

INSERT INTO Children
VALUES ('nm0837177', 'Otis', 'Sudeikis');

INSERT INTO Children
VALUES ('nm0837177', 'Daisy', 'Sudeikis');

INSERT INTO Children
VALUES ('nm0000506', 'Henry', 'Hall');

INSERT INTO Children
VALUES ('nm0000506', 'Charlie', 'Hall');

INSERT INTO Children
VALUES ('nm000206', 'Ruby','Esposito');
 
INSERT INTO Children
VALUES ('nm000206', 'Shayne Lyra', 'Esposito');

INSERT INTO Children
VALUES ('nm000206', 'Kale Lyn', 'Esposito');

INSERT INTO Children
VALUES ('nm000206', 'Syrlucia', 'Esposito');

INSERT INTO Children
VALUES ('nm0005342', 'Mingus', 'Reedus');

INSERT INTO Children
VALUES ('nm0523180', 'Sagan Carter', 'Lowenthal');

ALTER TABLE Review
ADD CONSTRAINT review_movie_id_fk FOREIGN KEY(Movie_ID)
REFERENCES Multimedia(M_ID);

ALTER TABLE Showing
ADD CONSTRAINT showing_movie_id_fk FOREIGN KEY(Movie_ID)
REFERENCES Multimedia(M_ID);

ALTER TABLE Showing
ADD CONSTRAINT showing_theater_name_fk FOREIGN KEY(Theater_name)
REFERENCES Theater(Name);

ALTER TABLE Cast_In
ADD CONSTRAINT cast_in_star_id_fk FOREIGN KEY(Star_ID)
REFERENCES Person(P_ID);

ALTER TABLE Cast_In
ADD CONSTRAINT cast_in_movie_id_fk FOREIGN KEY(Movie_ID)
REFERENCES Multimedia(M_ID);

ALTER TABLE Appears_In
ADD CONSTRAINT appears_in_star_id_fk FOREIGN KEY(Star_ID)
REFERENCES Person(P_ID);

ALTER TABLE Appears_In
ADD CONSTRAINT appears_in_tv_id_fk FOREIGN KEY(TV_ID)
REFERENCES Multimedia(M_ID);

ALTER TABLE Voice_In
ADD CONSTRAINT voice_in_star_id_fk FOREIGN KEY(Star_ID)
REFERENCES Person(P_ID);

ALTER TABLE Voice_In
ADD CONSTRAINT voice_in_vg_id_fk FOREIGN KEY(VG_ID)
REFERENCES Multimedia(M_ID);

ALTER TABLE Individual_Award
ADD CONSTRAINT individual_award_star_id_fk FOREIGN KEY(Star_ID)
REFERENCES Person(P_ID);

ALTER TABLE Show_Times
ADD CONSTRAINT show_times_th_name_fk FOREIGN KEY(Th_Name)
REFERENCES Theater(Name);

ALTER TABLE Publicity_Listings
ADD CONSTRAINT pub_list_person_id_pk FOREIGN KEY(Person_ID)
REFERENCES Person(P_ID);

ALTER TABLE Children
ADD CONSTRAINT children_person_id_fk FOREIGN KEY(Person_ID)
REFERENCES Person(P_ID);

ALTER TABLE Quotes
ADD CONSTRAINT quotes_star_id_fk FOREIGN KEY(Star_ID)
REFERENCES Person(P_ID);

ALTER TABLE Trademarks
ADD CONSTRAINT trademarks_director_id_fk FOREIGN KEY(Director_ID)
REFERENCES Person(P_ID);

ALTER TABLE Genres
ADD CONSTRAINT genres_mm_id_fk FOREIGN KEY(MM_ID)
REFERENCES Multimedia(M_ID);

ALTER TABLE Languages
ADD CONSTRAINT lang_mm_id_fk FOREIGN KEY(MM_ID)
REFERENCES Multimedia(M_ID);

ALTER TABLE Production_Companies
ADD CONSTRAINT prod_comp_id_fk FOREIGN KEY(MM_ID)
REFERENCES Multimedia(M_ID);
