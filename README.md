# dvdrental_postgreSQL
dvdrental_postgreSQL sorgu örnekleri

# SQL Sorguları

Aşağıda, farklı veri talepleri için kullanılan SQL sorguları yer almaktadır:

## 1. Film Başlıkları ve Açıklamaları
Bu sorgu, tüm filmlerin başlıklarını ve açıklamalarını alır.
`SELECT title, description FROM film;`

## 2. Film Uzunluğu 60 ile 75 Dakika Arasında Olanlar
Bu sorgu, film uzunluğu 60 ile 75 dakika arasında olan filmleri, uzunluğa göre artan sırayla listeler.
`SELECT * FROM film WHERE (length > 60) AND (length < 75) ORDER BY length ASC;`

## 3. Belirli Rental Rate ve Replacement Cost Değerine Sahip Filmler
Bu sorgu, rental_rate 0.99 olan ve replacement_cost 12.99 veya 28.99 olan filmleri, replacement_cost'a göre artan sırayla listeler.
`SELECT * FROM film WHERE (rental_rate = 0.99) AND (replacement_cost = 12.99) OR (replacement_cost = 28.99) ORDER BY replacement_cost ASC;`

## 4. İlk Adı 'Mary' Olan Müşterilerin Soyadları
Bu sorgu, first_name'i 'Mary' olan müşterilerin soyadlarını listeler.
`SELECT last_name FROM customer WHERE first_name = 'Mary';`

## 5. Belirli Uzunluk ve Rental Rate Değerine Sahip Olmayan Filmler
Bu sorgu, film uzunluğu 50'den büyük olmayan ve rental_rate 2.99 veya 4.99 olmayan filmleri, uzunluğa göre artan sırayla listeler.
`SELECT * FROM film WHERE NOT (length > 50) AND NOT (rental_rate = 2.99 OR rental_rate = 4.99) ORDER BY length ASC;`
