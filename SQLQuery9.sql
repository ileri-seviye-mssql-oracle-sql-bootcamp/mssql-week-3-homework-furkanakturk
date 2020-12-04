--x numaral� �r�n� en fazla sipari� veren �ehri bulunuz.

select top(1)seh.Isim,count(s.faturaKod) 'fatura sayisi' from tblUrun u
inner join tblSiparisDetay sd on sd.urunKod=u.urunKod
inner join tblSiparis s on s.faturaKod=sd.faturaKod
inner join tblKullanici k on k.kullaniciKod=s.kullaniciKod
inner join tblSiparisDurum sdu on sdu.siparisDurumKod=s.siparisDurumKod
inner join tblSehir seh on seh.Id=k.sehir

where u.urunAd = 'yapay zeka' --and sdu.siparisDurumKod=3

group by seh.Isim order by [fatura sayisi] desc


