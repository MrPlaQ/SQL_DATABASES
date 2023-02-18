-- INSERTY DO TABELI RACHUNKI

INSERT INTO rachunki (typ_rachunki) VALUES ('OSOBISTY');
INSERT INTO rachunki (typ_rachunki) VALUES ('OSOBISTY PREMIUM');
INSERT INTO rachunki (typ_rachunki) VALUES ('OSOBISTY EXCLUSIVE PLUS');
INSERT INTO rachunki (typ_rachunki) VALUES ('RODZINNY');
INSERT INTO rachunki (typ_rachunki) VALUES ('JUNIOR');

-- INSERTY DO TABELI KARTY

INSERT INTO karty (typ_karty) VALUES ('VISA PL');
INSERT INTO karty (typ_karty) VALUES ('VISA WALUTOWA');
INSERT INTO karty (typ_karty) VALUES ('VISA KREDYTOWA');
INSERT INTO karty (typ_karty) VALUES ('MASTERCARD PL');
INSERT INTO karty (typ_karty) VALUES ('MASTERCARD WALUTOWA');
INSERT INTO karty (typ_karty) VALUES ('MASTERCARD KREDYTOWA');

-- INSERTY DO TABELI OSZCZEDNOSCI

INSERT INTO oszczednosci (typ_oszczednosci) VALUES ('KONTO OSZCZEDNOSCIOWE');
INSERT INTO oszczednosci (typ_oszczednosci) VALUES ('LOKATA WALUTOWA');
INSERT INTO oszczednosci (typ_oszczednosci) VALUES ('LOKATA KRAJOWA');
INSERT INTO oszczednosci (typ_oszczednosci) VALUES ('KONTO EMERYTALNE');
INSERT INTO oszczednosci (typ_oszczednosci) VALUES ('LOKATA PROMOCYJNA');

-- INSERTY DO TABELI KREDYTY

INSERT INTO kredyty (typ_kredyty) VALUES ('KREDYT GOTOWKOWY');
INSERT INTO kredyty (typ_kredyty) VALUES ('KREDYT HIPOTECZNY');
INSERT INTO kredyty (typ_kredyty) VALUES ('KREDYT KONSOLIDACYJNY');
INSERT INTO kredyty (typ_kredyty) VALUES ('KREDYT INWESTYCYJNY');
INSERT INTO kredyty (typ_kredyty) VALUES ('KREDYT FIRMOWY');

-- INSERTY DO TABELI UBEZPIECZENIA

INSERT INTO ubezpieczenia (typ_ubezpieczenia) VALUES ('UBEZPIECZENIE NIERUCHOMOSCI');
INSERT INTO ubezpieczenia (typ_ubezpieczenia) VALUES ('UBEZPIECZENIE NA ZYCIE');
INSERT INTO ubezpieczenia (typ_ubezpieczenia) VALUES ('UBEZPIECZENIE OC I AC');
INSERT INTO ubezpieczenia (typ_ubezpieczenia) VALUES ('UBEZPIECZENIE ZDROWOTNE');
INSERT INTO ubezpieczenia (typ_ubezpieczenia) VALUES ('UBEZPIECZENIE PODROZY');

-- INSERTY DO TABELI OPERATOR

INSERT INTO operator (nr_operator) VALUES ('1050');
INSERT INTO operator (nr_operator) VALUES ('2050');
INSERT INTO operator (nr_operator) VALUES ('3050');
INSERT INTO operator (nr_operator) VALUES ('4050');
INSERT INTO operator (nr_operator) VALUES ('5050');

-- INSERTY DO TABELI PLACOWKA

INSERT INTO placowka (nazwa_placowka) VALUES ('Centrala Warszawa');
INSERT INTO placowka (nazwa_placowka) VALUES ('Centrala Wroclaw');
INSERT INTO placowka (nazwa_placowka) VALUES ('Centrala Krakow');
INSERT INTO placowka (nazwa_placowka) VALUES ('Centrala Poznan');
INSERT INTO placowka (nazwa_placowka) VALUES ('Centrala Lublin');

-- INSERTY DO TABELI PRIORYTET

INSERT INTO priorytet (typ_priorytet) VALUES ('Krytyczny');
INSERT INTO priorytet (typ_priorytet) VALUES ('Wysoki');
INSERT INTO priorytet (typ_priorytet) VALUES ('Normalny');
INSERT INTO priorytet (typ_priorytet) VALUES ('Niski');

-- INSERTY DO TABELI RODZAJ_TRANSAKCJI

INSERT INTO rodzaj_transakcji (rodzaj_transakcji) VALUES ('WPLATA BANKOMAT');
INSERT INTO rodzaj_transakcji (rodzaj_transakcji) VALUES ('WYPLATA BANKOMAT');
INSERT INTO rodzaj_transakcji (rodzaj_transakcji) VALUES ('PRZELEW WYCHODZACY');
INSERT INTO rodzaj_transakcji (rodzaj_transakcji) VALUES ('PRZELEW PRZYCHODZACY');
INSERT INTO rodzaj_transakcji (rodzaj_transakcji) VALUES ('WPLATA PLACOWKA');
INSERT INTO rodzaj_transakcji (rodzaj_transakcji) VALUES ('WYPLATA PLACOWKA');

-- INSERTY DO TABELI UZYTKOWNIK

INSERT INTO uzytkownik
VALUES ('MARCIN','NOWAK','84070188240','606888210','LEGNICKA','417','54-130','WROCLAW','MNOWAK@GMAIL.COM');
INSERT INTO uzytkownik
VALUES ('BOGDAN','STACHOWIAK','56050382290','671823230','UGODNA','2/14','54-130','WROCLAW','MNOWAK@GMAIL.COM');
INSERT INTO uzytkownik
VALUES ('JAN','WOLNY','61010192290','671823230','POGODNA','2/14','48-120','BRANICE','MNOWAK@GMAIL.COM');
INSERT INTO uzytkownik
VALUES ('ANDRZEJ','STACHOWIAK','77020112567','543823777','BARSKA','2/14','74-223','SZCZECIN','MNOWAK@GMAIL.COM');
INSERT INTO uzytkownik
VALUES ('ZBIGNIEW','KOWALSKI','90052708989','533266789','JOANNICKA','81/5','56-120','WROCLAW','MNOWAK@GMAIL.COM');

-- INSERTY DO TABELI TRANSAKCJA

INSERT INTO transakcja VALUES (
(SELECT id_operator FROM operator WHERE nr_operator = '1050'), 
(SELECT id_rodzaj_transakcji FROM rodzaj_transakcji WHERE rodzaj_transakcji = 'WPLATA BANKOMAT'),
(SELECT id_priorytet FROM priorytet WHERE typ_priorytet = 'Wysoki'),
(SELECT id_uzytkownik FROM uzytkownik WHERE nr_pesel_uzytkownik = '56050382290'),
(SELECT id_placowka FROM placowka WHERE nazwa_placowka = 'Centrala Warszawa'),
'51011129645149820247048493','09.08.2020 11:32:15','1200','1');
INSERT INTO transakcja VALUES (
(SELECT id_operator FROM operator WHERE nr_operator = '5050'), 
(SELECT id_rodzaj_transakcji FROM rodzaj_transakcji WHERE rodzaj_transakcji = 'PRZELEW PRZYCHODZACY'),
(SELECT id_priorytet FROM priorytet WHERE typ_priorytet = 'Krytyczny'),
(SELECT id_uzytkownik FROM uzytkownik WHERE nr_pesel_uzytkownik = '61010192290'),
(SELECT id_placowka FROM placowka WHERE nazwa_placowka = 'Centrala Lublin'),
'28888200060712944715490859','12.03.2021 21:22:01','1400','1');
INSERT INTO transakcja VALUES (
(SELECT id_operator FROM operator WHERE nr_operator = '5050'), 
(SELECT id_rodzaj_transakcji FROM rodzaj_transakcji WHERE rodzaj_transakcji = 'PRZELEW WYCHODZACY'),
(SELECT id_priorytet FROM priorytet WHERE typ_priorytet = 'Normalny'),
(SELECT id_uzytkownik FROM uzytkownik WHERE nr_pesel_uzytkownik = '90052708989'),
(SELECT id_placowka FROM placowka WHERE nazwa_placowka = 'Centrala Warszawa'),
'33124030027009866953412630','01.02.2022 15:12:21','1900','0');
INSERT INTO transakcja VALUES (
(SELECT id_operator FROM operator WHERE nr_operator = '1050'), 
(SELECT id_rodzaj_transakcji FROM rodzaj_transakcji WHERE rodzaj_transakcji = 'WPLATA BANKOMAT'),
(SELECT id_priorytet FROM priorytet WHERE typ_priorytet = 'Normalny'),
(SELECT id_uzytkownik FROM uzytkownik WHERE nr_pesel_uzytkownik = '84070188240'),
(SELECT id_placowka FROM placowka WHERE nazwa_placowka = 'Centrala Krakow'),
'48103011337907416927299621','01.01.2023 19:22:01','2200','1');
INSERT INTO transakcja VALUES (
(SELECT id_operator FROM operator WHERE nr_operator = '2050'), 
(SELECT id_rodzaj_transakcji FROM rodzaj_transakcji WHERE rodzaj_transakcji = 'WYPLATA PLACOWKA'),
(SELECT id_priorytet FROM priorytet WHERE typ_priorytet = 'Normalny'),
(SELECT id_uzytkownik FROM uzytkownik WHERE nr_pesel_uzytkownik = '77020112567'),
(SELECT id_placowka FROM placowka WHERE nazwa_placowka = 'Centrala Wroclaw'),
'62845700081844665248924695','02.08.2004 21:22:06','3200','1');

-- INSERTY DO TABELI OFERTA

INSERT INTO oferta VALUES (
(SELECT id_oszczednosci FROM oszczednosci WHERE typ_oszczednosci = 'KONTO OSZCZEDNOSCIOWE'), 
(SELECT id_kredyty FROM kredyty WHERE typ_kredyty = 'KREDYT GOTOWKOWY'),
(SELECT id_ubezpieczenia FROM ubezpieczenia WHERE typ_ubezpieczenia = 'UBEZPIECZENIE NIERUCHOMOSCI'),
(SELECT id_rachunki FROM rachunki WHERE typ_rachunki = 'OSOBISTY'),
(SELECT id_karty FROM karty WHERE typ_karty = 'VISA PL'));
INSERT INTO oferta VALUES (
(SELECT id_oszczednosci FROM oszczednosci WHERE typ_oszczednosci = 'LOKATA WALUTOWA'), 
(SELECT id_kredyty FROM kredyty WHERE typ_kredyty = 'KREDYT HIPOTECZNY'),
(SELECT id_ubezpieczenia FROM ubezpieczenia WHERE typ_ubezpieczenia = 'UBEZPIECZENIE NA ZYCIE'),
(SELECT id_rachunki FROM rachunki WHERE typ_rachunki = 'OSOBISTY PREMIUM'),
(SELECT id_karty FROM karty WHERE typ_karty = 'VISA WALUTOWA'));
INSERT INTO oferta VALUES (
(SELECT id_oszczednosci FROM oszczednosci WHERE typ_oszczednosci = 'LOKATA KRAJOWA'), 
(SELECT id_kredyty FROM kredyty WHERE typ_kredyty = 'KREDYT KONSOLIDACYJNY'),
(SELECT id_ubezpieczenia FROM ubezpieczenia WHERE typ_ubezpieczenia = 'UBEZPIECZENIE OC I AC'),
(SELECT id_rachunki FROM rachunki WHERE typ_rachunki = 'OSOBISTY EXCLUSIVE PLUS'),
(SELECT id_karty FROM karty WHERE typ_karty = 'VISA KREDYTOWA'));
INSERT INTO oferta VALUES (
(SELECT id_oszczednosci FROM oszczednosci WHERE typ_oszczednosci = 'KONTO EMERYTALNE'), 
(SELECT id_kredyty FROM kredyty WHERE typ_kredyty = 'KREDYT INWESTYCYJNY'),
(SELECT id_ubezpieczenia FROM ubezpieczenia WHERE typ_ubezpieczenia = 'UBEZPIECZENIE ZDROWOTNE'),
(SELECT id_rachunki FROM rachunki WHERE typ_rachunki = 'RODZINNY'),
(SELECT id_karty FROM karty WHERE typ_karty = 'MASTERCARD PL'));
INSERT INTO oferta VALUES (
(SELECT id_oszczednosci FROM oszczednosci WHERE typ_oszczednosci = 'LOKATA PROMOCYJNA'), 
(SELECT id_kredyty FROM kredyty WHERE typ_kredyty = 'KREDYT FIRMOWY'),
(SELECT id_ubezpieczenia FROM ubezpieczenia WHERE typ_ubezpieczenia = 'UBEZPIECZENIE PODROZY'),
(SELECT id_rachunki FROM rachunki WHERE typ_rachunki = 'JUNIOR'),
(SELECT id_karty FROM karty WHERE typ_karty = 'MASTERCARD KREDYTOWA'));

-- INSERTY DO TABELI RODZAJ
/* relationship_9 (Tabela Asocjacyjna - nie ustawiamy autoinkrementacji (Design>IdentitySpecification>IsIdentity>NO) */

INSERT INTO relationship_9 VALUES ((SELECT id_uzytkownik FROM uzytkownik WHERE nr_pesel_uzytkownik = '84070188240'),(SELECT id_oferta FROM oferta WHERE id_oszczednosci = 1),'03.02.2012');
INSERT INTO relationship_9 VALUES ((SELECT id_uzytkownik FROM uzytkownik WHERE nr_pesel_uzytkownik = '84070188240'),(SELECT id_oferta FROM oferta WHERE id_kredyty = 2),'04.04.2015');
INSERT INTO relationship_9 VALUES ((SELECT id_uzytkownik FROM uzytkownik WHERE nr_pesel_uzytkownik = '61010192290'),(SELECT id_oferta FROM oferta WHERE id_rachunki = 3),'05.01.2019');
INSERT INTO relationship_9 VALUES ((SELECT id_uzytkownik FROM uzytkownik WHERE nr_pesel_uzytkownik = '77020112567'),(SELECT id_oferta FROM oferta WHERE id_kredyty = 4),'08.01.2013');