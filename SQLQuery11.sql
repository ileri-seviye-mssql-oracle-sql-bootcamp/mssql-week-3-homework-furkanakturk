--Ad� A ile ba�lay�p soyad�nda ak ge�en m��terilerden en fazla sipari� vereni bulunuz.

select top(1)k.isim, count(s.faturaKod) 'fatura sayisi' from tblKullanici k
inner join tblSiparis s on s.kullaniciKod=k.kullaniciKod
inner join tblSiparisDurum sdu on sdu.siparisDurumKod=s.siparisDurumKod

where k.kullaniciAd like 'a%'and k.soyad like '%ak%' --and sdu.siparisDurumKod=3

group by k.isim 