-- UPDATE

UPDATE uzytkownik SET email_uzytkownik = 'MARCINNOWAK@GMAIL.COM' WHERE id_uzytkownik = 3;
UPDATE uzytkownik SET kod_pocztowy_uzytkownik = '54-115' WHERE id_uzytkownik = 2;
UPDATE transakcja SET nr_rachunku = '55555030027009866953412630' WHERE nr_rachunku = '33124030027009866953412630';
UPDATE uzytkownik SET miasto_uzytkownik = 'MAGNICE' WHERE miasto_uzytkownik = 'WROCLAW' AND adres_1_uzytkownik = 'JOANNICKA';
UPDATE uzytkownik SET kod_pocztowy_uzytkownik = '54-115' WHERE miasto_uzytkownik = 'WROCLAW' OR miasto_uzytkownik = 'MAGNICE';
UPDATE uzytkownik SET imie_uzytkownik = 'ADAM', nazwisko_uzytkownik = 'ZIOBROWSKI' WHERE miasto_uzytkownik = 'MAGNICE';
UPDATE uzytkownik SET imie_uzytkownik = 'DOMINIK' WHERE email_uzytkownik = 'MNOWAK@GMAIL.COM';
UPDATE uzytkownik SET nazwisko_uzytkownik = 'GAŁENZA' WHERE imie_uzytkownik = 'DOMINIK';
UPDATE uzytkownik SET imie_uzytkownik = 'JANEK', nazwisko_uzytkownik = 'POLAK' WHERE miasto_uzytkownik = 'WROCLAW' AND adres_2_uzytkownik = '417';
UPDATE uzytkownik SET email_uzytkownik = 'TOBYBYLONATYLE@GMAIL.COM' WHERE email_uzytkownik = 'MNOWAK@GMAIL.COM';