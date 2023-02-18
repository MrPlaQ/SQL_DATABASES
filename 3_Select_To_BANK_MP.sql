-- SELEKCJA

SELECT * FROM uzytkownik WHERE adres_1_uzytkownik = 'LEGNICKA' OR adres_1_uzytkownik = 'POGODNA';
SELECT * FROM uzytkownik WHERE adres_2_uzytkownik = '2/14' AND miasto_uzytkownik = 'WROCLAW';
SELECT * FROM transakcja WHERE id_placowka = 1 AND czy_zrealizowano = 1;
SELECT * FROM transakcja WHERE kwota_transakcji = 1400 OR kwota_transakcji = 1900 OR kwota_transakcji = 2200;
SELECT * FROM transakcja WHERE kwota_transakcji = 1400 AND czy_zrealizowano = 0 OR kwota_transakcji = 1900 AND czy_zrealizowano = 1 OR kwota_transakcji = 2200 AND czy_zrealizowano = 1;

-- PROJEKCJA

SELECT imie_uzytkownik, nazwisko_uzytkownik FROM uzytkownik WHERE adres_2_uzytkownik = '2/14' AND miasto_uzytkownik = 'WROCLAW';
SELECT nr_rachunku, data_transakcji FROM transakcja  WHERE kwota_transakcji = 1400 OR kwota_transakcji = 1900 OR kwota_transakcji = 2200;
SELECT imie_uzytkownik, nazwisko_uzytkownik, nr_pesel_uzytkownik FROM uzytkownik WHERE adres_1_uzytkownik = 'LEGNICKA' OR adres_1_uzytkownik = 'POGODNA';
SELECT id_operator, id_priorytet, id_placowka FROM transakcja 
WHERE kwota_transakcji = 1400 AND czy_zrealizowano = 0 OR kwota_transakcji = 1900 AND czy_zrealizowano = 1 OR kwota_transakcji = 2200 AND czy_zrealizowano = 1;
SELECT kwota_transakcji FROM transakcja WHERE id_placowka = 1 AND czy_zrealizowano = 1;

-- ZAPYTANIA Z WIELU TABEL

SELECT * FROM uzytkownik, priorytet;
SELECT imie_uzytkownik, nazwisko_uzytkownik, typ_priorytet FROM uzytkownik, priorytet WHERE typ_priorytet = 'Krytyczny' OR typ_priorytet = 'Wysoki';
SELECT transakcja.kwota_transakcji, uzytkownik.imie_uzytkownik, uzytkownik.nazwisko_uzytkownik
FROM transakcja, uzytkownik
WHERE imie_uzytkownik = 'DOMINIK';
SELECT transakcja.kwota_transakcji, uzytkownik.imie_uzytkownik, uzytkownik.id_uzytkownik
FROM transakcja, uzytkownik
WHERE transakcja.id_uzytkownik = uzytkownik.id_uzytkownik;
SELECT operator.nr_operator, transakcja.nr_rachunku
FROM operator, transakcja
WHERE operator.id_operator = transakcja.id_operator;
SELECT priorytet.typ_priorytet, transakcja.nr_rachunku
FROM priorytet, transakcja
WHERE priorytet.id_priorytet = transakcja.id_priorytet;
SELECT rodzaj_transakcji.rodzaj_transakcji, transakcja.nr_rachunku
FROM rodzaj_transakcji, transakcja
WHERE rodzaj_transakcji.id_rodzaj_transakcji = transakcja.id_rodzaj_transakcji;
SELECT placowka.nazwa_placowka, transakcja.nr_rachunku
FROM placowka, transakcja
WHERE placowka.id_placowka = transakcja.id_placowka;
SELECT oferta.id_oszczednosci, oszczednosci.typ_oszczednosci
FROM oferta, oszczednosci
WHERE oferta.id_oszczednosci = oszczednosci.id_oszczednosci;
SELECT oferta.id_kredyty, kredyty.typ_kredyty
FROM oferta, kredyty
WHERE oferta.id_kredyty = kredyty.id_kredyty;