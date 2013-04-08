--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: province; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO province VALUES ('PC', 'Piacenza', 33, 'Piacenza', 'http://www.provincia.piacenza.it/', 'Piacenza.gif', '08');
INSERT INTO province VALUES ('CL', 'Caltanissetta', 85, 'Caltanissetta', 'http://www.provincia.cl.it/', 'Caltanissetta.gif', '19');
INSERT INTO province VALUES ('KR', 'Crotone', 101, 'Crotone', 'http://www.provincia.crotone.it/', 'Crotone.gif', '18');
INSERT INTO province VALUES ('CN', 'Cuneo', 4, 'Cuneo', 'http://www.provincia.cuneo.it/', 'Cuneo.gif', '01');
INSERT INTO province VALUES ('MC', 'Macerata', 43, 'Macerata', 'http://www.provincia.mc.it/', 'Macerata.gif', '11');
INSERT INTO province VALUES ('LC', 'Lecco', 97, 'Lecco', 'http://www.provincia.lecco.it/', 'Lecco.gif', '03');
INSERT INTO province VALUES ('RC', 'Reggio Calabria', 80, 'Reggio Calabria', 'http://www.provincia.rc.it/', 'ReggiodiCalabria.gif', '18');
INSERT INTO province VALUES ('LE', 'Lecce', 75, 'Lecce', 'http://www.provincia.le.it/', 'Lecce.gif', '16');
INSERT INTO province VALUES ('ME', 'Messina', 83, 'Messina', 'http://www.provincia.messina.it/', 'Messina.gif', '19');
INSERT INTO province VALUES ('LO', 'Lodi', 98, 'Lodi', 'http://www.provincia.lodi.it/', 'Lodi.gif', '03');
INSERT INTO province VALUES ('PD', 'Padova', 28, 'Padova', 'http://www.provincia.padova.it/', 'Padova.gif', '05');
INSERT INTO province VALUES ('MI', 'Milano', 15, 'Milano', 'http://www.provincia.milano.it/', 'Milano.gif', '03');
INSERT INTO province VALUES ('PT', 'Pistoia', 47, 'Pistoia', 'http://www.provincia.pistoia.it/', 'Pistoia.gif', '09');
INSERT INTO province VALUES ('MN', 'Mantova', 20, 'Mantova', 'http://www.provincia.mantova.it/', 'Mantova.gif', '03');
INSERT INTO province VALUES ('VE', 'Venezia', 27, 'Venezia', 'http://www.provincia.venezia.it/', 'Venezia.gif', '05');
INSERT INTO province VALUES ('PE', 'Pescara', 68, 'Pescara', 'http://www.provincia.pescara.it/', 'Pescara.gif', '13');
INSERT INTO province VALUES ('PU', 'Pesaro e Urbino', 41, 'Pesaro', 'http://www.provincia.pu.it/', 'PesaroUrbino.gif', '11');
INSERT INTO province VALUES ('PO', 'Prato', 100, 'Prato', 'http://www.provincia.prato.it/', 'Prato.gif', '09');
INSERT INTO province VALUES ('RE', 'Reggio Emilia', 35, 'Reggio Emilia', 'http://www.provincia.re.it/', 'Reggionell''Emilia.gif', '08');
INSERT INTO province VALUES ('CO', 'Como', 13, 'Como', 'http://www.provincia.como.it/', 'Como.gif', '03');
INSERT INTO province VALUES ('BA', 'Bari', 72, 'Bari', 'http://www.provincia.ba.it/', 'Bari.gif', '16');
INSERT INTO province VALUES ('PR', 'Parma', 34, 'Parma', 'http://www.provincia.parma.it/', 'Parma.gif', '08');
INSERT INTO province VALUES ('BG', 'Bergamo', 16, 'Bergamo', 'http://www.provincia.bergamo.it/', 'Bergamo.gif', '03');
INSERT INTO province VALUES ('CR', 'Cremona', 19, 'Cremona', 'http://www.provincia.cremona.it/', 'Cremona.gif', '03');
INSERT INTO province VALUES ('BL', 'Belluno', 25, 'Belluno', 'http://www.provincia.belluno.it/', 'Belluno.gif', '05');
INSERT INTO province VALUES ('MB', 'Monza e Brianza', 108, 'Monza', 'http://www.provincia.mb.it/', 'MonzaeBrianza.gif', '03');
INSERT INTO province VALUES ('CB', 'Campobasso', 70, 'Campobasso', 'http://www.provincia.campobasso.it/', 'Campobasso.gif', '14');
INSERT INTO province VALUES ('IS', 'Isernia', 94, 'Isernia', 'http://www.provincia.isernia.it/', 'Isernia.gif', '14');
INSERT INTO province VALUES ('CI', 'Carbonia-Iglesias', 107, 'Carbonia', 'http://www.provincia.carboniaiglesias.it/', 'Carbonia-Iglesias.gif', '20');
INSERT INTO province VALUES ('PV', 'Pavia', 18, 'Pavia', 'http://www.provincia.pv.it/', 'Pavia.gif', '03');
INSERT INTO province VALUES ('RM', 'Roma', 58, 'Roma', 'http://www.provincia.roma.it/', 'Roma.gif', '12');
INSERT INTO province VALUES ('PZ', 'Potenza', 76, 'Potenza', 'http://www.provincia.potenza.it/', 'Potenza.gif', '17');
INSERT INTO province VALUES ('SO', 'Sondrio', 14, 'Sondrio', 'http://www.provincia.so.it/', 'Sondrio.gif', '03');
INSERT INTO province VALUES ('RG', 'Ragusa', 88, 'Ragusa', 'http://www.provincia.ragusa.it/', 'Ragusa.gif', '19');
INSERT INTO province VALUES ('RO', 'Rovigo', 29, 'Rovigo', 'http://www.provincia.rovigo.it/', 'Rovigo.gif', '05');
INSERT INTO province VALUES ('RI', 'Rieti', 57, 'Rieti', 'http://www.provincia.rieti.it/', 'Rieti.gif', '12');
INSERT INTO province VALUES ('TO', 'Torino', 1, 'Torino', 'http://www.provincia.torino.it/', 'Torino.gif', '01');
INSERT INTO province VALUES ('SA', 'Salerno', 65, 'Salerno', 'http://www.provincia.salerno.it/', 'Salerno.gif', '15');
INSERT INTO province VALUES ('SP', 'La Spezia', 11, 'La Spezia', 'http://www.provincia.sp.it/', 'LaSpezia.gif', '07');
INSERT INTO province VALUES ('SI', 'Siena', 52, 'Siena', 'http://www.provincia.siena.it/', 'Siena.gif', '09');
INSERT INTO province VALUES ('TV', 'Treviso', 26, 'Treviso', 'http://www.provincia.treviso.it/', 'Treviso.gif', '05');
INSERT INTO province VALUES ('TN', 'Trento', 22, 'Trento', 'http://www.provincia.tn.it/', 'Trento.gif', '04');
INSERT INTO province VALUES ('TR', 'Terni', 55, 'Terni', 'http://www.provincia.terni.it/', 'Terni.gif', '10');
INSERT INTO province VALUES ('VB', 'Verbano-Cusio-Ossola', 103, 'Verbania', 'http://www.provincia.verbania.it/', 'Verbania.gif', '01');
INSERT INTO province VALUES ('TS', 'Trieste', 32, 'Trieste', 'http://www.provincia.trieste.it/', 'Trieste.gif', '06');
INSERT INTO province VALUES ('UD', 'Udine', 30, 'Udine', 'http://www.provincia.udine.it/', 'Udine.gif', '06');
INSERT INTO province VALUES ('VA', 'Varese', 12, 'Varese', 'http://www.provincia.va.it/', 'Varese.gif', '03');
INSERT INTO province VALUES ('VC', 'Vercelli', 2, 'Vercelli', 'http://www.provincia.vercelli.it/', 'Vercelli.gif', '01');
INSERT INTO province VALUES ('VS', 'Medio Campidano', 106, 'Villacidro', 'http://www.provincia.mediocampidano.it/', 'MedioCampidano.gif', '20');
INSERT INTO province VALUES ('VI', 'Vicenza', 24, 'Vicenza', 'http://www.provincia.vicenza.it/', 'Vicenza.gif', '05');
INSERT INTO province VALUES ('VV', 'Vibo Valentia', 102, 'Vibo Valentia', 'http://www.provincia.vibovalentia.it/', 'ViboValentia.gif', '18');
INSERT INTO province VALUES ('VR', 'Verona', 23, 'Verona', 'http://www.provincia.verona.it/', 'Verona.gif', '05');
INSERT INTO province VALUES ('VT', 'Viterbo', 56, 'Viterbo', 'http://www.provincia.vt.it/', 'Viterbo.gif', '12');
INSERT INTO province VALUES ('AP', 'Ascoli Piceno', 44, 'Ascoli Piceno', 'http://www.provincia.ap.it/', 'AscoliPiceno.gif', '11');
INSERT INTO province VALUES ('AR', 'Arezzo', 51, 'Arezzo', 'http://www.provincia.arezzo.it/', 'Arezzo.gif', '09');
INSERT INTO province VALUES ('AQ', 'L''Aquila', 66, 'L''Aquila', 'http://www.provincia.laquila.it/', 'L''Aquila.gif', '13');
INSERT INTO province VALUES ('FE', 'Ferrara', 38, 'Ferrara', 'http://www.provincia.fe.it/', 'Ferrara.gif', '08');
INSERT INTO province VALUES ('BI', 'Biella', 96, 'Biella', 'http://www.provincia.biella.it/', 'Biella.gif', '01');
INSERT INTO province VALUES ('BO', 'Bologna', 37, 'Bologna', 'http://www.provincia.bologna.it/', 'Bologna.gif', '08');
INSERT INTO province VALUES ('BS', 'Brescia', 17, 'Brescia', 'http://www.provincia.brescia.it/', 'Brescia.gif', '03');
INSERT INTO province VALUES ('BR', 'Brindisi', 74, 'Brindisi', 'http://www.provincia.brindisi.it/', 'Brindisi.gif', '16');
INSERT INTO province VALUES ('BZ', 'Bolzano', 21, 'Bolzano', 'http://www.provinz.bz.it/', 'Bolzano.gif', '04');
INSERT INTO province VALUES ('CE', 'Caserta', 61, 'Caserta', 'http://www.provincia.caserta.it/', 'Caserta.gif', '15');
INSERT INTO province VALUES ('CS', 'Cosenza', 78, 'Cosenza', 'http://www.provincia.cosenza.it/', 'Cosenza.gif', '18');
INSERT INTO province VALUES ('CZ', 'Catanzaro', 79, 'Catanzaro', 'http://www.provincia.catanzaro.it/', 'Catanzaro.gif', '18');
INSERT INTO province VALUES ('FC', 'Forlì-Cesena', 40, 'Forlì', 'http://www.provincia.forli-cesena.it/', 'Forlì-Cesena.gif', '08');
INSERT INTO province VALUES ('GE', 'Genova', 10, 'Genova', 'http://www.provincia.genova.it/', 'Genova.gif', '07');
INSERT INTO province VALUES ('FI', 'Firenze', 48, 'Firenze', 'http://www.provincia.fi.it/', 'Firenze.gif', '09');
INSERT INTO province VALUES ('FG', 'Foggia', 71, 'Foggia', 'http://www.provincia.foggia.it/', 'Foggia.gif', '16');
INSERT INTO province VALUES ('FR', 'Frosinone', 60, 'Frosinone', 'http://www.provincia.fr.it/', 'Frosinone.gif', '12');
INSERT INTO province VALUES ('IM', 'Imperia', 8, 'Imperia', 'http://www.provincia.imperia.it/', 'Imperia.gif', '07');
INSERT INTO province VALUES ('LU', 'Lucca', 46, 'Lucca', 'http://www.provincia.lucca.it/', 'Lucca.gif', '09');
INSERT INTO province VALUES ('LT', 'Latina', 59, 'Latina', 'http://www.provincia.latina.it/', 'Latina.gif', '12');
INSERT INTO province VALUES ('MT', 'Matera', 77, 'Matera', 'http://www.provincia.matera.it/', 'Matera.gif', '17');
INSERT INTO province VALUES ('MO', 'Modena', 36, 'Modena', 'http://www.provincia.modena.it/', 'Modena.gif', '08');
INSERT INTO province VALUES ('NU', 'Nuoro', 91, 'Nuoro', 'http://www.provincia.nuoro.it/', 'Nuoro.gif', '20');
INSERT INTO province VALUES ('AN', 'Ancona', 42, 'Ancona', 'http://www.provincia.ancona.it/', 'Ancona.gif', '11');
INSERT INTO province VALUES ('AG', 'Agrigento', 84, 'Agrigento', 'http://www.provincia.agrigento.it/', 'Agrigento.gif', '19');
INSERT INTO province VALUES ('BN', 'Benevento', 62, 'Benevento', 'http://www.provincia.benevento.it/', 'Benevento.gif', '15');
INSERT INTO province VALUES ('AL', 'Alessandria', 6, 'Alessandria', 'http://www.provincia.alessandria.it/', 'Alessandria.gif', '01');
INSERT INTO province VALUES ('AO', 'Aosta', 7, 'Aosta', 'http://www.regione.vda.it/', 'Aosta.gif', '02');
INSERT INTO province VALUES ('AT', 'Asti', 5, 'Asti', 'http://www.provincia.asti.it/', 'Asti.gif', '01');
INSERT INTO province VALUES ('BT', 'Barletta-Andria-Trani', 110, 'Andria', 'http://www.provinciabat.it/', 'BarlettaAndriaTrani.gif', '16');
INSERT INTO province VALUES ('AV', 'Avellino', 64, 'Avellino', 'http://www.provincia.avellino.it/', 'Avellino.gif', '15');
INSERT INTO province VALUES ('CT', 'Catania', 87, 'Catania', 'http://www.provincia.catania.it/', 'Catania.gif', '19');
INSERT INTO province VALUES ('CA', 'Cagliari', 92, 'Cagliari', 'http://www.provincia.cagliari.it/', 'Cagliari.gif', '20');
INSERT INTO province VALUES ('CH', 'Chieti', 69, 'Chieti', 'http://www.provincia.chieti.it/', 'Chieti.gif', '13');
INSERT INTO province VALUES ('LI', 'Livorno', 49, 'Livorno', 'http://www.provincia.livorno.it/', 'Livorno.gif', '09');
INSERT INTO province VALUES ('EN', 'Enna', 86, 'Enna', 'http://www.provincia.enna.it/', 'Enna.gif', '19');
INSERT INTO province VALUES ('FM', 'Fermo', 109, 'Fermo', 'http://www.provincia.fermo.it/', 'Fermo.gif', '11');
INSERT INTO province VALUES ('GR', 'Grosseto', 53, 'Grosseto', 'http://www.provincia.grosseto.it/', 'Grosseto.gif', '09');
INSERT INTO province VALUES ('GO', 'Gorizia', 31, 'Gorizia', 'http://www.provincia.gorizia.it/', 'Gorizia.gif', '06');
INSERT INTO province VALUES ('MS', 'Massa-Carrara', 45, 'Massa', 'http://www.provincia.ms.it/', 'Massa-Carrara.gif', '09');
INSERT INTO province VALUES ('NO', 'Novara', 3, 'Novara', 'http://www.provincia.novara.it/', 'Novara.gif', '01');
INSERT INTO province VALUES ('NA', 'Napoli', 63, 'Napoli', 'http://www.provincia.napoli.it/', 'Napoli.gif', '15');
INSERT INTO province VALUES ('OR', 'Oristano', 95, 'Oristano', 'http://www.provincia.or.it/', 'Oristano.gif', '20');
INSERT INTO province VALUES ('OT', 'Olbia-Tempio', 104, 'Olbia', 'http://www.provincia.olbia-tempio.it/', 'Olbia-TempioPausania.gif', '20');
INSERT INTO province VALUES ('PA', 'Palermo', 82, 'Palermo', 'http://www.provincia.palermo.it/', 'Palermo.gif', '19');
INSERT INTO province VALUES ('PG', 'Perugia', 54, 'Perugia', 'http://www.provincia.perugia.it/', 'Perugia.gif', '10');
INSERT INTO province VALUES ('PI', 'Pisa', 50, 'Pisa', 'http://www.provincia.pisa.it/', 'Pisa.gif', '09');
INSERT INTO province VALUES ('PN', 'Pordenone', 93, 'Pordenone', 'http://www.provincia.pordenone.it/', 'Pordenone.gif', '06');
INSERT INTO province VALUES ('RA', 'Ravenna', 39, 'Ravenna', 'http://www.provincia.ra.it/', 'Ravenna.gif', '08');
INSERT INTO province VALUES ('RN', 'Rimini', 99, 'Rimini', 'http://www.provincia.rimini.it/', 'Rimini.gif', '08');
INSERT INTO province VALUES ('SR', 'Siracusa', 89, 'Siracusa', 'http://www.provincia.siracusa.it/', 'Siracusa.gif', '19');
INSERT INTO province VALUES ('SS', 'Sassari', 90, 'Sassari', 'http://www.provincia.sassari.it/', 'Sassari.gif', '20');
INSERT INTO province VALUES ('SV', 'Savona', 9, 'Savona', 'http://www.provincia.savona.it/', 'Savona.gif', '07');
INSERT INTO province VALUES ('TA', 'Taranto', 73, 'Taranto', 'http://www.provincia.taranto.it/', 'Taranto.gif', '16');
INSERT INTO province VALUES ('TE', 'Teramo', 67, 'Teramo', 'http://www.provincia.teramo.it/', 'Teramo.gif', '13');
INSERT INTO province VALUES ('TP', 'Trapani', 81, 'Trapani', 'http://www.provincia.trapani.it/', 'Trapani.gif', '19');
INSERT INTO province VALUES ('OG', 'Ogliastra', 105, 'Lanusei', 'http://www.provincia.ogliastra.it/', 'Ogliastra.gif', '20');


--
-- PostgreSQL database dump complete
--

