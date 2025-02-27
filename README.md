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
