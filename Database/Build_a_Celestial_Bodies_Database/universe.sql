--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: asteroids_and_coments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids_and_coments (
    asteroids_and_coments_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type character varying(100) NOT NULL
);


ALTER TABLE public.asteroids_and_coments OWNER TO freecodecamp;

--
-- Name: asteroids_and_coments_asteroids_and_coments_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_and_coments_asteroids_and_coments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_and_coments_asteroids_and_coments_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_and_coments_asteroids_and_coments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_and_coments_asteroids_and_coments_id_seq OWNED BY public.asteroids_and_coments.asteroids_and_coments_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100),
    galaxy_type character varying(50),
    description text NOT NULL,
    we_are_here boolean NOT NULL
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
    name character varying(100),
    distance_from_earth numeric(12,5),
    visited boolean NOT NULL,
    radius_in_km integer NOT NULL,
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
    description text,
    planet_type character varying(50),
    has_life boolean,
    age_in_millions_of_years integer,
    name character varying(100) NOT NULL,
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
    name character varying(100),
    distance_from_earth numeric(12,5),
    age_in_millions_of_years integer NOT NULL,
    star_type character varying(50) NOT NULL,
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
-- Name: asteroids_and_coments asteroids_and_coments_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids_and_coments ALTER COLUMN asteroids_and_coments_id SET DEFAULT nextval('public.asteroids_and_coments_asteroids_and_coments_id_seq'::regclass);


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
-- Data for Name: asteroids_and_coments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids_and_coments VALUES (1, 'Lucas', 'A');
INSERT INTO public.asteroids_and_coments VALUES (2, 'Emilio', 'B');
INSERT INTO public.asteroids_and_coments VALUES (3, 'Sanchez', 'C');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via lactea', 'SBbc', 'Galaxia que alberga a la tierra', true);
INSERT INTO public.galaxy VALUES (2, 'Enana del Can Mayor', 'Irr', 'Satelite de la Via lactea', false);
INSERT INTO public.galaxy VALUES (3, 'Enana Eliptica de sagitario', 'dSph/E7', 'Satelite de la via lactea', false);
INSERT INTO public.galaxy VALUES (5, 'Gran Nube de Magallanes', 'Irr/SB', 'Satelite de la via lactea 3', false);
INSERT INTO public.galaxy VALUES (6, 'Enana de Bootes', 'dSph', 'Satelite de la via lactea 4', false);
INSERT INTO public.galaxy VALUES (7, 'Pequeña nube de magallanes', 'SB', 'Satelite de la via lactea 5', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 100000.00000, true, 7000, 1);
INSERT INTO public.moon VALUES (2, 'Fobos', 90000.00000, false, 6000, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 80000.00000, false, 5000, 4);
INSERT INTO public.moon VALUES (5, 'Lo', 70000.00000, false, 4500, 5);
INSERT INTO public.moon VALUES (6, 'Europa', 75000.00000, false, 4550, 5);
INSERT INTO public.moon VALUES (7, 'Ganymede', 500000.00000, false, 8000, 5);
INSERT INTO public.moon VALUES (8, 'Callisto', 550000.00000, false, 8500, 5);
INSERT INTO public.moon VALUES (9, 'Amaltea', 555000.00000, false, 8550, 5);
INSERT INTO public.moon VALUES (10, 'Himalia', 556000.00000, false, 8560, 5);
INSERT INTO public.moon VALUES (11, 'Elara', 557000.00000, false, 8570, 5);
INSERT INTO public.moon VALUES (12, 'Pasiphae', 558000.00000, false, 8580, 5);
INSERT INTO public.moon VALUES (13, 'Sinope', 559000.00000, false, 8590, 5);
INSERT INTO public.moon VALUES (14, 'Lysithea', 561000.00000, false, 8610, 5);
INSERT INTO public.moon VALUES (15, 'Carmea', 562000.00000, false, 8620, 5);
INSERT INTO public.moon VALUES (16, 'Ananke', 563000.00000, false, 8630, 5);
INSERT INTO public.moon VALUES (17, 'Leda', 564000.00000, false, 8640, 5);
INSERT INTO public.moon VALUES (18, 'Thebe', 565000.00000, false, 8650, 5);
INSERT INTO public.moon VALUES (19, 'Adrastea', 566000.00000, false, 8660, 5);
INSERT INTO public.moon VALUES (20, 'Metis', 567000.00000, false, 8670, 5);
INSERT INTO public.moon VALUES (21, 'Callirrhoe', 568000.00000, false, 8680, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'El planeta azul', 'A', true, 10000000, 'Tierra', 1);
INSERT INTO public.planet VALUES (2, 'El planeta sin satelites', 'A', false, 20000000, 'Mercurio', 1);
INSERT INTO public.planet VALUES (3, 'Recibe su nombre de la diosa romana Venus', 'A', false, 30000000, 'Venus', 1);
INSERT INTO public.planet VALUES (4, 'El planeta Rojo', 'A', false, 40000000, 'Marte', 1);
INSERT INTO public.planet VALUES (5, 'Recibe su nombre del dios romano Jupiter', 'A', false, 50000000, 'Jupiter', 1);
INSERT INTO public.planet VALUES (6, 'Recibe su nombre del dios romano Saturno', 'A', false, 60000000, 'Saturno', 1);
INSERT INTO public.planet VALUES (7, 'Recibe su nombre de la divinidad griega Urano', 'A', false, 70000000, 'Urano', 1);
INSERT INTO public.planet VALUES (8, 'Descubierto por predicciones matematicas', 'A', false, 80000000, 'Neptuno', 1);
INSERT INTO public.planet VALUES (9, 'Objeto astronomico mas grande del cinturon asteroides', 'B', false, 90000000, 'Ceres', 1);
INSERT INTO public.planet VALUES (10, 'Recibe su nombre del dios romano Pluton', 'B', false, 100000000, 'Pluton', 1);
INSERT INTO public.planet VALUES (11, '136108', 'B', false, 110000000, 'Haumea', 1);
INSERT INTO public.planet VALUES (12, '2055FY', 'B', false, 120000000, 'Makemake', 1);
INSERT INTO public.planet VALUES (13, '136199', 'B', false, 130000000, 'Eris', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1000000.00000, 123456789, 'G', 1);
INSERT INTO public.star VALUES (2, 'Aldebaran', 2000000.00000, 223456789, 'H', 2);
INSERT INTO public.star VALUES (3, 'Antares', 3000000.00000, 323456789, 'J', 3);
INSERT INTO public.star VALUES (5, 'Arcturus', 4000000.00000, 423456789, 'K', 5);
INSERT INTO public.star VALUES (6, 'Gacrux', 5000000.00000, 523456789, 'L', 6);
INSERT INTO public.star VALUES (7, 'Hamal', 6000000.00000, 623456789, 'M', 7);


--
-- Name: asteroids_and_coments_asteroids_and_coments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_and_coments_asteroids_and_coments_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: asteroids_and_coments asteroids_and_coments_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids_and_coments
    ADD CONSTRAINT asteroids_and_coments_name_key UNIQUE (name);


--
-- Name: asteroids_and_coments asteroids_and_coments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids_and_coments
    ADD CONSTRAINT asteroids_and_coments_pkey PRIMARY KEY (asteroids_and_coments_id);


--
-- Name: asteroids_and_coments asteroids_and_coments_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids_and_coments
    ADD CONSTRAINT asteroids_and_coments_type_key UNIQUE (type);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


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
-- Name: moon moon_radius_in_km_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_radius_in_km_key UNIQUE (radius_in_km);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_type_key UNIQUE (star_type);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

