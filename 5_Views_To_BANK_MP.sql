-- WIDOKI

CREATE VIEW PLATNOSCI_KLIENTA AS
SELECT transakcja.kwota_transakcji, uzytkownik.imie_uzytkownik, uzytkownik.nazwisko_uzytkownik
FROM transakcja, uzytkownik
WHERE imie_uzytkownik = 'DOMINIK';

CREATE VIEW RODZAJE_OSZCZEDNOSCI AS
SELECT oferta.id_oszczednosci, oszczednosci.typ_oszczednosci
FROM oferta, oszczednosci
WHERE oferta.id_oszczednosci = oszczednosci.id_oszczednosci;

CREATE VIEW TRANSAKCJA_INFO AS
SELECT nr_rachunku, data_transakcji, kwota_transakcji, czy_zrealizowano FROM transakcja

CREATE VIEW DANE_KONTAKTOWE_UZYTKOWNIKA AS
SELECT imie_uzytkownik, nazwisko_uzytkownik, nr_telefonu_uzytkownik, email_uzytkownik 
FROM uzytkownik;

CREATE VIEW DANE_ADRESOWE AS
SELECT adres_1_uzytkownik, adres_2_uzytkownik, kod_pocztowy_uzytkownik, miasto_uzytkownik
FROM uzytkownik;

CREATE VIEW ZLECENIA_PRIORYTETOWE AS
SELECT imie_uzytkownik, nazwisko_uzytkownik, typ_priorytet 
FROM uzytkownik, priorytet 
WHERE typ_priorytet = 'Krytyczny' OR typ_priorytet = 'Wysoki';