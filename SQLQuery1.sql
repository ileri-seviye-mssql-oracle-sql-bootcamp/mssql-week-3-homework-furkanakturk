--Ürünlerin ürün adý, ürün kodunu ve KDV dahil satýþ fiyatýný listeleyiniz.

--SELECT * from tblSiparis

--select * from tblSiparisDetay

select u.urunAd, u.urunKod, sd.toplam from tblUrun u
inner join tblSiparisDetay sd on sd.urunKod=u.urunKod
