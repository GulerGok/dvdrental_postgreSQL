--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    birthday DATE NOT NULL,
    email VARCHAR(100) NOT NULL
); 

--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (name, birthday, email) values ('Phylys Bellwood', '1908-08-30', 'pbellwood0@engadget.com');
insert into employee (name, birthday, email) values ('Terra Hein', '1992-01-27', 'thein1@cmu.edu');
insert into employee (name, birthday, email) values ('Saundra Woolger', '2011-07-21', 'swoolger2@abc.net.au');
insert into employee (name, birthday, email) values ('Paule Stickels', '1921-07-27', 'pstickels3@pinterest.com');
insert into employee (name, birthday, email) values ('Harris Briatt', '1948-07-18', 'hbriatt4@studiopress.com');
insert into employee (name, birthday, email) values ('Abran Shepherdson', '1918-04-15', 'ashepherdson5@free.fr');
insert into employee (name, birthday, email) values ('Gannon Foucar', '1948-06-26', 'gfoucar6@columbia.edu');
insert into employee (name, birthday, email) values ('Marcie Sawtell', '1921-02-08', 'msawtell7@pbs.org');
insert into employee (name, birthday, email) values ('Meggie Cestard', '1997-11-30', 'mcestard8@webnode.com');
insert into employee (name, birthday, email) values ('Sibella Corradino', '1983-10-02', 'scorradino9@disqus.com');
insert into employee (name, birthday, email) values ('Rickert Becke', '2007-03-18', 'rbeckea@addthis.com');
insert into employee (name, birthday, email) values ('Maison Luten', '1973-06-02', 'mlutenb@spotify.com');
insert into employee (name, birthday, email) values ('Fleur Woollin', '1951-09-20', 'fwoollinc@washington.edu');
insert into employee (name, birthday, email) values ('Elenore Meus', '1949-10-05', 'emeusd@weibo.com');
insert into employee (name, birthday, email) values ('Caron Tampen', '1929-10-21', 'ctampene@deviantart.com');
insert into employee (name, birthday, email) values ('Sibylla Blacklawe', '1923-08-13', 'sblacklawef@tumblr.com');
insert into employee (name, birthday, email) values ('Bail Aldhous', '1938-08-05', 'baldhousg@miitbeian.gov.cn');
insert into employee (name, birthday, email) values ('Basil Parr', '1938-11-14', 'bparrh@1und1.de');
insert into employee (name, birthday, email) values ('Yolanthe Hasted', '2000-07-13', 'yhastedi@senate.gov');
insert into employee (name, birthday, email) values ('Hoyt Mansbridge', '1926-05-17', 'hmansbridgej@noaa.gov');
insert into employee (name, birthday, email) values ('Cobb Bortol', '1927-08-16', 'cbortolk@globo.com');
insert into employee (name, birthday, email) values ('Burg Murty', '1972-03-25', 'bmurtyl@amazon.com');
insert into employee (name, birthday, email) values ('Lavina Fazackerley', '1929-05-05', 'lfazackerleym@usda.gov');
insert into employee (name, birthday, email) values ('Cris Avramow', '1922-10-12', 'cavramown@51.la');
insert into employee (name, birthday, email) values ('Corrie Thrift', '1907-11-12', 'cthrifto@answers.com');
insert into employee (name, birthday, email) values ('Reed Budgen', '1904-09-06', 'rbudgenp@who.int');
insert into employee (name, birthday, email) values ('Guinevere Pheby', '1918-12-19', 'gphebyq@pagesperso-orange.fr');
insert into employee (name, birthday, email) values ('Weber Dionisi', '2004-01-07', 'wdionisir@fema.gov');
insert into employee (name, birthday, email) values ('Sylvan Ollerhad', '1956-09-30', 'sollerhads@posterous.com');
insert into employee (name, birthday, email) values ('Stephanie McQuilliam', '1942-04-03', 'smcquilliamt@a8.net');
insert into employee (name, birthday, email) values ('Jacki Moorerud', '2004-03-14', 'jmoorerudu@photobucket.com');
insert into employee (name, birthday, email) values ('Karlene Earnshaw', '1915-02-11', 'kearnshawv@ning.com');
insert into employee (name, birthday, email) values ('Deonne Martell', '1934-03-24', 'dmartellw@histats.com');
insert into employee (name, birthday, email) values ('Cosmo Skeermor', '2020-07-28', 'cskeermorx@unc.edu');
insert into employee (name, birthday, email) values ('Roberto Searjeant', '1951-05-16', 'rsearjeanty@boston.com');
insert into employee (name, birthday, email) values ('Lucien Grahamslaw', '1973-02-01', 'lgrahamslawz@berkeley.edu');
insert into employee (name, birthday, email) values ('Cahra McReedy', '1976-06-26', 'cmcreedy10@princeton.edu');
insert into employee (name, birthday, email) values ('Lilly Oleshunin', '1910-05-15', 'loleshunin11@blog.com');
insert into employee (name, birthday, email) values ('Carter Haster', '1938-02-24', 'chaster12@nymag.com');
insert into employee (name, birthday, email) values ('Mollie Dytham', '2024-05-30', 'mdytham13@pinterest.com');
insert into employee (name, birthday, email) values ('Rois Phizackerly', '1980-04-16', 'rphizackerly14@constantcontact.com');
insert into employee (name, birthday, email) values ('Isidor Bezant', '1908-10-28', 'ibezant15@vkontakte.ru');
insert into employee (name, birthday, email) values ('Renaldo Ruspine', '2023-06-23', 'rruspine16@bluehost.com');
insert into employee (name, birthday, email) values ('Annmaria Alleway', '2017-11-23', 'aalleway17@wired.com');
insert into employee (name, birthday, email) values ('Ula Smitham', '2002-03-15', 'usmitham18@rambler.ru');
insert into employee (name, birthday, email) values ('Ceil Lucks', '1969-05-05', 'clucks19@umich.edu');
insert into employee (name, birthday, email) values ('Blinnie Jonsson', '1961-11-02', 'bjonsson1a@plala.or.jp');
insert into employee (name, birthday, email) values ('Skippie Licciardello', '1929-11-10', 'slicciardello1b@smugmug.com');
insert into employee (name, birthday, email) values ('Adham Tozer', '1976-06-25', 'atozer1c@hibu.com');
insert into employee (name, birthday, email) values ('El Greengrass', '1949-03-30', 'egreengrass1d@sbwire.com');

--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET birthday = '"1948-08-30"', email = 'update1@example.com'
WHERE name = 'Phylys Bellwood';

UPDATE employee
SET name = 'Harry Woolger', email = 'update2@example.com'
WHERE birthday = '"1992-01-27"';

UPDATE employee
SET name = 'Update3', birthday = '"2011-07-21"'
WHERE email = 'hbriatt4@studiopress.com';

UPDATE employee
SET name = 'Tom Star', birthday = '1988-07-22', email = 'update4@example.com'
WHERE id = 3;

UPDATE employee
SET email = 'update5@example.com'
WHERE name = 'Paule Stickels' AND birthday = '1921-07-27';

--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE name = 'Abran Shepherdson';

DELETE FROM employee
WHERE birthday = '1948-06-26';

DELETE FROM employee
WHERE email = 'msawtell7@pbs.org';

DELETE FROM employee
WHERE id = 9;

DELETE FROM employee
WHERE name = 'Sibella Corradino' AND birthday = '1983-10-02';