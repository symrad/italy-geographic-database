CREATE TABLE comuni (
    id_comune integer NOT NULL,
    densita_comune double precision,
    abitanti_comune double precision,
    telefono_comune character varying,
    codistat_comune character varying,
    codcatastale_comune character varying,
    numfamiglie_comune double precision,
    numabitazioni_comune double precision,
    nomeabitanti_comune character varying,
    patrono_comune character varying,
    giornofesta_comune character varying,
    latcasacomune_comune double precision,
    latminima_comune double precision,
    latmassima_comune double precision,
    escaltimetrica_comune double precision,
    zonaaltimetrica_comune character varying,
    locator_comune character varying,
    superfice_comune double precision,
    sito_comune character varying,
    zonaclima_comune character varying,
    stemma_comune character varying,
    siglaprovincia_comune character(2),
    cap_comune character varying,
    nome_comune character varying,
    capgrandicitta_comune character varying
);


--
-- TOC entry 2279 (class 1259 OID 299564)
-- Dependencies: 2588 2589 2590 2591 2592 2593 1002 6 1002
-- Name: comunigeometrie; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE comunigeometrie (
    idcomune_comunegeometrie integer NOT NULL,
    gid_comunegeometrie integer NOT NULL,
    coordinateconfine_comunegeometrie geometry,
    coordinatecomune_comunegeometrie geometry,
    CONSTRAINT enforce_dims_coordinatecomune_comunegeometrie CHECK ((st_ndims(coordinatecomune_comunegeometrie) = 2)),
    CONSTRAINT enforce_dims_coordinateconfine_comunegeometrie CHECK ((st_ndims(coordinateconfine_comunegeometrie) = 2)),
    CONSTRAINT enforce_geotype_coordinatecomune_comunegeometrie CHECK (((geometrytype(coordinatecomune_comunegeometrie) = 'POINT'::text) OR (coordinatecomune_comunegeometrie IS NULL))),
    CONSTRAINT enforce_geotype_coordinateconfine_comunegeometrie CHECK (((geometrytype(coordinateconfine_comunegeometrie) = 'MULTIPOLYGON'::text) OR (coordinateconfine_comunegeometrie IS NULL))),
    CONSTRAINT enforce_srid_coordinatecomune_comunegeometrie CHECK ((st_srid(coordinatecomune_comunegeometrie) = 4326)),
    CONSTRAINT enforce_srid_coordinateconfine_comunegeometrie CHECK ((st_srid(coordinateconfine_comunegeometrie) = 4326))
);


--
-- TOC entry 2291 (class 1259 OID 329452)
-- Dependencies: 2379 6 1002
-- Name: qgis; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW qgis AS
    SELECT comuni.nome_comune, comunigeometrie.coordinateconfine_comunegeometrie, comuni.id_comune FROM comuni, comunigeometrie WHERE (comuni.id_comune = comunigeometrie.idcomune_comunegeometrie);


--
-- TOC entry 2292 (class 1259 OID 329456)
-- Dependencies: 2380 1002 6
-- Name: boundarycomuni1; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW boundarycomuni1 AS
    SELECT qgis.id_comune, qgis.nome_comune, st_boundary(qgis.coordinateconfine_comunegeometrie) AS coordinate FROM qgis;


--
-- TOC entry 2290 (class 1259 OID 307176)
-- Dependencies: 6
-- Name: capgrandicitta; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE capgrandicitta (
    id_capgrandecitta integer NOT NULL,
    cap_capgrandecitta character varying,
    nomestrada_capgrandecitta character varying,
    tipo_capgrandecitta character varying,
    nota_capgrandecitta character varying,
    idcomune_capgrandecitta integer
);


--
-- TOC entry 2280 (class 1259 OID 299585)
-- Dependencies: 2279 6
-- Name: confinicomuni_id_confinecomune_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE confinicomuni_id_confinecomune_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2919 (class 0 OID 0)
-- Dependencies: 2280
-- Name: confinicomuni_id_confinecomune_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE confinicomuni_id_confinecomune_seq OWNED BY comunigeometrie.gid_comunegeometrie;


--
-- TOC entry 2920 (class 0 OID 0)
-- Dependencies: 2280
-- Name: confinicomuni_id_confinecomune_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('confinicomuni_id_confinecomune_seq', 8099, true);


--
-- TOC entry 2281 (class 1259 OID 299587)
-- Dependencies: 2594 2595 2596 2597 2598 2599 2600 2601 2602 6 1002 1002 1002
-- Name: provincegeometrie; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE provincegeometrie (
    siglaprovincia_provinciageometrie character(2),
    gid_provinciageometrie integer NOT NULL,
    coordinateconfine_provinciageometrie geometry,
    coordinateconfinesemplificatemedio_provinciageometrie geometry,
    coordinateconfinesemplificatemax_provinciageometrie geometry,
    CONSTRAINT enforce_dims_coordinateconfine_provinciageometrie CHECK ((st_ndims(coordinateconfine_provinciageometrie) = 2)),
    CONSTRAINT enforce_dims_coordinateconfinesemplificatemax_provinciageometri CHECK ((st_ndims(coordinateconfinesemplificatemax_provinciageometrie) = 2)),
    CONSTRAINT enforce_dims_coordinateconfinesemplificatemedio_provinciageomet CHECK ((st_ndims(coordinateconfinesemplificatemedio_provinciageometrie) = 2)),
    CONSTRAINT enforce_geotype_coordinateconfine_provinciageometrie CHECK (((geometrytype(coordinateconfine_provinciageometrie) = 'MULTIPOLYGON'::text) OR (coordinateconfine_provinciageometrie IS NULL))),
    CONSTRAINT enforce_geotype_coordinateconfinesemplificatemax_provinciageome CHECK (((geometrytype(coordinateconfinesemplificatemax_provinciageometrie) = 'MULTIPOLYGON'::text) OR (coordinateconfinesemplificatemax_provinciageometrie IS NULL))),
    CONSTRAINT enforce_geotype_coordinateconfinesemplificatemedio_provinciageo CHECK (((geometrytype(coordinateconfinesemplificatemedio_provinciageometrie) = 'MULTIPOLYGON'::text) OR (coordinateconfinesemplificatemedio_provinciageometrie IS NULL))),
    CONSTRAINT enforce_srid_coordinateconfine_provinciageometrie CHECK ((st_srid(coordinateconfine_provinciageometrie) = 4326)),
    CONSTRAINT enforce_srid_coordinateconfinesemplificatemax_provinciageometri CHECK ((st_srid(coordinateconfinesemplificatemax_provinciageometrie) = 4326)),
    CONSTRAINT enforce_srid_coordinateconfinesemplificatemedio_provinciageomet CHECK ((st_srid(coordinateconfinesemplificatemedio_provinciageometrie) = 4326))
);


--
-- TOC entry 2282 (class 1259 OID 299596)
-- Dependencies: 6 2281
-- Name: confiniprovince_id_confineprovincia_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE confiniprovince_id_confineprovincia_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2921 (class 0 OID 0)
-- Dependencies: 2282
-- Name: confiniprovince_id_confineprovincia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE confiniprovince_id_confineprovincia_seq OWNED BY provincegeometrie.gid_provinciageometrie;


--
-- TOC entry 2922 (class 0 OID 0)
-- Dependencies: 2282
-- Name: confiniprovince_id_confineprovincia_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('confiniprovince_id_confineprovincia_seq', 110, true);


--
-- TOC entry 2283 (class 1259 OID 299598)
-- Dependencies: 2604 2605 2606 2607 2608 2609 6 1002 1002
-- Name: regionigeometrie; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE regionigeometrie (
    gid_regionegeometrie integer NOT NULL,
    codiceistatregione_regionegeometrie character varying,
    coordinateconfine_regionegeometrie geometry,
    coordinateconfinesemplificatemax_regionegeometrie geometry,
    CONSTRAINT enforce_dims_coordinateconfine_regionegeometrie CHECK ((st_ndims(coordinateconfine_regionegeometrie) = 2)),
    CONSTRAINT enforce_dims_coordinateconfinesemplificatemax_regionegeometrie CHECK ((st_ndims(coordinateconfinesemplificatemax_regionegeometrie) = 2)),
    CONSTRAINT enforce_geotype_coordinateconfine_regionegeometrie CHECK (((geometrytype(coordinateconfine_regionegeometrie) = 'MULTIPOLYGON'::text) OR (coordinateconfine_regionegeometrie IS NULL))),
    CONSTRAINT enforce_geotype_coordinateconfinesemplificatemax_regionegeometr CHECK (((geometrytype(coordinateconfinesemplificatemax_regionegeometrie) = 'MULTIPOLYGON'::text) OR (coordinateconfinesemplificatemax_regionegeometrie IS NULL))),
    CONSTRAINT enforce_srid_coordinateconfine_regionegeometrie CHECK ((st_srid(coordinateconfine_regionegeometrie) = 4326)),
    CONSTRAINT enforce_srid_coordinateconfinesemplificatemax_regionegeometrie CHECK ((st_srid(coordinateconfinesemplificatemax_regionegeometrie) = 4326))
);


--
-- TOC entry 2284 (class 1259 OID 299607)
-- Dependencies: 2283 6
-- Name: confiniregioni_id_confineregione_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE confiniregioni_id_confineregione_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- TOC entry 2923 (class 0 OID 0)
-- Dependencies: 2284
-- Name: confiniregioni_id_confineregione_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE confiniregioni_id_confineregione_seq OWNED BY regionigeometrie.gid_regionegeometrie;


--
-- TOC entry 2924 (class 0 OID 0)
-- Dependencies: 2284
-- Name: confiniregioni_id_confineregione_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('confiniregioni_id_confineregione_seq', 20, true);


--
-- TOC entry 2285 (class 1259 OID 299609)
-- Dependencies: 2610 2611 2612 6 1002
-- Name: frazioni; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE frazioni (
    id_frazione integer NOT NULL,
    nome_frazione character varying,
    idcomune_frazione integer,
    coordinatefrazione_frazionegeometrie geometry,
    CONSTRAINT enforce_dims_coordinatefrazione_frazionegeometrie CHECK ((st_ndims(coordinatefrazione_frazionegeometrie) = 2)),
    CONSTRAINT enforce_geotype_coordinatefrazione_frazionegeometrie CHECK (((geometrytype(coordinatefrazione_frazionegeometrie) = 'POINT'::text) OR (coordinatefrazione_frazionegeometrie IS NULL))),
    CONSTRAINT enforce_srid_coordinatefrazione_frazionegeometrie CHECK ((st_srid(coordinatefrazione_frazionegeometrie) = 4326))
);


SET default_with_oids = true;



--
-- TOC entry 2287 (class 1259 OID 299628)
-- Dependencies: 6
-- Name: province; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE province (
    sigla_provincia character(2) NOT NULL,
    nome_provincia character varying,
    codiceistat_provincia smallint,
    capoluogo_provincia character varying,
    sito_provincia character varying,
    stemma_provincia character varying,
    codiceistatregione_provincia character varying
);


--
-- TOC entry 2288 (class 1259 OID 299634)
-- Dependencies: 6
-- Name: regioni; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE regioni (
    nome_regione character(100) NOT NULL,
    capoluogo_regione character(100),
    sito_regione character(100),
    stemma_regione character(100),
    codiceistat_regione character varying NOT NULL
);

--
-- TOC entry 2603 (class 2604 OID 299645)
-- Dependencies: 2284 2283
-- Name: gid_regionegeometrie; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE regionigeometrie ALTER COLUMN gid_regionegeometrie SET DEFAULT nextval('confiniregioni_id_confineregione_seq'::regclass);

--
-- TOC entry 2639 (class 2606 OID 307183)
-- Dependencies: 2290 2290
-- Name: pk_capgrandicitta; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY capgrandicitta
    ADD CONSTRAINT pk_capgrandicitta PRIMARY KEY (id_capgrandecitta);


--
-- TOC entry 2615 (class 2606 OID 307131)
-- Dependencies: 2278 2278
-- Name: pk_comuni; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY comuni
    ADD CONSTRAINT pk_comuni PRIMARY KEY (id_comune);


--
-- TOC entry 2618 (class 2606 OID 307159)
-- Dependencies: 2279 2279
-- Name: pk_comunigeometrie; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY comunigeometrie
    ADD CONSTRAINT pk_comunigeometrie PRIMARY KEY (gid_comunegeometrie);


--
-- TOC entry 2627 (class 2606 OID 307145)
-- Dependencies: 2285 2285
-- Name: pk_frazioni; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY frazioni
    ADD CONSTRAINT pk_frazioni PRIMARY KEY (id_frazione);


--
-- TOC entry 2632 (class 2606 OID 307040)
-- Dependencies: 2287 2287
-- Name: pk_province; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY province
    ADD CONSTRAINT pk_province PRIMARY KEY (sigla_provincia);


--
-- TOC entry 2621 (class 2606 OID 307167)
-- Dependencies: 2281 2281
-- Name: pk_provincegeometrie; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY provincegeometrie
    ADD CONSTRAINT pk_provincegeometrie PRIMARY KEY (gid_provinciageometrie);


--
-- TOC entry 2634 (class 2606 OID 307045)
-- Dependencies: 2288 2288
-- Name: pk_regioni; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY regioni
    ADD CONSTRAINT pk_regioni PRIMARY KEY (codiceistat_regione);


--
-- TOC entry 2624 (class 2606 OID 307175)
-- Dependencies: 2283 2283
-- Name: pk_regionigeometrie; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY regionigeometrie
    ADD CONSTRAINT pk_regionigeometrie PRIMARY KEY (gid_regionegeometrie);



--
-- TOC entry 2637 (class 1259 OID 307189)
-- Dependencies: 2290
-- Name: fki_capgrandicitta; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX fki_capgrandicitta ON capgrandicitta USING btree (idcomune_capgrandecitta);


--
-- TOC entry 2613 (class 1259 OID 307137)
-- Dependencies: 2278
-- Name: fki_comuni; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX fki_comuni ON comuni USING btree (siglaprovincia_comune);


--
-- TOC entry 2616 (class 1259 OID 307165)
-- Dependencies: 2279
-- Name: fki_comunigeometrie; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX fki_comunigeometrie ON comunigeometrie USING btree (idcomune_comunegeometrie);


--
-- TOC entry 2625 (class 1259 OID 307151)
-- Dependencies: 2285
-- Name: fki_frazioni; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX fki_frazioni ON frazioni USING btree (idcomune_frazione);


--
-- TOC entry 2630 (class 1259 OID 307051)
-- Dependencies: 2287
-- Name: fki_province; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX fki_province ON province USING btree (codiceistatregione_provincia);


--
-- TOC entry 2619 (class 1259 OID 307173)
-- Dependencies: 2281
-- Name: fki_provincegeometrie; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX fki_provincegeometrie ON provincegeometrie USING btree (siglaprovincia_provinciageometrie);


--
-- TOC entry 2622 (class 1259 OID 307616)
-- Dependencies: 2283
-- Name: fki_regionigeometrie; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX fki_regionigeometrie ON regionigeometrie USING btree (codiceistatregione_regionegeometrie);


--
-- TOC entry 2646 (class 2606 OID 307184)
-- Dependencies: 2290 2278 2614
-- Name: fk_capgrandicitta; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY capgrandicitta
    ADD CONSTRAINT fk_capgrandicitta FOREIGN KEY (idcomune_capgrandecitta) REFERENCES comuni(id_comune);


--
-- TOC entry 2640 (class 2606 OID 307132)
-- Dependencies: 2631 2287 2278
-- Name: fk_comuni; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY comuni
    ADD CONSTRAINT fk_comuni FOREIGN KEY (siglaprovincia_comune) REFERENCES province(sigla_provincia);


--
-- TOC entry 2641 (class 2606 OID 307160)
-- Dependencies: 2279 2614 2278
-- Name: fk_comunigeometrie; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY comunigeometrie
    ADD CONSTRAINT fk_comunigeometrie FOREIGN KEY (idcomune_comunegeometrie) REFERENCES comuni(id_comune);


--
-- TOC entry 2644 (class 2606 OID 307146)
-- Dependencies: 2285 2278 2614
-- Name: fk_frazioni; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY frazioni
    ADD CONSTRAINT fk_frazioni FOREIGN KEY (idcomune_frazione) REFERENCES comuni(id_comune);


--
-- TOC entry 2645 (class 2606 OID 307046)
-- Dependencies: 2288 2287 2633
-- Name: fk_province; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY province
    ADD CONSTRAINT fk_province FOREIGN KEY (codiceistatregione_provincia) REFERENCES regioni(codiceistat_regione);


--
-- TOC entry 2642 (class 2606 OID 307168)
-- Dependencies: 2631 2287 2281
-- Name: fk_provincegeometrie; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY provincegeometrie
    ADD CONSTRAINT fk_provincegeometrie FOREIGN KEY (siglaprovincia_provinciageometrie) REFERENCES province(sigla_provincia);


--
-- TOC entry 2643 (class 2606 OID 307611)
-- Dependencies: 2288 2283 2633
-- Name: fk_regionigeometrie; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY regionigeometrie
    ADD CONSTRAINT fk_regionigeometrie FOREIGN KEY (codiceistatregione_regionegeometrie) REFERENCES regioni(codiceistat_regione);
