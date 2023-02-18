-- BACKUP

-- Tworzenie pliku BACKUP dla bazy: 

BACKUP DATABASE BANK_MP TO DISK = 'C:\ścieżka_do_pliku\BANK_MP.bak';

-- Przywrócenie bazy z pliku BACKUP: 

RESTORE DATABASE BANK_MP FROM DISK = 'C:\ścieżka_do_pliku\BANK_MP.bak';