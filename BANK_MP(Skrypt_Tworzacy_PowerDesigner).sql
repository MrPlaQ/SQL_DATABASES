/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     14.02.2023 21:30:28                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Relationship_9') and o.name = 'FK_RELATION_RELATIONS_OFERTA')
alter table Relationship_9
   drop constraint FK_RELATION_RELATIONS_OFERTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Relationship_9') and o.name = 'FK_RELATION_RELATIONS_UZYTKOWN')
alter table Relationship_9
   drop constraint FK_RELATION_RELATIONS_UZYTKOWN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('oferta') and o.name = 'FK_OFERTA_RELATIONS_RACHUNKI')
alter table oferta
   drop constraint FK_OFERTA_RELATIONS_RACHUNKI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('oferta') and o.name = 'FK_OFERTA_RELATIONS_KARTY')
alter table oferta
   drop constraint FK_OFERTA_RELATIONS_KARTY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('oferta') and o.name = 'FK_OFERTA_RELATIONS_UBEZPIEC')
alter table oferta
   drop constraint FK_OFERTA_RELATIONS_UBEZPIEC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('oferta') and o.name = 'FK_OFERTA_RELATIONS_KREDYTY')
alter table oferta
   drop constraint FK_OFERTA_RELATIONS_KREDYTY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('oferta') and o.name = 'FK_OFERTA_RELATIONS_OSZCZEDN')
alter table oferta
   drop constraint FK_OFERTA_RELATIONS_OSZCZEDN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('transakcja') and o.name = 'FK_TRANSAKC_RELATIONS_UZYTKOWN')
alter table transakcja
   drop constraint FK_TRANSAKC_RELATIONS_UZYTKOWN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('transakcja') and o.name = 'FK_TRANSAKC_RELATIONS_RODZAJ_T')
alter table transakcja
   drop constraint FK_TRANSAKC_RELATIONS_RODZAJ_T
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('transakcja') and o.name = 'FK_TRANSAKC_RELATIONS_PLACOWKA')
alter table transakcja
   drop constraint FK_TRANSAKC_RELATIONS_PLACOWKA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('transakcja') and o.name = 'FK_TRANSAKC_RELATIONS_OPERATOR')
alter table transakcja
   drop constraint FK_TRANSAKC_RELATIONS_OPERATOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('transakcja') and o.name = 'FK_TRANSAKC_RELATIONS_PRIORYTE')
alter table transakcja
   drop constraint FK_TRANSAKC_RELATIONS_PRIORYTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Relationship_9')
            and   name  = 'Relationship_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index Relationship_9.Relationship_10_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Relationship_9')
            and   name  = 'Relationship_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index Relationship_9.Relationship_9_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Relationship_9')
            and   type = 'U')
   drop table Relationship_9
go

if exists (select 1
            from  sysobjects
           where  id = object_id('karty')
            and   type = 'U')
   drop table karty
go

if exists (select 1
            from  sysobjects
           where  id = object_id('kredyty')
            and   type = 'U')
   drop table kredyty
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('oferta')
            and   name  = 'Relationship_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index oferta.Relationship_12_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('oferta')
            and   name  = 'Relationship_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index oferta.Relationship_11_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('oferta')
            and   name  = 'Relationship_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index oferta.Relationship_8_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('oferta')
            and   name  = 'Relationship_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index oferta.Relationship_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('oferta')
            and   name  = 'Relationship_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index oferta.Relationship_6_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('oferta')
            and   type = 'U')
   drop table oferta
go

if exists (select 1
            from  sysobjects
           where  id = object_id('operator')
            and   type = 'U')
   drop table operator
go

if exists (select 1
            from  sysobjects
           where  id = object_id('oszczednosci')
            and   type = 'U')
   drop table oszczednosci
go

if exists (select 1
            from  sysobjects
           where  id = object_id('placowka')
            and   type = 'U')
   drop table placowka
go

if exists (select 1
            from  sysobjects
           where  id = object_id('priorytet')
            and   type = 'U')
   drop table priorytet
go

if exists (select 1
            from  sysobjects
           where  id = object_id('rachunki')
            and   type = 'U')
   drop table rachunki
go

if exists (select 1
            from  sysobjects
           where  id = object_id('rodzaj_transakcji')
            and   type = 'U')
   drop table rodzaj_transakcji
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('transakcja')
            and   name  = 'Relationship_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index transakcja.Relationship_5_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('transakcja')
            and   name  = 'Relationship_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index transakcja.Relationship_4_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('transakcja')
            and   name  = 'Relationship_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index transakcja.Relationship_3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('transakcja')
            and   name  = 'Relationship_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index transakcja.Relationship_2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('transakcja')
            and   name  = 'Relationship_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index transakcja.Relationship_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('transakcja')
            and   type = 'U')
   drop table transakcja
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ubezpieczenia')
            and   type = 'U')
   drop table ubezpieczenia
go

if exists (select 1
            from  sysobjects
           where  id = object_id('uzytkownik')
            and   type = 'U')
   drop table uzytkownik
go

/*==============================================================*/
/* Table: Relationship_9                                        */
/*==============================================================*/
create table Relationship_9 (
   id_uzytkownik        int                  not null,
   id_oferta            int                  not null,
   data_zaofertowania   datetime             null,
   constraint PK_RELATIONSHIP_9 primary key (id_uzytkownik, id_oferta)
)
go

/*==============================================================*/
/* Index: Relationship_9_FK                                     */
/*==============================================================*/
create index Relationship_9_FK on Relationship_9 (
id_uzytkownik ASC
)
go

/*==============================================================*/
/* Index: Relationship_10_FK                                    */
/*==============================================================*/
create index Relationship_10_FK on Relationship_9 (
id_oferta ASC
)
go

/*==============================================================*/
/* Table: karty                                                 */
/*==============================================================*/
create table karty (
   id_karty             int                  identity,
   typ_karty            varchar(100)         not null,
   constraint PK_KARTY primary key nonclustered (id_karty)
)
go

/*==============================================================*/
/* Table: kredyty                                               */
/*==============================================================*/
create table kredyty (
   id_kredyty           int                  identity,
   typ_kredyty          varchar(50)          not null,
   constraint PK_KREDYTY primary key nonclustered (id_kredyty)
)
go

/*==============================================================*/
/* Table: oferta                                                */
/*==============================================================*/
create table oferta (
   id_oferta            int                  identity,
   id_oszczednosci      int                  null,
   id_kredyty           int                  null,
   id_ubezpieczenia     int                  null,
   id_rachunki          int                  null,
   id_karty             int                  null,
   constraint PK_OFERTA primary key nonclustered (id_oferta)
)
go

/*==============================================================*/
/* Index: Relationship_6_FK                                     */
/*==============================================================*/
create index Relationship_6_FK on oferta (
id_ubezpieczenia ASC
)
go

/*==============================================================*/
/* Index: Relationship_7_FK                                     */
/*==============================================================*/
create index Relationship_7_FK on oferta (
id_kredyty ASC
)
go

/*==============================================================*/
/* Index: Relationship_8_FK                                     */
/*==============================================================*/
create index Relationship_8_FK on oferta (
id_oszczednosci ASC
)
go

/*==============================================================*/
/* Index: Relationship_11_FK                                    */
/*==============================================================*/
create index Relationship_11_FK on oferta (
id_rachunki ASC
)
go

/*==============================================================*/
/* Index: Relationship_12_FK                                    */
/*==============================================================*/
create index Relationship_12_FK on oferta (
id_karty ASC
)
go

/*==============================================================*/
/* Table: operator                                              */
/*==============================================================*/
create table operator (
   id_operator          int                  identity,
   nr_operator          varchar(10)          not null,
   constraint PK_OPERATOR primary key nonclustered (id_operator)
)
go

/*==============================================================*/
/* Table: oszczednosci                                          */
/*==============================================================*/
create table oszczednosci (
   id_oszczednosci      int                  identity,
   typ_oszczednosci     varchar(50)          not null,
   constraint PK_OSZCZEDNOSCI primary key nonclustered (id_oszczednosci)
)
go

/*==============================================================*/
/* Table: placowka                                              */
/*==============================================================*/
create table placowka (
   id_placowka          int                  identity,
   nazwa_placowka       varchar(150)         not null,
   constraint PK_PLACOWKA primary key nonclustered (id_placowka)
)
go

/*==============================================================*/
/* Table: priorytet                                             */
/*==============================================================*/
create table priorytet (
   id_priorytet         int                  identity,
   typ_priorytet        varchar(50)          not null,
   constraint PK_PRIORYTET primary key nonclustered (id_priorytet)
)
go

/*==============================================================*/
/* Table: rachunki                                              */
/*==============================================================*/
create table rachunki (
   id_rachunki          int                  identity,
   typ_rachunki         varchar(100)         not null,
   constraint PK_RACHUNKI primary key nonclustered (id_rachunki)
)
go

/*==============================================================*/
/* Table: rodzaj_transakcji                                     */
/*==============================================================*/
create table rodzaj_transakcji (
   id_rodzaj_transakcji int                  identity,
   rodzaj_transakcji    varchar(50)          not null,
   constraint PK_RODZAJ_TRANSAKCJI primary key nonclustered (id_rodzaj_transakcji)
)
go

/*==============================================================*/
/* Table: transakcja                                            */
/*==============================================================*/
create table transakcja (
   id_transakcja        int                  identity,
   id_operator          int                  not null,
   id_rodzaj_transakcji int                  not null,
   id_priorytet         int                  not null,
   id_uzytkownik        int                  not null,
   id_placowka          int                  not null,
   nr_rachunku          varchar(26)          not null,
   data_transakcji      datetime             not null,
   kwota_transakcji     varchar(50)          not null,
   czy_zrealizowano     bit                  not null,
   constraint PK_TRANSAKCJA primary key nonclustered (id_transakcja)
)
go

/*==============================================================*/
/* Index: Relationship_1_FK                                     */
/*==============================================================*/
create index Relationship_1_FK on transakcja (
id_uzytkownik ASC
)
go

/*==============================================================*/
/* Index: Relationship_2_FK                                     */
/*==============================================================*/
create index Relationship_2_FK on transakcja (
id_rodzaj_transakcji ASC
)
go

/*==============================================================*/
/* Index: Relationship_3_FK                                     */
/*==============================================================*/
create index Relationship_3_FK on transakcja (
id_placowka ASC
)
go

/*==============================================================*/
/* Index: Relationship_4_FK                                     */
/*==============================================================*/
create index Relationship_4_FK on transakcja (
id_operator ASC
)
go

/*==============================================================*/
/* Index: Relationship_5_FK                                     */
/*==============================================================*/
create index Relationship_5_FK on transakcja (
id_priorytet ASC
)
go

/*==============================================================*/
/* Table: ubezpieczenia                                         */
/*==============================================================*/
create table ubezpieczenia (
   id_ubezpieczenia     int                  identity,
   typ_ubezpieczenia    varchar(50)          not null,
   constraint PK_UBEZPIECZENIA primary key nonclustered (id_ubezpieczenia)
)
go

/*==============================================================*/
/* Table: uzytkownik                                            */
/*==============================================================*/
create table uzytkownik (
   id_uzytkownik        int                  identity,
   imie_uzytkownik      varchar(50)          not null,
   nazwisko_uzytkownik  varchar(50)          not null,
   nr_pesel_uzytkownik  varchar(11)          not null,
   nr_telefonu_uzytkownik varchar(12)          not null,
   adres_1_uzytkownik   varchar(150)         not null,
   adres_2_uzytkownik   varchar(50)          null,
   kod_pocztowy_uzytkownik varchar(6)           not null,
   miasto_uzytkownik    varchar(50)          not null,
   email_uzytkownik     varchar(50)          not null,
   constraint PK_UZYTKOWNIK primary key nonclustered (id_uzytkownik)
)
go

alter table Relationship_9
   add constraint FK_RELATION_RELATIONS_OFERTA foreign key (id_oferta)
      references oferta (id_oferta)
go

alter table Relationship_9
   add constraint FK_RELATION_RELATIONS_UZYTKOWN foreign key (id_uzytkownik)
      references uzytkownik (id_uzytkownik)
go

alter table oferta
   add constraint FK_OFERTA_RELATIONS_RACHUNKI foreign key (id_rachunki)
      references rachunki (id_rachunki)
go

alter table oferta
   add constraint FK_OFERTA_RELATIONS_KARTY foreign key (id_karty)
      references karty (id_karty)
go

alter table oferta
   add constraint FK_OFERTA_RELATIONS_UBEZPIEC foreign key (id_ubezpieczenia)
      references ubezpieczenia (id_ubezpieczenia)
go

alter table oferta
   add constraint FK_OFERTA_RELATIONS_KREDYTY foreign key (id_kredyty)
      references kredyty (id_kredyty)
go

alter table oferta
   add constraint FK_OFERTA_RELATIONS_OSZCZEDN foreign key (id_oszczednosci)
      references oszczednosci (id_oszczednosci)
go

alter table transakcja
   add constraint FK_TRANSAKC_RELATIONS_UZYTKOWN foreign key (id_uzytkownik)
      references uzytkownik (id_uzytkownik)
go

alter table transakcja
   add constraint FK_TRANSAKC_RELATIONS_RODZAJ_T foreign key (id_rodzaj_transakcji)
      references rodzaj_transakcji (id_rodzaj_transakcji)
go

alter table transakcja
   add constraint FK_TRANSAKC_RELATIONS_PLACOWKA foreign key (id_placowka)
      references placowka (id_placowka)
go

alter table transakcja
   add constraint FK_TRANSAKC_RELATIONS_OPERATOR foreign key (id_operator)
      references operator (id_operator)
go

alter table transakcja
   add constraint FK_TRANSAKC_RELATIONS_PRIORYTE foreign key (id_priorytet)
      references priorytet (id_priorytet)
go

