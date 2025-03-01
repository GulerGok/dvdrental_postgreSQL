--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.
--city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT city.city , country.country FROM City
INNER JOIN Country ON City.country_id = Country.country_id;

--customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT Payment.payment_id , Customer.first_name , Customer.last_name FROM Customer
INNER JOIN Payment ON Customer.customer_id = Payment.customer_id;

--customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.SELECT Payment.payment_id , Customer.first_name , Customer.last_name FROM Customer
SELECT Rental.rental_id , Customer.first_name , Customer.last_name FROM Rental
INNER JOIN Customer ON Rental.customer_id = Customer.customer_id; 