--En yüksek toplam fiyata sahip faturaya dahil ürünleri ve faturayý sipariþ veren müþterinin adýný soyadýný listeyen SQL kodunu yazýnýz.


--select top(1)max(toplam),s.faturaKod from tblSiparis s
--group by s.faturaKod order by  max(toplam) desc

--504100

select max(s.toplam) ,u.urunAd, k.isim,k.soyad,s.faturaKod from tblSiparis s
inner join tblSiparisDetay sd on sd.faturaKod=s.faturaKod
inner join tblUrun u on u.urunKod=sd.urunKod
inner join tblKullanici k on k.kullaniciKod=s.kullaniciKod
where s.faturaKod= 504100
group by u.urunAd,k.isim,k.soyad,s.faturaKod
order by max(s.toplam) desc