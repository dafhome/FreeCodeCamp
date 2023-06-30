--
-- PostgreSQL database dump
--

-- Dumped from database version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)

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
-- Name: astronomer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomer (
    astronomer_id integer NOT NULL,
    name character varying(100) NOT NULL,
    specialization text,
    email character varying(100),
    observatory text
);


ALTER TABLE public.astronomer OWNER TO freecodecamp;

--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomer_astronomer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomer_astronomer_id_seq OWNER TO freecodecamp;

--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomer_astronomer_id_seq OWNED BY public.astronomer.astronomer_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    size integer,
    age integer,
    has_black_hole boolean
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
    name character varying(100) NOT NULL,
    planet_id integer,
    diameter integer,
    surface_temperature integer,
    is_habitable boolean
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
    name character varying(100) NOT NULL,
    star_id integer,
    radius integer,
    orbital_period numeric,
    has_water boolean
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
    name character varying(100) NOT NULL,
    galaxy_id integer,
    mass integer,
    temperature integer,
    is_super_giant boolean
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
-- Name: astronomer astronomer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer ALTER COLUMN astronomer_id SET DEFAULT nextval('public.astronomer_astronomer_id_seq'::regclass);


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
-- Data for Name: astronomer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomer VALUES (1, 'John Doe', 'Astrophysics', 'johndoe@example.com', 'Stargazer Observatory');
INSERT INTO public.astronomer VALUES (2, 'Jane Smith', 'Cosmology', 'janesmith@example.com', 'Galaxy Exploration Institute');
INSERT INTO public.astronomer VALUES (3, 'Robert Johnson', 'Planetary Science', 'robertjohnson@example.com', 'Celestial Research Center');
INSERT INTO public.astronomer VALUES (4, 'Michael Anderson', 'Astrobiology', 'michaelanderson@example.com', 'Astrobiological Research Institute');
INSERT INTO public.astronomer VALUES (5, 'Sarah Thompson', 'Astrophotography', 'sarahthompson@example.com', 'Stellar Imaging Observatory');
INSERT INTO public.astronomer VALUES (6, 'David Wilson', 'Galactic Dynamics', 'davidwilson@example.com', 'Center for Galactic Studies');
INSERT INTO public.astronomer VALUES (7, 'Emily Davis', 'Exoplanet Research', 'emilydavis@example.com', 'Exoplanet Exploration Center');
INSERT INTO public.astronomer VALUES (8, 'Mark Roberts', 'Astrochemistry', 'markroberts@example.com', 'Cosmic Chemistry Laboratory');
INSERT INTO public.astronomer VALUES (9, 'Amy Reynolds', 'Astrostatistics', 'amyreynolds@example.com', 'Statistical Astronomy Institute');
INSERT INTO public.astronomer VALUES (10, 'Thomas Walker', 'Gravitational Waves', 'thomaswalker@example.com', 'Gravitational Wave Observatory');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 13000, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 120000, 11000, false);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 50000, 9000, false);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 60000, 11000, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 40000, 8000, false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 45000, 8500, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 3474, -233, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 22, -40, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 12, -40, false);
INSERT INTO public.moon VALUES (4, 'Europa', 3, 3122, -171, true);
INSERT INTO public.moon VALUES (5, 'Ganymede', 3, 5262, -163, false);
INSERT INTO public.moon VALUES (6, 'Callisto', 3, 4821, -153, false);
INSERT INTO public.moon VALUES (7, 'Titan', 4, 5149, -179, false);
INSERT INTO public.moon VALUES (8, 'Enceladus', 4, 504, -198, true);
INSERT INTO public.moon VALUES (9, 'Triton', 5, 2707, -235, false);
INSERT INTO public.moon VALUES (10, 'Charon', 6, 606, -229, false);
INSERT INTO public.moon VALUES (11, 'Kepler-452b Moon', 7, 3474, -233, false);
INSERT INTO public.moon VALUES (12, 'HD 209458 b Moon', 8, 504, -198, false);
INSERT INTO public.moon VALUES (13, 'K2-18b Moon', 9, 524, -216, false);
INSERT INTO public.moon VALUES (14, 'WASP-12b Moon', 10, 502, -224, false);
INSERT INTO public.moon VALUES (15, 'GJ 1214 b Moon', 11, 320, -223, false);
INSERT INTO public.moon VALUES (16, 'HAT-P-26b Moon', 12, 680, -213, false);
INSERT INTO public.moon VALUES (17, 'Europa Moon', 3, 3122, -171, false);
INSERT INTO public.moon VALUES (18, 'Ganymede Moon', 3, 5262, -163, false);
INSERT INTO public.moon VALUES (19, 'Callisto Moon', 3, 4821, -153, false);
INSERT INTO public.moon VALUES (20, 'Titan Moon', 4, 5149, -179, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 6371, 365.25, true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 3389, 687, false);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, 69911, 4332, false);
INSERT INTO public.planet VALUES (4, 'Saturn', 1, 58232, 10759, false);
INSERT INTO public.planet VALUES (5, 'Neptune', 1, 24622, 60190, false);
INSERT INTO public.planet VALUES (6, 'Pluto', 1, 1188, 90560, false);
INSERT INTO public.planet VALUES (7, 'Kepler-452b', 2, 6371, 384.84, true);
INSERT INTO public.planet VALUES (8, 'HD 209458 b', 2, 76432, 365.25, false);
INSERT INTO public.planet VALUES (9, 'K2-18b', 2, 8750, 32.94, true);
INSERT INTO public.planet VALUES (10, 'WASP-12b', 2, 173390, 26.09, false);
INSERT INTO public.planet VALUES (11, 'GJ 1214 b', 2, 8200, 1.58, true);
INSERT INTO public.planet VALUES (12, 'HAT-P-26b', 2, 98000, 4.23, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1989000, 5778, false);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 2, 12300, 3042, false);
INSERT INTO public.star VALUES (3, 'Sirius', 1, 2000000, 9940, false);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 1100000, 3560, true);
INSERT INTO public.star VALUES (5, 'Vega', 1, 2000000, 9602, false);
INSERT INTO public.star VALUES (6, 'Alpha Centauri', 2, 2000000, 5790, false);


--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomer_astronomer_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronomer astronomer_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_name_key UNIQUE (name);


--
-- Name: astronomer astronomer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_pkey PRIMARY KEY (astronomer_id);


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

