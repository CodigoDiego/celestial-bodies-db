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
-- Name: dfe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dfe (
    dfe_id integer NOT NULL,
    name character varying(30) NOT NULL,
    value numeric NOT NULL
);


ALTER TABLE public.dfe OWNER TO freecodecamp;

--
-- Name: dfe_dfe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dfe_dfe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dfe_dfe_id_seq OWNER TO freecodecamp;

--
-- Name: dfe_dfe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dfe_dfe_id_seq OWNED BY public.dfe.dfe_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text NOT NULL,
    age integer NOT NULL,
    size integer NOT NULL
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
    name character varying(30) NOT NULL,
    radius numeric,
    orbit_time numeric,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean NOT NULL,
    mass integer NOT NULL,
    has_life boolean NOT NULL,
    color text NOT NULL,
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
    name character varying(30) NOT NULL,
    spectral_type text,
    temp integer,
    age integer,
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
-- Name: dfe dfe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dfe ALTER COLUMN dfe_id SET DEFAULT nextval('public.dfe_dfe_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: dfe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dfe VALUES (1, 'Luna', 384400);
INSERT INTO public.dfe VALUES (2, 'Europa', 628300000);
INSERT INTO public.dfe VALUES (3, 'Titan', 1400000000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (7, 'Milky Way', 'Spiral', 13, 3);
INSERT INTO public.galaxy VALUES (8, 'Andromeda', 'Spiral', 10, 3);
INSERT INTO public.galaxy VALUES (9, 'Triangulum Galaxy', 'Spiral', 12, 2);
INSERT INTO public.galaxy VALUES (10, 'Sombrero', 'Elliptical', 9, 3);
INSERT INTO public.galaxy VALUES (11, 'Whirpool', 'Spiral', 8, 2);
INSERT INTO public.galaxy VALUES (12, 'Cigar', 'Irregular', 5, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (6, 'Luna', 1737.5, 27.3, 4);
INSERT INTO public.moon VALUES (7, 'Europa', 1560.8, 3.5, 5);
INSERT INTO public.moon VALUES (8, 'Titán', 2574.73, 15.95, 6);
INSERT INTO public.moon VALUES (9, 'Io', 1821.6, 1.77, 7);
INSERT INTO public.moon VALUES (10, 'Ganimedes', 2634.1, 7.15, 16);
INSERT INTO public.moon VALUES (11, 'Calisto', 2410.3, 16.69, 17);
INSERT INTO public.moon VALUES (12, 'Encélado', 252.1, 1.37, 18);
INSERT INTO public.moon VALUES (13, 'Mimas', 198.2, 0.942, 19);
INSERT INTO public.moon VALUES (14, 'Deimos', 6.2, 1.26, 20);
INSERT INTO public.moon VALUES (15, 'Fobos', 11.1, 0.32, 21);
INSERT INTO public.moon VALUES (16, 'Tritón', 1353.4, 5.88, 22);
INSERT INTO public.moon VALUES (17, 'Larissa', 97.5, 0.55, 23);
INSERT INTO public.moon VALUES (18, 'Apolo', 400, 0.3, 4);
INSERT INTO public.moon VALUES (19, 'Diana', 300, 0.6, 5);
INSERT INTO public.moon VALUES (20, 'Athena', 250, 0.4, 6);
INSERT INTO public.moon VALUES (21, 'Hermes', 350, 0.5, 7);
INSERT INTO public.moon VALUES (22, 'Artemis', 280, 0.7, 16);
INSERT INTO public.moon VALUES (23, 'Perseus', 320, 0.45, 17);
INSERT INTO public.moon VALUES (24, 'Orion', 380, 0.55, 18);
INSERT INTO public.moon VALUES (25, 'Aurora', 420, 0.6, 19);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'Terra', true, 5, true, 'blue', 19);
INSERT INTO public.planet VALUES (5, 'Aurora', true, 3, false, 'green', 20);
INSERT INTO public.planet VALUES (6, 'Cronos', true, 4, false, 'yellow', 21);
INSERT INTO public.planet VALUES (7, 'Zephyr', false, 1, false, 'pink', 22);
INSERT INTO public.planet VALUES (16, 'Avalon', true, 8, true, 'purple', 23);
INSERT INTO public.planet VALUES (17, 'Nimbus', false, 2, false, 'gray', 24);
INSERT INTO public.planet VALUES (18, 'Solaris', true, 6, false, 'orange', 19);
INSERT INTO public.planet VALUES (19, 'Aether', false, 7, false, 'white', 20);
INSERT INTO public.planet VALUES (20, 'Elysium', true, 9, true, 'purple', 21);
INSERT INTO public.planet VALUES (21, 'Galatea', false, 12, false, 'blue', 22);
INSERT INTO public.planet VALUES (22, 'Polaris', false, 10, false, 'green', 23);
INSERT INTO public.planet VALUES (23, 'Stellaris', true, 11, false, 'yellow', 24);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (19, 'Sun', 'G2V', 5778, 4, 7);
INSERT INTO public.star VALUES (20, 'Sirius', 'A1V', 9940, 237, 8);
INSERT INTO public.star VALUES (21, 'Alpha Centauri A', 'G2V', 5790, 6, 8);
INSERT INTO public.star VALUES (22, 'Alpha Centauri B', 'K1V', 5260, 6, 9);
INSERT INTO public.star VALUES (23, 'Proxima Centauri', 'M55Ve', 3042, 5, 10);
INSERT INTO public.star VALUES (24, 'Betelgeuse', 'M12lalab', 3600, 9, 12);


--
-- Name: dfe_dfe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dfe_dfe_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 25, true);


--
-- Name: dfe dfe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dfe
    ADD CONSTRAINT dfe_pkey PRIMARY KEY (dfe_id);


--
-- Name: dfe dfe_value_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dfe
    ADD CONSTRAINT dfe_value_key UNIQUE (value);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_mass_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_mass_key UNIQUE (mass);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: dfe uq_dfe_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dfe
    ADD CONSTRAINT uq_dfe_name UNIQUE (name);


--
-- Name: moon uq_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_moon_name UNIQUE (name);


--
-- Name: galaxy uq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_name UNIQUE (name);


--
-- Name: planet uq_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet_name UNIQUE (name);


--
-- Name: star uq_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star_name UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fkplanet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fkplanet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

