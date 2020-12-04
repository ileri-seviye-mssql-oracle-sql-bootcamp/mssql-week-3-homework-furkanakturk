--Ýptal edilen sipariþlerde bulunan ürünleri listeyiniz.
--select * from tblSiparisDurum


select sdu.aciklama,u.urunAd from tblSiparisDurum sdu
inner join tblsiparis s on s.siparisDurumKod= sdu.siparisDurumKod
inner join tblSiparisDetay sd on sd.faturaKod=s.faturaKod
inner join tblUrun u on u.urunKod = sd.urunKod
where sdu.siparisDurumKod=10
--where sdu.aciklama='Ýptal Edildi' neden böyle olmuyor.