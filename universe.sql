--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric(100,10),
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric(100,10),
    description text,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: numerocinco; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.numerocinco (
    numerocinco_id integer NOT NULL,
    name character varying(50) NOT NULL,
    terceracolumna integer
);


ALTER TABLE public.numerocinco OWNER TO freecodecamp;

--
-- Name: numerocinco_numerocinco_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.numerocinco_numerocinco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.numerocinco_numerocinco_id_seq OWNER TO freecodecamp;

--
-- Name: numerocinco_numerocinco_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.numerocinco_numerocinco_id_seq OWNED BY public.numerocinco.numerocinco_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric(100,10),
    description text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric(100,10),
    description text,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: numerocinco numerocinco_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.numerocinco ALTER COLUMN numerocinco_id SET DEFAULT nextval('public.numerocinco_numerocinco_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 1000000, 1000000.0000000000, 'Esta es mi primera galaxia', true);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 2000000, 2000000.0000000000, 'Esta es mi segunda galaxia', true);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 3000000, 3000000.0000000000, 'Esta es mi tecera galaxia', true);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 4000000, 4000000.0000000000, 'Esta es mi cuarta galaxia', false);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 5000000, 5000000.0000000000, 'Esta es mi quinta galaxia', false);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 6000000, 6000000.0000000000, 'Esta es mi sexta galaxia', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 10000, 10000.0000000000, 'MOON1', true, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 20000, 20000.0000000000, 'MOON2', true, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 30000, 30000.0000000000, 'MOON3', true, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 40000, 40000.0000000000, 'MOON4', true, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 50000, 50000.0000000000, 'MOON5', true, 5);
INSERT INTO public.moon VALUES (6, 'moon6', 60000, 60000.0000000000, 'MOON6', true, 6);
INSERT INTO public.moon VALUES (7, 'moon7', 70000, 70000.0000000000, 'MOON7', true, 7);
INSERT INTO public.moon VALUES (8, 'moon8', 80000, 80000.0000000000, 'MOON8', true, 8);
INSERT INTO public.moon VALUES (9, 'moon9', 90000, 90000.0000000000, 'MOON9', true, 9);
INSERT INTO public.moon VALUES (10, 'moon10', 100000, 100000.0000000000, 'MOON10', true, 10);
INSERT INTO public.moon VALUES (11, 'moon11', 110000, 110000.0000000000, 'MOON11', false, 11);
INSERT INTO public.moon VALUES (12, 'moon12', 120000, 120000.0000000000, 'MOON12', false, 12);
INSERT INTO public.moon VALUES (13, 'moon13', 130000, 130000.0000000000, 'MOON13', false, 1);
INSERT INTO public.moon VALUES (14, 'moon14', 140000, 140000.0000000000, 'MOON14', false, 2);
INSERT INTO public.moon VALUES (15, 'moon15', 150000, 150000.0000000000, 'MOON15', false, 3);
INSERT INTO public.moon VALUES (16, 'moon16', 160000, 160000.0000000000, 'MOON16', false, 4);
INSERT INTO public.moon VALUES (17, 'moon17', 170000, 170000.0000000000, 'MOON17', false, 5);
INSERT INTO public.moon VALUES (18, 'moon18', 180000, 180000.0000000000, 'MOON18', false, 6);
INSERT INTO public.moon VALUES (19, 'moon19', 190000, 190000.0000000000, 'MOON19', false, 7);
INSERT INTO public.moon VALUES (20, 'moon20', 200000, 200000.0000000000, 'MOON20', false, 8);


--
-- Data for Name: numerocinco; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.numerocinco VALUES (1, '1', 1);
INSERT INTO public.numerocinco VALUES (2, '2', 2);
INSERT INTO public.numerocinco VALUES (3, '3', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 10000, 10000.0000000000, 'Este es mi primer planeta', true, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 20000, 20000.0000000000, 'Este es mi segundo planeta', true, 2);
INSERT INTO public.planet VALUES (3, 'planet3', 30000, 30000.0000000000, 'Este es mi tercer planeta', true, 3);
INSERT INTO public.planet VALUES (4, 'planet4', 40000, 40000.0000000000, 'Este es mi cuarto planeta', false, 4);
INSERT INTO public.planet VALUES (5, 'planet5', 50000, 50000.0000000000, 'Este es mi quinto planeta', false, 5);
INSERT INTO public.planet VALUES (6, 'planet6', 60000, 60000.0000000000, 'Este es mi sexto planeta', false, 6);
INSERT INTO public.planet VALUES (7, 'planet7', 70000, 70000.0000000000, 'Este es mi séptimo planeta', true, 1);
INSERT INTO public.planet VALUES (8, 'planet8', 80000, 80000.0000000000, 'Este es mi octavo planeta', true, 2);
INSERT INTO public.planet VALUES (9, 'planet9', 90000, 90000.0000000000, 'Este es mi noveno planeta', true, 3);
INSERT INTO public.planet VALUES (10, 'planet10', 100000, 100000.0000000000, 'Este es mi décimo planeta', false, 4);
INSERT INTO public.planet VALUES (11, 'planet11', 110000, 110000.0000000000, 'Este es mi undécimo planeta', false, 5);
INSERT INTO public.planet VALUES (12, 'planet12', 120000, 120000.0000000000, 'Este es mi duodécimo planeta', false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1000000, 1000000.0000000000, 'Esta es mi primera estrella', true, 1);
INSERT INTO public.star VALUES (2, 'star2', 2000000, 2000000.0000000000, 'Esta es mi segunda estrella', true, 2);
INSERT INTO public.star VALUES (3, 'star3', 3000000, 3000000.0000000000, 'Esta es mi tecera estrella', true, 3);
INSERT INTO public.star VALUES (4, 'star4', 4000000, 4000000.0000000000, 'Esta es mi cuarta estrella', false, 4);
INSERT INTO public.star VALUES (5, 'star5', 5000000, 5000000.0000000000, 'Esta es mi quinta estrella', false, 5);
INSERT INTO public.star VALUES (6, 'star6', 6000000, 6000000.0000000000, 'Esta es mi sexta estrella', false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: numerocinco_numerocinco_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.numerocinco_numerocinco_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: numerocinco numerocinco_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.numerocinco
    ADD CONSTRAINT numerocinco_name_key UNIQUE (name);


--
-- Name: numerocinco numerocinco_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.numerocinco
    ADD CONSTRAINT numerocinco_pkey PRIMARY KEY (numerocinco_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

