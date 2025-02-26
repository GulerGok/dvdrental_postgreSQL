# Ödev1 (postgreSQL üzerinde dvdrental veritabanıyla çalışma) 
Sorgu örneklerini [bu link](https://neon.tech/postgresql/postgresql-getting-started/postgresql-sample-database) üzerinden ulaştığımız veritabanı ile çalıştırabiliriz.

## SQL Sorguları

Aşağıda, farklı veri talepleri için kullanılan SQL sorguları yer almaktadır:

## 1. Film Başlıkları ve Açıklamaları
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

## 1. Replacement cost Değeri 12.99'dan Büyük Eşit ve 16.99'dan Küçük Olma Koşuluyla Film Tablosundaki Veriler
Bu sorgu, değiştirme maliyetine göre artan sırayla listeler.
```sql
SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.99 ORDER BY replacement_cost ASC;
```

## 2. Actor Tablosunda First Name Değeri 'Penelope', 'Nick' veya 'Ed' Olan Kayıtlar
Bu sorgu, isme göre alfabetik olarak artan sırayla listeler.
```sql
SELECT first_name, last_name FROM actor WHERE first_name IN('Penelope', 'Nick', 'Ed') ORDER BY first_name ASC;
```

## 3. Film Tablosunda Rental Rate Değeri 0.99, 2.99, 4.99 ve Replacement Cost Değeri 12.99, 15.99, 28.99 Olan Kayıtlar
Bu sorgu, kiralama maliyetine göre artan sırayla listeler.
```sql
SELECT * FROM film WHERE rental_rate IN(0.99, 2.99, 4.99) AND replacement_cost IN(12.99, 15.99, 28.99) ORDER BY rental_rate ASC;
```
***

# Ödev2

## 1. Ülke ismi 'A' ile başlayıp 'a' ile bitenler:
Bu sorgu, country tablosundaki country sütunundaki, 'A' harfi ile başlayıp 'a' harfi ile biten tüm ülke isimlerini listeleyecektir.
```sql
SELECT country FROM country WHERE country LIKE 'A%a';
```

## 2. En az 6 karakterden oluşan ve sonu 'n' harfiyle biten ülke isimleri:
Bu sorgu, en az 6 karakter uzunluğunda olan ve sonu 'n' harfi ile biten ülke isimlerini seçer.
```sql
SELECT country FROM country WHERE LENGTH(country) >= 6AND country LIKE '%n';
```

## 3. En az 4 'T' harfi içeren film isimlerini listeleme (büyük/küçük harf fark etmeksizin):
Bu sorgu, title sütunundaki filmlerden en az 4 't' harfi içerenleri seçer. LOWER fonksiyonu, büyük/küçük harf farkını ortadan kaldırır ve REPLACE ile 't' harflerini sayar.
```sql
SELECT * FROM film WHERE LENGTH(LOWER(title)) - LENGTH(REPLACE(LOWER(title), 't', '')) >= 4;
```

## 4. Başlık 'C' ile başlayıp, uzunluğu 90'dan büyük ve rental_rate 2.99 olan filmleri listeleme:
Bu sorgu, başlığı 'C' ile başlayan, uzunluğu 90'dan büyük ve rental_rate değeri 2.99 olan filmleri seçer.
```sql
SELECT * FROM film WHERE title LIKE 'C%' AND LENGTH(title) > 90 AND rental_rate = 2.99;
```


