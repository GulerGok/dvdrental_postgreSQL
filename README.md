# Ödev1 (postgreSQL üzerinde dvdrental veritabanıyla çalışma) 
Sorgu örneklerini [bu link](https://neon.tech/postgresql/postgresql-getting-started/postgresql-sample-database) üzerinden ulaştığımız veritabanı ile çalıştırabiliriz.

## SQL Sorguları

Aşağıda, farklı veri talepleri için kullanılan SQL sorguları yer almaktadır:

### 1. Film Başlıkları ve Açıklamaları
Bu sorgu, tüm filmlerin başlıklarını ve açıklamalarını alır.
 ```sql 
 SELECT title, description FROM film; 
 ```

### 2. Film Uzunluğu 60 ile 75 Dakika Arasında Olanlar
Bu sorgu, film uzunluğu 60 ile 75 dakika arasında olan filmleri, uzunluğa göre artan sırayla listeler.
 ```sql 
 SELECT * FROM film WHERE (length > 60) AND (length < 75) ORDER BY length ASC;
 ```

### 3. Belirli Rental Rate ve Replacement Cost Değerine Sahip Filmler
Bu sorgu, rental_rate 0.99 olan ve replacement_cost 12.99 veya 28.99 olan filmleri, replacement_cost'a göre artan sırayla listeler.
```sql
SELECT * FROM film WHERE (rental_rate = 0.99) AND (replacement_cost = 12.99) OR (replacement_cost = 28.99) ORDER BY replacement_cost ASC;
```

### 4. İlk Adı 'Mary' Olan Müşterilerin Soyadları
Bu sorgu, first_name'i 'Mary' olan müşterilerin soyadlarını listeler.
acement_cost ASC;
```sql
SELECT last_name FROM customer WHERE first_name = 'Mary';
```

### 5. Belirli Uzunluk ve Rental Rate Değerine Sahip Olmayan Filmler
Bu sorgu, film uzunluğu 50'den büyük olmayan ve rental_rate 2.99 veya 4.99 olmayan filmleri, uzunluğa göre artan sırayla listeler.
```sql
SELECT * FROM film WHERE NOT (length > 50) AND NOT (rental_rate = 2.99 OR rental_rate = 4.99) ORDER BY length ASC;
```

***
# Ödev2

### 1. Replacement cost Değeri 12.99'dan Büyük Eşit ve 16.99'dan Küçük Olma Koşuluyla Film Tablosundaki Veriler
Bu sorgu, değiştirme maliyetine göre artan sırayla listeler.
```sql
SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.99 ORDER BY replacement_cost ASC;
```

### 2. Actor Tablosunda First Name Değeri 'Penelope', 'Nick' veya 'Ed' Olan Kayıtlar
Bu sorgu, isme göre alfabetik olarak artan sırayla listeler.
```sql
SELECT first_name, last_name FROM actor WHERE first_name IN('Penelope', 'Nick', 'Ed') ORDER BY first_name ASC;
```

### 3. Film Tablosunda Rental Rate Değeri 0.99, 2.99, 4.99 ve Replacement Cost Değeri 12.99, 15.99, 28.99 Olan Kayıtlar
Bu sorgu, kiralama maliyetine göre artan sırayla listeler.
```sql
SELECT * FROM film WHERE rental_rate IN(0.99, 2.99, 4.99) AND replacement_cost IN(12.99, 15.99, 28.99) ORDER BY rental_rate ASC;
```
***

# Ödev3

### 1. Ülke İsmi 'A' ile Başlayıp 'a' ile Bitenler:
Bu sorgu, country tablosundaki country sütunundaki, 'A' harfi ile başlayıp 'a' harfi ile biten tüm ülke isimlerini listeleyecektir.
```sql
SELECT country FROM country WHERE country LIKE 'A%a';
```

### 2. En Az 6 Karakterden Oluşan ve Sonu 'n' Harfiyle Biten Ülke İsimleri:
Bu sorgu, en az 6 karakter uzunluğunda olan ve sonu 'n' harfi ile biten ülke isimlerini seçer.
```sql
SELECT country FROM country WHERE LENGTH(country) >= 6AND country LIKE '%n';
```

### 3. En Az 4 'T' Harfi İçeren Film İsimlerini Listeleme (Büyük/Küçük Harf Fark Etmeksizin):
Bu sorgu, title sütunundaki filmlerden en az 4 't' harfi içerenleri seçer. LOWER fonksiyonu, büyük/küçük harf farkını ortadan kaldırır ve REPLACE ile 't' harflerini sayar.
```sql
SELECT * FROM film WHERE LENGTH(LOWER(title)) - LENGTH(REPLACE(LOWER(title), 't', '')) >= 4;
```

### 4. Başlık 'C' ile Başlayıp, Uzunluğu 90'dan Büyük ve rental_rate 2.99 Olan Filmleri Listeleme:
Bu sorgu, başlığı 'C' ile başlayan, uzunluğu 90'dan büyük ve rental_rate değeri 2.99 olan filmleri seçer.
```sql
SELECT * FROM film WHERE title LIKE 'C%' AND LENGTH(title) > 90 AND rental_rate = 2.99;
```
***

# Ödev4

### 1. Film Tablosunda Bulunan replacement_cost Sütununda Bulunan Birbirinden Farklı Değerleri Sıralama:
Bu sorgu, film tablosundaki replacement_cost sütununda bulunan birbirinden farklı değerleri küçükten büyüğe doğru sıralar. 
```sql
SELECT DISTINCT replacement_cost FROM film ORDER BY replacement_cost ASC;
```

### 2. Film Tablosunda Bulunan replacement_cost Sütununda Birbirinden Farklı Kaç Tane Verinin Olduğunu Bulma:
Bu sorgu, film tablosundaki replacement_cost sütununda bulunan birbirinden farklı değerlerin sayısını döndürür.
```sql
SELECT COUNT(DISTINCT replacement_cost) FROM film;
```

### 3. Film İsimlerinde (title) 'T' Karakteri ile Başlayan ve Rating 'G' Olanların Sayısını Bulma:
Bu sorgu, başlıkları 'T' harfi ile başlayan ve rating değeri 'G' olan filmlerin sayısını döndürecektir.
```sql
SELECT COUNT(*) FROM film WHERE title LIKE 'T%' AND rating = 'G';
```

### 4. Country Tablosunda Bulunan Ülke İsimlerinden 5 Karakterden Oluşanların Sayısını Bulma:
Bu sorgu, country tablosunda bulunan 5 karakterden oluşan ülke isimlerinin sayısını döndürecektir.
```sql
SELECT COUNT(*) FROM country WHERE LENGTH(country) = 5;
```

### 5. City Tablosundaki Şehir İsimlerinin 'R' veya 'r' Karakteri ile Bitenlerin Sayısını Bulma:
Bu sorgu, city tablosundaki şehir isimlerinin sonu 'R' veya 'r' harfi ile biten şehirlerin sayısını döndürecektir.
```sql
SELECT COUNT(*) FROM city WHERE city ILIKE '%r';
```
***

# Ödev5

### 1. Film Tablosunda Bulunan ve Film İsmi (title) 'n' Karakteri ile Biten En Uzun (length) 5 Filmi Sıralama:
Bu sorgu, title'ı 'n' ile biten ve en uzun (length) olan 5 filmi sıralar.
```sql
SELECT title, length FROM film WHERE title ILIKE '%n' ORDER BY length DESC LIMIT 5;
```

### 2. Film Tablosunda Bulunan ve Film İsmi (title) 'n' Karakteri ile Biten En Kısa (length) İkinci (6, 7, 8, 9, 10) 5 Filmi Sıralama:
Bu sorgu, title'ı 'n' ile biten ve en kısa uzunlukta olan ikinci grup (6, 7, 8, 9, 10) filmleri sıralar.
```sql
SELECT title, length FROM film WHERE title ILIKE '%n' ORDER BY length ASC LIMIT 5 OFFSET 5;
```

### 3. Customer Tablosunda Bulunan Last Name Sütununa Göre Azalan Yapılan Sıralamada Store_id 1 Olmak Koşuluyla İlk 4 Veriyi Sıralama:
Bu sorgu, store_id değeri 1 olan müşterilerin last_name sütununa göre azalan sırayla ilk 4 verisini getirir.
```sql
SELECT * FROM customer WHERE store_id = 1 ORDER BY last_name DESC LIMIT 4;
```
***

# Ödev6

### 1. Film Tablosunda Bulunan Rental Rate Değerlerinin Ortalamasını Sıralama:
Bu sorgu, rental_rate sütunundaki değerlerin ortalamasını hesaplar.
```sql
SELECT AVG(rental_rate) AS average_rental_rate FROM film;
```

### 2. Film Tablosunda Bulunan Filmlerden Kaç Tanesi 'C' Karakteri ile Başladığını Bulma:
Bu sorgu, title sütununda 'C' harfi ile başlayan filmlerin sayısını hesaplar.
```sql
SELECT COUNT(*) AS count_films_starting_with_C FROM film WHERE title ILIKE 'C%';
```

### 3. Film Tablosunda Bulunan Filmlerden Rental Rate Değeri 0.99’a Eşit Olan En Uzun (Length) Film Kaç Dakika Olduğunu Bulma:
Bu sorgu, rental_rate değeri 0.99 olan filmlerden en uzun olanının length değerini bulur.
```sql
SELECT MAX(length) AS longest_movie_length FROM film WHERE rental_rate = 0.99;
```

### 4. Film Tablosunda Bulunan Filmlerin Uzunluğu 150 Dakikadan Büyük Olanlarına Ait Kaç Farklı Replacement Cost Değeri Olduğunu Bulma:
Bu sorgu, length değeri 150 dakikadan büyük olan filmler için replacement_cost değerlerinin farklı sayısını hesaplar.
```sql
SELECT COUNT(DISTINCT replacement_cost) AS distinct_replacement_costs FROM film WHERE length > 150;
```
***

# Ödev7

### 1. Film Tablosunda Bulunan Filmleri Rating Değerlerine Göre Gruplama:
Bu sorgu, rating değerlerine göre film tablosundaki filmleri gruplar ve her bir grup için film sayısını hesaplar. Sonuçlar, film sayısına göre azalan sırayla sıralanır.
```sql
SELECT rating, COUNT(*) AS film_count FROM film GROUP BY rating ORDER BY film_count DESC;
```

### 2. Film Tablosunda Bulunan Filmleri Replacement Cost Sütununa Göre Grupladığımızda, Film Sayısı 50'den Fazla Olan Replacement Cost Değerini ve Karşılık Gelen Film Sayısını Sıralama:
Bu sorgu, replacement_cost sütununa göre filmleri gruplar ve her bir grup için film sayısını hesaplar. Sadece 50'den fazla film bulunan replacement_cost değerleri ve bu değerlere karşılık gelen film sayıları döndürülür.
```sql
SELECT replacement_cost, COUNT(*) AS film_count FROM film GROUP BY replacement_cost HAVING COUNT(*)>50 ORDER BY film_count DESC;
```

### 3. Customer Tablosunda Bulunan Store_id Değerlerine Karşılık Gelen Müşteri Sayılarını Bulma:
Bu sorgu, store_id değerlerine göre customer tablosundaki müşteri sayısını hesaplar.
```sql
SELECT store_id, COUNT(*) AS customer_count FROM customer GROUP BY store_id;
```

### 4. City Tablosunda Bulunan Şehir Verilerini Country_id Sütununa Göre Gruplandırdıktan Sonra En Fazla Şehir Sayısı Barındıran Country_id Bilgisini ve Şehir Sayısını Paylaşma:
Bu sorgu, country_id sütununa göre city tablosundaki şehirleri gruplar ve her bir country_id için şehir sayısını hesaplar. En fazla şehir barındıran country_id bilgisi ve şehir sayısı döndürülür.
```sql
SELECT country_id, COUNT(*) AS city_count FROM city GROUP BY country_id ORDER BY city_count DESC LIMIT 1;
```
***

# Ödev 8

### 1. CREATE TABLE İşlemi:
Bu sorgu, employee adında bir tablo oluşturur. Tabloda her bir çalışanın id, name, birthday ve email bilgileri yer alır.
id sütunu otomatik artan (SERIAL) bir birincil anahtar olarak tanımlanır.
name, birthday, ve email sütunları boş olamaz (NOT NULL).
```sql
CREATE TABLE employee(
    id SERIAL PRIMARY KEY,        -- id: Otomatik artan birincil anahtar (Primary Key)
    name VARCHAR(50) NOT NULL,     -- name: Çalışan adı, boş olamaz
    birthday DATE NOT NULL,        -- birthday: Çalışanın doğum tarihi, boş olamaz
    email VARCHAR(100) NOT NULL    -- email: Çalışanın e-posta adresi, boş olamaz
);
```

### 2. INSERT INTO İşlemleri (50 adet veri eklenmesi):
Bu sorgu, employee tablosuna 50 farklı çalışanın adı, doğum tarihi ve e-posta bilgilerini ekler.
Her INSERT INTO satırı, tablonun ilgili sütunlarına bir çalışanın bilgilerini ekler.
```sql
INSERT INTO employee (name, birthday, email) VALUES 
insert into employee (name, birthday, email) values ('Phylys Bellwood', '1908-08-30', 'pbellwood0@engadget.com'); --Çalışan 1
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
insert into employee (name, birthday, email) values ('El Greengrass', '1949-03-30', 'egreengrass1d@sbwire.com'); --Çalışan 50
```

### 3. UPDATE İşlemleri (5 adet güncelleme):
Bu sorgular, belirli koşullara göre çalışan bilgilerini günceller.
Her bir UPDATE sorgusu, bir veya birden fazla çalışanın bilgilerini belirtilen şartlara göre değiştirir (örneğin, name, birthday, email).
```sql
UPDATE employee
SET birthday = '1948-08-30', email = 'update1@example.com'
WHERE name = 'Phylys Bellwood';  -- Çalışan adı 'Phylys Bellwood' olan kişinin doğum tarihi ve e-posta bilgileri güncelleniyor

UPDATE employee
SET name = 'Harry Woolger', email = 'update2@example.com'
WHERE birthday = '1992-01-27';  -- Doğum tarihi '1992-01-27' olan kişinin adı ve e-posta bilgileri güncelleniyor

UPDATE employee
SET name = 'Update3', birthday = '2011-07-21'
WHERE email = 'hbriatt4@studiopress.com';  -- E-posta adresi 'hbriatt4@studiopress.com' olan kişinin adı ve doğum tarihi güncelleniyor

UPDATE employee
SET name = 'Tom Star', birthday = '1988-07-22', email = 'update4@example.com'
WHERE id = 3;  -- ID'si 3 olan çalışanın adı, doğum tarihi ve e-posta bilgileri güncelleniyor

UPDATE employee
SET email = 'update5@example.com'
WHERE name = 'Paule Stickels' AND birthday = '1921-07-27';  -- Adı 'Paule Stickels' ve doğum tarihi '1921-07-27' olan çalışanın e-posta bilgisi güncelleniyor
```

### 4. DELETE İşlemleri (5 adet silme):
Bu sorgular, employee tablosunda belirli bir çalışanı silmek için kullanılır.
DELETE komutları, belirtilen WHERE koşuluna uyan çalışanı siler. Örneğin, ad, doğum tarihi, e-posta ya da id'ye göre.
```sql
DELETE FROM employee
WHERE name = 'Abran Shepherdson';  -- Adı 'Abran Shepherdson' olan çalışan siliniyor

DELETE FROM employee
WHERE birthday = '1948-06-26';  -- Doğum tarihi '1948-06-26' olan çalışan siliniyor

DELETE FROM employee
WHERE email = 'msawtell7@pbs.org';  -- E-posta adresi 'msawtell7@pbs.org' olan çalışan siliniyor

DELETE FROM employee
WHERE id = 9;  -- ID'si 9 olan çalışan siliniyor

DELETE FROM employee
WHERE name = 'Sibella Corradino' AND birthday = '1983-10-02';  -- Adı 'Sibella Corradino' ve doğum tarihi '1983-10-02' olan çalışan siliniyor
```
***

# Ödev9

### 1. City Tablosu ile Country Tablosunda Bulunan Şehir (city) ve Ülke (country) İsimlerini Birlikte Görebileceğimiz INNER JOIN Sorgusu:
Bu sorgu, City ve Country tablolarını country_id üzerinden birleştirir ve city ve country sütunlarını birlikte listeleyerek şehir ve ülke isimlerini gösterir.
```sql
SELECT city.city, country.country 
FROM City 
INNER JOIN Country ON City.country_id = Country.country_id;
```

### 2. Customer Tablosu ile Payment Tablosunda Bulunan Payment_id ile Customer Tablosundaki First_name ve Last_name İsimlerini Birlikte Görebileceğimiz INNER JOIN Sorgusu:
Bu sorgu, Customer ve Payment tablolarını customer_id üzerinden birleştirir ve payment_id, first_name ve last_name sütunlarını birlikte listeleyerek ödeme kimliklerini ve müşteri isimlerini gösterir.
```sql
SELECT Payment.payment_id, Customer.first_name, Customer.last_name 
FROM Customer 
INNER JOIN Payment ON Customer.customer_id = Payment.customer_id;
```

### 3. Customer Tablosu ile Rental Tablosunda Bulunan Rental_id ile Customer Tablosundaki First_name ve Last_name İsimlerini Birlikte Görebileceğimiz INNER JOIN Sorgusu:
Bu sorgu, Rental ve Customer tablolarını customer_id üzerinden birleştirir ve rental_id, first_name ve last_name sütunlarını birlikte listeleyerek kiralama kimliklerini ve müşteri isimlerini gösterir.
```sql
SELECT Rental.rental_id, Customer.first_name, Customer.last_name 
FROM Rental 
INNER JOIN Customer ON Rental.customer_id = Customer.customer_id;
```