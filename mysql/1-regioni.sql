-- phpMyAdmin SQL Dump
-- version 2.8.2.4
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generato il: 09 Feb, 2010 at 03:32 AM
-- Versione MySQL: 5.1.40
-- Versione PHP: 5.2.1
-- 
-- Database: `italia`
-- 

-- --------------------------------------------------------

-- 
-- Struttura della tabella `regioni`
-- 

CREATE TABLE `regioni` (
  `nome_regione` text,
  `sito_regione` text,
  `capoluogo_regione` text,
  `stemma_regione` text,
  `codiceistat_regione` varchar(100) NOT NULL,
  PRIMARY KEY (`codiceistat_regione`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dump dei dati per la tabella `regioni`
-- 

INSERT INTO `regioni` (`nome_regione`, `sito_regione`, `capoluogo_regione`, `stemma_regione`, `codiceistat_regione`) VALUES ('Lazio', 'http://www.regione.lazio.it/', 'Roma', 'Lazio.gif', '12'),
('Emilia-Romagna', 'http://www.regione.emilia-romagna.it/', 'Bologna', 'Emilia-Romagna.gif', '08'),
('Abruzzo', 'http://www.regione.abruzzo.it/', 'L''Aquila', 'Abruzzo.gif', '13'),
('Calabria', 'http://www.regione.calabria.it/', 'Catanzaro', 'Calabria.gif', '18'),
('Campania', 'http://www.regione.campania.it/', 'Napoli', 'Campania.gif', '15'),
('Liguria', 'http://www.regione.liguria.it/', 'Genova', 'Liguria.gif', '07'),
('Molise', 'http://www.regione.molise.it/', 'Campobasso', 'Molise.gif', '14'),
('Puglia', 'http://www.regione.puglia.it/', 'Bari', 'Puglia.gif', '16'),
('Valle d''Aosta', 'http://www.regione.vda.it/', 'Aosta', 'Valle-d''Aosta.gif', '02'),
('Sardegna', 'http://www.regione.sardegna.it/', 'Cagliari', 'Sardegna.gif', '20'),
('Umbria', 'http://www.regione.umbria.it/', 'Perugia', 'Umbria.gif', '10'),
('Basilicata', 'http://www.basilicatanet.it/', 'Potenza', 'Basilicata.gif', '17'),
('Piemonte', 'http://www.regione.piemonte.it/', 'Torino', 'Piemonte.gif', '01'),
('Marche', 'http://www.regione.marche.it/', 'Ancona', 'Marche.gif', '11'),
('Toscana', 'http://www.regione.toscana.it/', 'Firenze', 'Toscana.gif', '09'),
('Veneto', 'http://www.regione.veneto.it/', 'Venezia', 'Veneto.gif', '05'),
('Trentino-Alto Adige', 'http://www.regione.taa.it/', 'Trento', 'Trentino-Alto-Adige.gif', '04'),
('Friuli-Venezia Giulia', 'http://www.regione.fvg.it/', 'Trieste', 'Friuli-Venezia-Giulia.gif', '06'),
('Lombardia', 'http://www.regione.lombardia.it/', 'Milano', 'Lombardia.gif', '03'),
('Sicilia', 'http://www.regione.sicilia.it/', 'Palermo', 'Sicilia.gif', '19');
