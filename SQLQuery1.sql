--�r�nlerin �r�n ad�, �r�n kodunu ve KDV dahil sat�� fiyat�n� listeleyiniz.

--SELECT * from tblSiparis

--select * from tblSiparisDetay

select u.urunAd, u.urunKod, sd.toplam from tblUrun u
inner join tblSiparisDetay sd on sd.urunKod=u.urunKod
