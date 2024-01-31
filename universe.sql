--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
-- Name: elements; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.elements (
    element_id integer NOT NULL,
    element_simbol character varying(30),
    element_name character varying(30)
);


ALTER TABLE public.elements OWNER TO freecodecamp;

--
-- Name: elements_element_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.elements_element_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.elements_element_id_seq OWNER TO freecodecamp;

--
-- Name: elements_element_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.elements_element_id_seq OWNED BY public.elements.element_id;


--
-- Name: elements_planets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.elements_planets (
    element_id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.elements_planets OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    size_in_millions_of_square_km integer,
    age_in_millions integer
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
    distance_from_planet integer,
    planet integer,
    is_solid boolean
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
    has_life boolean,
    proportion_vs_earth numeric(8,2),
    star integer,
    is_solid boolean,
    primary_element_id integer
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
    age_in_millions_of_years integer,
    galaxy integer,
    is_supernova boolean
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
-- Name: elements element_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements ALTER COLUMN element_id SET DEFAULT nextval('public.elements_element_id_seq'::regclass);


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
-- Data for Name: elements; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.elements VALUES (1, 'H', 'Hidrogeno');
INSERT INTO public.elements VALUES (2, 'O', 'Oxigeno');
INSERT INTO public.elements VALUES (3, 'N', 'Nitrogeno');
INSERT INTO public.elements VALUES (4, 'S', 'Selenio');
INSERT INTO public.elements VALUES (5, 'C', 'Carbono');


--
-- Data for Name: elements_planets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.elements_planets VALUES (1, 1);
INSERT INTO public.elements_planets VALUES (1, 2);
INSERT INTO public.elements_planets VALUES (2, 1);
INSERT INTO public.elements_planets VALUES (2, 3);
INSERT INTO public.elements_planets VALUES (2, 4);
INSERT INTO public.elements_planets VALUES (2, 5);
INSERT INTO public.elements_planets VALUES (1, 3);
INSERT INTO public.elements_planets VALUES (3, 2);
INSERT INTO public.elements_planets VALUES (3, 3);
INSERT INTO public.elements_planets VALUES (4, 2);
INSERT INTO public.elements_planets VALUES (4, 4);
INSERT INTO public.elements_planets VALUES (4, 6);
INSERT INTO public.elements_planets VALUES (5, 3);
INSERT INTO public.elements_planets VALUES (5, 5);
INSERT INTO public.elements_planets VALUES (5, 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Galaxia cercana a la via lactea', 145000, 456);
INSERT INTO public.galaxy VALUES (2, 'Alfa Centauri', 'De las galaxias mas lejanas a la tierra', 180584, 10058);
INSERT INTO public.galaxy VALUES (3, 'Virgo', 'La galaxia mas linda', 4587, 2100);
INSERT INTO public.galaxy VALUES (4, 'Via Lactea', 'Nuestra galaxia', 4000, 1800);
INSERT INTO public.galaxy VALUES (5, 'Orion', 'Galaxia en forma de guerrero', 5978, 3510);
INSERT INTO public.galaxy VALUES (6, 'Sagitarius', 'Ya no se que poner', 24555, 7833);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 200, 3, true);
INSERT INTO public.moon VALUES (2, 'Titan', 800, 6, true);
INSERT INTO public.moon VALUES (3, 'Artemis', 1520, 1, false);
INSERT INTO public.moon VALUES (4, 'Ajax', 145, 6, true);
INSERT INTO public.moon VALUES (5, 'Mederax', 444, 2, true);
INSERT INTO public.moon VALUES (6, 'Thordis', 244, 5, false);
INSERT INTO public.moon VALUES (7, 'Prepet', 20, 10, true);
INSERT INTO public.moon VALUES (8, 'Veret', 80, 8, true);
INSERT INTO public.moon VALUES (9, 'Ascalon', 120, 9, false);
INSERT INTO public.moon VALUES (10, 'Delta', 18, 12, true);
INSERT INTO public.moon VALUES (11, 'Atari', 44, 11, true);
INSERT INTO public.moon VALUES (12, 'Taxos', 24, 7, false);
INSERT INTO public.moon VALUES (13, 'Pervix', 55, 10, true);
INSERT INTO public.moon VALUES (14, 'Holbox', 87, 9, false);
INSERT INTO public.moon VALUES (15, 'Tartar', 60, 11, true);
INSERT INTO public.moon VALUES (16, 'Davos', 8, 8, false);
INSERT INTO public.moon VALUES (17, 'Linux', 77, 9, false);
INSERT INTO public.moon VALUES (18, 'Hasper', 91, 8, true);
INSERT INTO public.moon VALUES (19, 'Salvius', 89, 11, true);
INSERT INTO public.moon VALUES (20, 'Cartum', 80, 12, false);
INSERT INTO public.moon VALUES (21, 'Milion', 15, 10, true);
INSERT INTO public.moon VALUES (22, 'Nile', 37, 9, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Neptuno', false, 1.50, 1, true, 2);
INSERT INTO public.planet VALUES (2, 'Vertex', false, 0.80, 5, false, 5);
INSERT INTO public.planet VALUES (3, 'Tierra', true, 1.00, 1, true, 3);
INSERT INTO public.planet VALUES (4, 'ARX', false, 4.10, 6, false, 1);
INSERT INTO public.planet VALUES (5, 'Z-23', false, 2.80, 2, true, 4);
INSERT INTO public.planet VALUES (6, 'Jupiter', false, 100.50, 1, false, 1);
INSERT INTO public.planet VALUES (7, 'Tembal', false, 3.50, 4, true, 5);
INSERT INTO public.planet VALUES (8, 'Cobol', true, 0.10, 2, false, 4);
INSERT INTO public.planet VALUES (9, 'Zama', false, 12.80, 6, true, 3);
INSERT INTO public.planet VALUES (10, 'Dolly', false, 1.10, 5, false, 1);
INSERT INTO public.planet VALUES (11, 'Almond', true, 0.90, 4, true, 1);
INSERT INTO public.planet VALUES (12, 'Drexler', false, 10.90, 3, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 480, 4, false);
INSERT INTO public.star VALUES (2, 'Ursus', 248, 2, false);
INSERT INTO public.star VALUES (3, 'Certerus', 1520, 1, false);
INSERT INTO public.star VALUES (4, 'Polar', 995, 3, true);
INSERT INTO public.star VALUES (5, 'Polux', 745, 6, false);
INSERT INTO public.star VALUES (6, 'Castor', 445, 6, false);


--
-- Name: elements_element_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.elements_element_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: elements elements_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_pkey PRIMARY KEY (element_id);


--
-- Name: elements_planets elements_planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements_planets
    ADD CONSTRAINT elements_planets_pkey PRIMARY KEY (element_id, planet_id);


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
-- Name: galaxy uq_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_name_galaxy UNIQUE (name);


--
-- Name: moon uq_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_name_moon UNIQUE (name);


--
-- Name: planet uq_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_name_planet UNIQUE (name);


--
-- Name: star uq_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_name_star UNIQUE (name);


--
-- Name: elements_planets fk_element_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements_planets
    ADD CONSTRAINT fk_element_id FOREIGN KEY (element_id) REFERENCES public.elements(element_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet) REFERENCES public.planet(planet_id);


--
-- Name: elements_planets fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements_planets
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

