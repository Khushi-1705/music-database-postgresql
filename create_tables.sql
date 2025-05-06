--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-05-03 14:17:02

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 16388)
-- Name: album; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.album (
    album_id character varying(50) NOT NULL,
    title character varying(120),
    artist_id character varying(30)
);


ALTER TABLE public.album OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16391)
-- Name: artist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artist (
    artist_id character varying(50) NOT NULL,
    name character varying(120)
);


ALTER TABLE public.artist OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16394)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    first_name character(50),
    last_name character(50),
    company character varying(120),
    address character varying(120),
    city character varying(50),
    state character varying(50),
    country character varying(50),
    postal_code character varying(50),
    phone character varying(50),
    fax character varying(50),
    email character varying(50),
    support_rep_id integer
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16399)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    employee_id character varying(50) NOT NULL,
    last_name character(50),
    first_name character(50),
    title character varying(50),
    reports_to character varying(30),
    levels character varying(10),
    birthdate timestamp without time zone,
    hire_date timestamp without time zone,
    address character varying(120),
    city character varying(50),
    state character varying(50),
    country character varying(30),
    postal_code character varying(30),
    phone character varying(30),
    fax character varying(30),
    email character varying(30)
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16404)
-- Name: genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genre (
    genre_id character varying(50) NOT NULL,
    name character varying(120)
);


ALTER TABLE public.genre OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16407)
-- Name: invoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice (
    invoice_id integer NOT NULL,
    customer_id integer,
    invoice_date timestamp without time zone,
    billing_address character varying(120),
    billing_city character varying(30),
    billing_state character varying(30),
    billing_country character varying(30),
    billing_postal character varying(30),
    total double precision
);


ALTER TABLE public.invoice OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16410)
-- Name: invoice_line; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice_line (
    invoice_line_id character varying(50) NOT NULL,
    invoice_id integer,
    track_id integer,
    unit_price double precision,
    quantity double precision
);


ALTER TABLE public.invoice_line OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16413)
-- Name: media_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.media_type (
    media_type_id character varying(50) NOT NULL,
    name character varying(120)
);


ALTER TABLE public.media_type OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16416)
-- Name: playlist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.playlist (
    playlist_id character varying(50) NOT NULL,
    name character varying(120)
);


ALTER TABLE public.playlist OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16419)
-- Name: playlist_track; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.playlist_track (
    playlist_id character varying(50),
    track_id integer
);


ALTER TABLE public.playlist_track OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16422)
-- Name: track; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.track (
    track_id integer NOT NULL,
    name character varying(150),
    album_id character varying(50),
    media_type_id character varying(50),
    genre_id character varying(50),
    composer character varying(190),
    milliseconds integer,
    bytes integer,
    unit_price double precision
);


ALTER TABLE public.track OWNER TO postgres;

-- Completed on 2025-05-03 14:17:03

--
-- PostgreSQL database dump complete
--

