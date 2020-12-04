--Hiç sipariþ vermeyen müþterilerin mesleklerini listeleyiniz.

SELECT k.kullaniciKod, m.meslek from tblSiparis s
inner join tblKullanici k on k.kullaniciKod= s.kullaniciKod
inner join tblMeslek m on m.meslekKod = k.meslekKod
where k.kullaniciKod not in (s.kullanicikod)
