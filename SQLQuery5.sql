--01.02.2007 - 05.03.2014 tarihleri arasýnda hangi üründen kaç adet sipariþ edildiðini bulan SQL kodunu yazýnýz.

select u.urunAd, sum(sd.adet) from tblUrun u
inner join tblSiparisDetay sd on u.urunKod=sd.urunKod
inner join tblsiparis s on s.faturaKod=sd.faturaKod

where s.siparisTarih between '01.02.2007' and '05.03.2014'
group by u.urunAd