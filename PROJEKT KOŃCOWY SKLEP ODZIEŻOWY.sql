CREATE DATABASE Sklep_Odzieżowy;
USE Sklep_Odzieżowy;

CREATE TABLE Producenci(
id_producenta VARCHAR(5) PRIMARY KEY NOT NULL,
nazwa_producenta TEXT,
adres_producenta TEXT,
NIP_producenta VARCHAR(10),
data_podpisania_umowy_z_producentem DATE
);
SET SQL_SAFE_UPDATES = 0;

CREATE TABLE Produkty(
id_produktu VARCHAR(5) PRIMARY KEY NOT NULL,
id_producenta VARCHAR(5),
nazwa_produktu TEXT,
opis_produktu TEXT,
cena_netto_zakupu DOUBLE,
cena_brutto_zakupu DOUBLE,
cena_netto_sprzedaży DOUBLE,
cena_brutto_sprzedaży DOUBLE,
procent_VAT_sprzedaży DOUBLE
);
CREATE TABLE Zamówienia(
id_zamówienia VARCHAR(5) PRIMARY KEY NOT NULL,
id_klienta VARCHAR(5),
id_produktu VARCHAR(5),
data_zamówienia DATE
);
CREATE TABLE Klienci(
id_klienta VARCHAR(5) PRIMARY KEY NOT NULL,
id_zamówienia VARCHAR(5),
imię TEXT,
nazwisko TEXT,
adres TEXT
);

INSERT INTO Producenci(id_producenta, nazwa_producenta, adres_producenta, nip_producenta, data_podpisania_umowy_z_producentem)
VALUES ('M0001', 'GAP', '2 Folsom St., San Francisco CA 94105', '6652990931', '2011-09-02'),
('M0002', 'Levis', 'LEONARDO DA VINCILAAN 19, 1831 Zaventem',	'8850356982', '2005-05-07'),
('M0003', 'Mango', 'Carrer dels Mercaders, 9/11, Polígono, 08184 Palau-solit? i Plegamans, Barcelona',	'5864128753',	'2012-06-11'),
('M0004', 'Massimo Dutti', 'Gran Via de les Corts Catalanes, 75 CC Gran Via 2, 08908 LHospitalet de Llobregat, Barcelona',	'5518893651',	'2018-08-19');

INSERT INTO Produkty(id_produktu, id_producenta, nazwa_produktu, opis_produktu, cena_netto_zakupu, cena_brutto_zakupu, cena_netto_sprzedaży, cena_brutto_sprzedaży, procent_VAT_sprzedaży)
VALUES ('P0001', 'M0004', 'Koszula', 'Materiał: bawełna, poliamid, elastan, Wskazówki pielęgnacyjne: Nie suszyć w suszarce bębnowej', 107.85, 161.78, 132.66, 199.00, 23.00),
('P0002', 'M0004','Spodnie materiałowe', 'Materiał: wiskoza, elastan, Podszewka: wiskoza, acetat, Struktura/rodzaj materiału: Satyna', 243.36, 365.04, 299.33, 449.00, 23.00),
('P0003', 'M0004', 'Sukienka letnia', 'Materiał:,wiskoza,Fason:,Regular Fit, Kształt: Rozkloszowany, Długość: Do łydek, Długość rękawa: Krótki rękaw', 243.36, 365.04, 299.33, 449.00, 23.00),
('P0004', 'M0004', 'Top', 'Materiał: modal, lyocell, bawełna, poliester, Rodzaj dekoltu: Okrągły, Zapięcie: Guziki, Wzór: Kolor jednolity', 80.75, 121.13, 99.33, 149.00, 23.00),
('P0005', 'M0004',	'Żakiet', 'Materiał: len, Podszewka: modal, acetat, Rodzaj ocieplenia: Bez ocieplenia, Kształt kołnierza: Kołnierz rewers, Zapięcie: Guziki, Wzór: Kolor jednolity', 302.98, 454.47, 372.66, 559.00, 23.00),
('P0006', 'M0003',	'Kombinezon', 'Materiał: poliester, Podszewka: poliester, Struktura/rodzaj materiału: Satyna, Wskazówki pielęgnacyjne: Nie suszyć w suszarce bębnowej, pranie w pralce w 30st. Celcjusza, Czyszczenie chemiczne dozwolone, Rodzaj dekoltu: Wycięcie na plecach, Zapięcie: Guziki, Wzór: W paski, Szczegóły: Razem z paskiem, kieszenie', 135.49, 203.24, 166.66, 249.99, 23.00),
('P0007', 'M0003', 'Torebka', 'Materiał: Skóra gładka, Podszewka: Poliester, Zapięcie: Zapięcie na magnes, Wzór: Kolor jednolity', 75.87, 113.81, 93.32, 139.99, 23.00),
('P0008', 'M0003', 'Sukienka', 'Materiał: bawełna,Wskazówki pielęgnacyjne: Nie suszyć w suszarce bębnowej, pranie w pralce w 30st. Celcjusza, Kształt kołnierza: Button Down, Zapięcie: Guziki, Wzór: W kropki, Szczegóły: Razem z paskiem', 108.39, 162.59, 133.32, 199.99, 23.00),
('P0009', 'M0003',	'Prochowiec',	'Materiał: bawełna, Podszewka: poliester, Rodzaj ocieplenia: Bez ocieplenia, Wskazówki pielęgnacyjne: Nie suszyć w suszarce bębnowej, Czyszczenie chemiczne dozwolone, Nie prać, Kształt kołnierza: Kołnierz rewers, Zapięcie: Guziki, Wzór: Kolor jednolity, Szczegóły: Razem z paskiem, kieszenie', 189.69, 284.54, 233.32, 349.99, 23.00),
('P0010', 'M0003',	'Szorty', 'Materiał: lyocell, len, Podszewka: bawełna, Wskazówki pielęgnacyjne: Nie suszyć w suszarce bębnowej, pranie w pralce w 30st. Celcjusza, Czyszczenie chemiczne dozwolone, Stan: Podwyższony, Zapięcie: Ukryty zamek błyskawiczny, Kieszenie: Tylne, boczne, Wzór: Kolor jednolity', 75.87, 113.81, 93.32, 139.99, 23.00),
('P0011', 'M0002', 'Długa bluza', 'Materiał: poliester, wiskoza, elastan, Struktura/rodzaj materiału: Dres, Wskazówki pielęgnacyjne: Nie wybielać, nie prasować, nie suszyć w suszarce bębnowej, pranie w pralce w 30st. Celcjusza, Kształt kołnierza: Kaptur, Zapięcie: Zamek błyskawiczny, Kaptur: Ściągany kaptur, Wzór: Kolor jednolity, Szczegóły: Kieszenie, Dwustronny zamek', 230.48, 345.73, 283.5, 425.25, 23.00),
('P0012', 'M0002',	'T-shirt',	'Materiał: bawełna, Struktura/rodzaj materiału: Dżersej, Wskazówki pielęgnacyjne: Pranie w pralce w 30st. Celcjusza, Rodzaj dekoltu: Okrągły, Wzór: Nadruk',	86.17,	129.26,	106.00,	159.00,	23.00),
('P0013', 'M0002',	'Bluza z kapturem',	'Materiał: bawełna, Struktura/rodzaj materiału: Dres, Wskazówki pielęgnacyjne: Pranie w pralce w 30st. Celcjusza, Rodzaj dekoltu: Okrągły, Wzór: Nadruk, Szczegóły: Elastyczna talia',	183.73,	275.6,	226.00,	339.00,	23.00),
('P0014', 'M0002',	'Spodnie treningowe', 'Materiał: poliester, Dolna część: poliester, elastan, Struktura/rodzaj materiału: Mesh, Technologia: Dri-Fit, Wskazówki pielęgnacyjne: Pranie w pralce w 30st. Celcjusza, Rodzaj sportu: Bieganie, Pas: Elastyczny, regulowany (regulacja szerokości), Stan: Podwyższony, Dodatki: Szybkoschnący, Kieszenie: Boczne, Kieszenie: Kieszeń, Wzór: Nadruk, Szczegóły: Elastyczna talia, Funkcja: Oddychające, szybkoschnący', 189.15, 283.73, 232.66, 349.00, 23.00),
('P0015', 'M0002',	'Bluzka z długim rękawem',	'Materiał: bawełna, Struktura/rodzaj materiału: Dżersej, Wskazówki pielęgnacyjne: Pranie w pralce w 30st. Celcjusza, Rodzaj dekoltu: Okrągły, Wzór: Nadruk', 59.07, 88.61, 72.66, 109.00, 23.00),
('P0016', 'M0001',	'Jeansy',	'Materiał: bawełna, elastan, Struktura/rodzaj materiału: Denim, Zawiera elementy skórzane: Tak, Wskazówki pielęgnacyjne: Pranie w pralce w 30st. Celcjusza, Stan: Podwyższony, Zapięcie: Ukryty zamek błyskawiczny, Kieszenie: Tylne, boczne, Waga: 454 g',	156.63,	234.95,	192.66,	289.00,	23.00),
('P0017', 'M0001',	'T-shirt z nadrukiem',	'Materiał: bawełna, Struktura/rodzaj materiału: Dżersej, Wskazówki pielęgnacyjne: Pranie w pralce w 30st. Celcjusza, Rodzaj dekoltu: Okrągły, Wzór: Nadruk', 86.17, 129.26, 106.00,	159.00,	23.00),
('P0018', 'M0001',	'Sneakersy', '', 124.11, 186.17, 152.66, 229.00, 23.00),
('P0019', 'M0001',	'Klapki',	'Materiał zewnętrzny: Tworzywo sztuczne, Materiał wewnętrzny: Tworzywa sztuczne, Wyściółka: Tworzywo sztuczne, Podeszwa: Tworzywo sztuczne, Rodzaj ocieplenia: Bez ocieplenia, Nosek buta: Otwarty, Kształt obcasa: Płaski, Zapięcie: Brak, Wzór: W kwiatki, Waga: 255 g', 91.59, 137.39, 112.66, 169.00, 23.00),
('P0020', 'M0001',	'Długa sukienka',	'Materiał: bawełna, Podszewka: bawełna, Wskazówki pielęgnacyjne: Pranie w pralce w 30st. Celcjusza, Rodzaj dekoltu: Serek, Wzór: W paski, Szczegóły: Halka', 194.57, 291.86, 239.33, 359.00, 23.00);

INSERT INTO Klienci(id_klienta, id_zamówienia, imię, nazwisko, adres)
VALUES ('K0001', 'Z0010', 'Beata', 'Nowak', 'Trombity 43 02-850 Warszawa'),
('K0002', 'Z0009', 'Jadwiga', 'Abram', 'Ludwinowska 45 02-856 Warszawa'),
('K0003', 'Z0008', 'Bożena', 'Borowska', 'Generała Kustronia 24 m. 4 86-300 Grudziądz'),
('K0004', 'Z0007', 'Anita', 'Szymborska', 'Gościniec 11 05-503 Głosków'),
('K0005', 'Z0006', 'Monika', 'Nakielska', 'Grabowa 16 m. 18 08-110 Siedlce'),
('K0006', 'Z0005', 'Juliusz', 'Ścisłowski', 'Bończa 86 05-660 Warka'),
('K0007', 'Z0004', 'Bogumiła',	'Żak', 'Bogumińska 48 44-351 Turza Śląska'),
('K0008', 'Z0003', 'Alicja', 'Miller', 'Czterech Wiatrów 8 02-800 Warszawa'),
('K0009', 'Z0002', 'Monika', 'Szcześniak', 'Prawdziwka 295 05-500 Kierszek'),
('K0010', 'Z0001', 'Ewa', 'Stojak', 'Graniczka 77 05-532 Chojnów');

INSERT INTO Zamówienia (id_zamówienia, id_klienta, id_produktu, data_zamówienia)
VALUES ('Z0001',	'K0010',	'P0008',	'2022-01-13'),
('Z0002',	'K0009',	'P0017',	'2022-01-25'),
('Z0003',	'K0008',	'P0004',	'2022-02-11'),
('Z0004',	'K0007',	'P0001',	'2022-02-17'),
('Z0005',	'K0006',	'P0011',	'2022-03-01'),
('Z0006',	'K0005',	'P0009',	'2022-03-30'),
('Z0007',	'K0004',	'P0019',	'2022-04-22'),
('Z0008',	'K0003',	'P0005',	'2022-06-14'),
('Z0009',	'K0002',	'P0005',	'2022-06-14'),
('Z0010',	'K0001',	'P0007',	'2022-07-05'); 

SELECT *
FROM Produkty AS p, Producenci AS m
WHERE p.id_producenta = m.id_producenta
AND p.id_producenta = 'M0001'
ORDER BY p.nazwa_produktu;

SELECT AVG(cena_brutto_sprzedaży)
FROM Produkty
WHERE id_producenta='M0001';

SELECT Produkty.nazwa_produktu, Produkty.id_producenta, Produkty.cena_brutto_sprzedaży,
CASE
WHEN cena_brutto_sprzedaży > 241 THEN 'Drogie'
ELSE 'Tanie'
END AS KlasaProduktu
FROM Sklep_Odzieżowy.Produkty
WHERE id_producenta='M0001';

SELECT p.nazwa_produktu
FROM Produkty AS p, Zamówienia AS z
WHERE p.id_produktu = z.id_produktu;

SELECT p.nazwa_produktu
FROM Produkty AS p, Zamówienia AS z
WHERE p.id_produktu = z.id_produktu
LIMIT 5; 

SELECT SUM(cena_brutto_sprzedaży)
FROM Produkty AS p, Zamówienia AS z
WHERE p.id_produktu = z.id_produktu;

SELECT *
FROM Zamówienia AS z, Produkty AS p
WHERE z.id_produktu = p.id_produktu
ORDER BY data_zamówienia;

SELECT *
FROM Produkty
WHERE id_produktu = NULL
OR opis_produktu = NULL
OR opis_produktu = ''
OR cena_netto_zakupu IS NULL
OR cena_netto_zakupu = ''
OR cena_brutto_zakupu IS NULL
OR cena_brutto_zakupu = ''
OR cena_netto_sprzedaży IS NULL
OR cena_netto_sprzedaży = ''
OR cena_brutto_sprzedaży IS NULL
OR cena_brutto_sprzedaży =''
OR procent_VAT_sprzedaży IS NULL
OR id_produktu = ''
OR id_producenta IS NULL
OR id_producenta = ''
OR nazwa_produktu IS NULL
OR nazwa_produktu = '';

SELECT nazwa_produktu AS najczęściej_sprzedawany_produkt, SUM(cena_brutto_sprzedaży)/COUNT(cena_brutto_sprzedaży) AS cena
FROM Produkty AS p, Zamówienia AS z
WHERE z.id_produktu = p.id_produktu
GROUP BY nazwa_produktu
ORDER BY cena_brutto_sprzedaży DESC
LIMIT 1;

SELECT data_zamówienia, COUNT(data_zamówienia) AS ilość_zamówień
FROM Zamówienia
GROUP BY data_zamówienia
ORDER BY ilość_zamówień DESC;
