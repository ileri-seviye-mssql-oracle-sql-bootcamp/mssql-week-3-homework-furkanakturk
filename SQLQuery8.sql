--En fazla sipariþ veren meslek grubunu bulunuz.

select top(1)m.meslek, count(s.faturaKod) 'fatura sayisi' from tblMeslek m
inner join tblKullanici k on k.meslekKod= m.meslekKod
inner join tblSiparis s on s.kullaniciKod= k.kullaniciKod
inner join tblSiparisDurum sd on sd.siparisDurumKod=s.siparisDurumKod

--where sd.siparisDurumKod=3 

group by m.meslek order by [fatura sayisi] desc
