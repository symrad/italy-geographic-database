--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = true;

--
-- Name: geometry_columns; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE geometry_columns (
    f_table_catalog character varying(256) NOT NULL,
    f_table_schema character varying(256) NOT NULL,
    f_table_name character varying(256) NOT NULL,
    f_geometry_column character varying(256) NOT NULL,
    coord_dimension integer NOT NULL,
    srid integer NOT NULL,
    type character varying(30) NOT NULL
);


ALTER TABLE public.geometry_columns OWNER TO postgres;

--
-- Data for Name: geometry_columns; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO geometry_columns VALUES ('', 'public', 'frazioni', 'coordinatefrazione_frazionegeometrie', 2, 4326, 'POINT');
INSERT INTO geometry_columns VALUES ('', 'public', 'comunigeometrie', 'coordinateconfine_comunegeometrie', 2, 4326, 'MULTIPOLYGON');
INSERT INTO geometry_columns VALUES ('', 'public', 'provincegeometrie', 'coordinateconfine_provinciageometrie', 2, 4326, 'MULTIPOLYGON');
INSERT INTO geometry_columns VALUES ('', 'public', 'comunigeometrie', 'coordinatecomune_comunegeometrie', 2, 4326, 'POINT');
INSERT INTO geometry_columns VALUES ('', 'public', 'regionigeometrie', 'coordinateconfine_regionegeometrie', 2, 4326, 'MULTIPOLYGON');
INSERT INTO geometry_columns VALUES ('', 'public', 'regionigeometrie', 'coordinateconfinesemplificatemax_regionegeometrie', 2, 4326, 'MULTIPOLYGON');
INSERT INTO geometry_columns VALUES ('', 'public', 'provincegeometrie', 'coordinateconfinesemplificatemedio_provinciageometrie', 2, 4326, 'MULTIPOLYGON');
INSERT INTO geometry_columns VALUES ('', 'public', 'provincegeometrie', 'coordinateconfinesemplificatemax_provinciageometrie', 2, 4326, 'MULTIPOLYGON');


--
-- Name: geometry_columns_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY geometry_columns
    ADD CONSTRAINT geometry_columns_pk PRIMARY KEY (f_table_catalog, f_table_schema, f_table_name, f_geometry_column);


--
-- PostgreSQL database dump complete
--

