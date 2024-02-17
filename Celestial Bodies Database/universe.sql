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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    number_of_moons integer,
    age_in_millions_of_years numeric(4,1) NOT NULL,
    is_life boolean,
    is_water boolean,
    description text,
    dist_from_earth_inmillkms integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: milkyway; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.milkyway (
    milkyway_id integer NOT NULL,
    name character varying(40) NOT NULL,
    number_of_moons integer,
    age_in_millions_of_years numeric(4,1) NOT NULL,
    is_life boolean,
    is_water boolean,
    description text,
    dist_from_earth_inmillkms integer NOT NULL
);


ALTER TABLE public.milkyway OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    number_of_moons integer,
    age_in_millions_of_years numeric(4,1) NOT NULL,
    is_life boolean,
    is_water boolean,
    description text,
    dist_from_earth_inmillkms integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    number_of_moons integer,
    age_in_millions_of_years numeric(4,1) NOT NULL,
    is_life boolean,
    is_water boolean,
    description text,
    dist_from_earth_inmillkms integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    number_of_moons integer,
    age_in_millions_of_years numeric(4,1) NOT NULL,
    is_life boolean,
    is_water boolean,
    description text,
    dist_from_earth_inmillkms integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', 11, 111.1, false, false, 'aaa', 1111);
INSERT INTO public.galaxy VALUES (2, 'b', 22, 222.2, false, false, 'bbb', 2222);
INSERT INTO public.galaxy VALUES (3, 'c', 33, 333.3, false, false, 'ccc', 3333);
INSERT INTO public.galaxy VALUES (4, 'd', 44, 444.4, true, true, 'ddd', 4444);
INSERT INTO public.galaxy VALUES (5, 'e', 55, 555.5, true, false, 'eee', 5555);
INSERT INTO public.galaxy VALUES (6, 'f', 66, 666.6, false, true, 'fff', 6666);
INSERT INTO public.galaxy VALUES (7, 'g', 77, 777.7, false, false, 'ggg', 7777);
INSERT INTO public.galaxy VALUES (8, 'h', 88, 888.8, true, false, 'hhh', 8888);
INSERT INTO public.galaxy VALUES (9, 'i', 99, 999.9, false, false, 'iii', 9999);
INSERT INTO public.galaxy VALUES (10, 'j', 1010, 100.1, false, false, 'jjj', 1010);
INSERT INTO public.galaxy VALUES (11, 'k', 111, 111.1, false, false, 'kkk', 1111);
INSERT INTO public.galaxy VALUES (12, 'l', 12, 12.1, false, false, 'lll', 1212);
INSERT INTO public.galaxy VALUES (13, 'm', 13, 131.3, false, false, 'mmm', 1313);
INSERT INTO public.galaxy VALUES (14, 'n', 141, 141.4, false, false, 'nnn', 1414);
INSERT INTO public.galaxy VALUES (15, 'o', 151, 151.5, false, false, 'ooo', 1515);
INSERT INTO public.galaxy VALUES (16, 'p', 161, 161.6, false, false, 'ppp', 1616);
INSERT INTO public.galaxy VALUES (17, 'q', 171, 171.7, false, false, 'qqq', 1717);
INSERT INTO public.galaxy VALUES (18, 'r', 181, 181.8, false, false, 'rrr', 1818);
INSERT INTO public.galaxy VALUES (19, 's', 191, 191.9, false, false, 'sss', 1919);
INSERT INTO public.galaxy VALUES (20, 't', 202, 200.2, false, false, 'ttt', 2020);
INSERT INTO public.galaxy VALUES (21, 'u', 212, 212.1, false, false, 'uuu', 2121);
INSERT INTO public.galaxy VALUES (22, 'v', 222, 222.2, false, false, 'vvv', 2222);


--
-- Data for Name: milkyway; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.milkyway VALUES (1, 'a', 11, 111.1, false, false, 'aaa', 1111);
INSERT INTO public.milkyway VALUES (2, 'b', 22, 222.2, false, false, 'bbb', 2222);
INSERT INTO public.milkyway VALUES (3, 'c', 33, 333.3, false, false, 'ccc', 3333);
INSERT INTO public.milkyway VALUES (4, 'd', 44, 444.4, true, true, 'ddd', 4444);
INSERT INTO public.milkyway VALUES (5, 'e', 55, 555.5, true, false, 'eee', 5555);
INSERT INTO public.milkyway VALUES (6, 'f', 66, 666.6, false, true, 'fff', 6666);
INSERT INTO public.milkyway VALUES (7, 'g', 77, 777.7, false, false, 'ggg', 7777);
INSERT INTO public.milkyway VALUES (8, 'h', 88, 888.8, true, false, 'hhh', 8888);
INSERT INTO public.milkyway VALUES (9, 'i', 99, 999.9, false, false, 'iii', 9999);
INSERT INTO public.milkyway VALUES (10, 'j', 1010, 100.1, false, false, 'jjj', 1010);
INSERT INTO public.milkyway VALUES (11, 'k', 111, 111.1, false, false, 'kkk', 1111);
INSERT INTO public.milkyway VALUES (12, 'l', 12, 12.1, false, false, 'lll', 1212);
INSERT INTO public.milkyway VALUES (13, 'm', 13, 131.3, false, false, 'mmm', 1313);
INSERT INTO public.milkyway VALUES (14, 'n', 141, 141.4, false, false, 'nnn', 1414);
INSERT INTO public.milkyway VALUES (15, 'o', 151, 151.5, false, false, 'ooo', 1515);
INSERT INTO public.milkyway VALUES (16, 'p', 161, 161.6, false, false, 'ppp', 1616);
INSERT INTO public.milkyway VALUES (17, 'q', 171, 171.7, false, false, 'qqq', 1717);
INSERT INTO public.milkyway VALUES (18, 'r', 181, 181.8, false, false, 'rrr', 1818);
INSERT INTO public.milkyway VALUES (19, 's', 191, 191.9, false, false, 'sss', 1919);
INSERT INTO public.milkyway VALUES (20, 't', 202, 200.2, false, false, 'ttt', 2020);
INSERT INTO public.milkyway VALUES (21, 'u', 212, 212.1, false, false, 'uuu', 2121);
INSERT INTO public.milkyway VALUES (22, 'v', 222, 222.2, false, false, 'vvv', 2222);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 11, 111.1, false, false, 'aaa', 1111);
INSERT INTO public.moon VALUES (2, 'b', 22, 222.2, false, false, 'bbb', 2222);
INSERT INTO public.moon VALUES (3, 'c', 33, 333.3, false, false, 'ccc', 3333);
INSERT INTO public.moon VALUES (4, 'd', 44, 444.4, true, true, 'ddd', 4444);
INSERT INTO public.moon VALUES (5, 'e', 55, 555.5, true, false, 'eee', 5555);
INSERT INTO public.moon VALUES (6, 'f', 66, 666.6, false, true, 'fff', 6666);
INSERT INTO public.moon VALUES (7, 'g', 77, 777.7, false, false, 'ggg', 7777);
INSERT INTO public.moon VALUES (8, 'h', 88, 888.8, true, false, 'hhh', 8888);
INSERT INTO public.moon VALUES (9, 'i', 99, 999.9, false, false, 'iii', 9999);
INSERT INTO public.moon VALUES (10, 'j', 1010, 100.1, false, false, 'jjj', 1010);
INSERT INTO public.moon VALUES (11, 'k', 111, 111.1, false, false, 'kkk', 1111);
INSERT INTO public.moon VALUES (12, 'l', 12, 12.1, false, false, 'lll', 1212);
INSERT INTO public.moon VALUES (13, 'm', 13, 131.3, false, false, 'mmm', 1313);
INSERT INTO public.moon VALUES (14, 'n', 141, 141.4, false, false, 'nnn', 1414);
INSERT INTO public.moon VALUES (15, 'o', 151, 151.5, false, false, 'ooo', 1515);
INSERT INTO public.moon VALUES (16, 'p', 161, 161.6, false, false, 'ppp', 1616);
INSERT INTO public.moon VALUES (17, 'q', 171, 171.7, false, false, 'qqq', 1717);
INSERT INTO public.moon VALUES (18, 'r', 181, 181.8, false, false, 'rrr', 1818);
INSERT INTO public.moon VALUES (19, 's', 191, 191.9, false, false, 'sss', 1919);
INSERT INTO public.moon VALUES (20, 't', 202, 200.2, false, false, 'ttt', 2020);
INSERT INTO public.moon VALUES (21, 'u', 212, 212.1, false, false, 'uuu', 2121);
INSERT INTO public.moon VALUES (22, 'v', 222, 222.2, false, false, 'vvv', 2222);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', 11, 111.1, false, false, 'aaa', 1111);
INSERT INTO public.planet VALUES (2, 'b', 22, 222.2, false, false, 'bbb', 2222);
INSERT INTO public.planet VALUES (3, 'c', 33, 333.3, false, false, 'ccc', 3333);
INSERT INTO public.planet VALUES (4, 'd', 44, 444.4, true, true, 'ddd', 4444);
INSERT INTO public.planet VALUES (5, 'e', 55, 555.5, true, false, 'eee', 5555);
INSERT INTO public.planet VALUES (6, 'f', 66, 666.6, false, true, 'fff', 6666);
INSERT INTO public.planet VALUES (7, 'g', 77, 777.7, false, false, 'ggg', 7777);
INSERT INTO public.planet VALUES (8, 'h', 88, 888.8, true, false, 'hhh', 8888);
INSERT INTO public.planet VALUES (9, 'i', 99, 999.9, false, false, 'iii', 9999);
INSERT INTO public.planet VALUES (10, 'j', 1010, 100.1, false, false, 'jjj', 1010);
INSERT INTO public.planet VALUES (11, 'k', 111, 111.1, false, false, 'kkk', 1111);
INSERT INTO public.planet VALUES (12, 'l', 12, 12.1, false, false, 'lll', 1212);
INSERT INTO public.planet VALUES (13, 'm', 13, 131.3, false, false, 'mmm', 1313);
INSERT INTO public.planet VALUES (14, 'n', 141, 141.4, false, false, 'nnn', 1414);
INSERT INTO public.planet VALUES (15, 'o', 151, 151.5, false, false, 'ooo', 1515);
INSERT INTO public.planet VALUES (16, 'p', 161, 161.6, false, false, 'ppp', 1616);
INSERT INTO public.planet VALUES (17, 'q', 171, 171.7, false, false, 'qqq', 1717);
INSERT INTO public.planet VALUES (18, 'r', 181, 181.8, false, false, 'rrr', 1818);
INSERT INTO public.planet VALUES (19, 's', 191, 191.9, false, false, 'sss', 1919);
INSERT INTO public.planet VALUES (20, 't', 202, 200.2, false, false, 'ttt', 2020);
INSERT INTO public.planet VALUES (21, 'u', 212, 212.1, false, false, 'uuu', 2121);
INSERT INTO public.planet VALUES (22, 'v', 222, 222.2, false, false, 'vvv', 2222);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', 11, 111.1, false, false, 'aaa', 1111);
INSERT INTO public.star VALUES (2, 'b', 22, 222.2, false, false, 'bbb', 2222);
INSERT INTO public.star VALUES (3, 'c', 33, 333.3, false, false, 'ccc', 3333);
INSERT INTO public.star VALUES (4, 'd', 44, 444.4, true, true, 'ddd', 4444);
INSERT INTO public.star VALUES (5, 'e', 55, 555.5, true, false, 'eee', 5555);
INSERT INTO public.star VALUES (6, 'f', 66, 666.6, false, true, 'fff', 6666);
INSERT INTO public.star VALUES (7, 'g', 77, 777.7, false, false, 'ggg', 7777);
INSERT INTO public.star VALUES (8, 'h', 88, 888.8, true, false, 'hhh', 8888);
INSERT INTO public.star VALUES (9, 'i', 99, 999.9, false, false, 'iii', 9999);
INSERT INTO public.star VALUES (10, 'j', 1010, 100.1, false, false, 'jjj', 1010);
INSERT INTO public.star VALUES (11, 'k', 111, 111.1, false, false, 'kkk', 1111);
INSERT INTO public.star VALUES (12, 'l', 12, 12.1, false, false, 'lll', 1212);
INSERT INTO public.star VALUES (13, 'm', 13, 131.3, false, false, 'mmm', 1313);
INSERT INTO public.star VALUES (14, 'n', 141, 141.4, false, false, 'nnn', 1414);
INSERT INTO public.star VALUES (15, 'o', 151, 151.5, false, false, 'ooo', 1515);
INSERT INTO public.star VALUES (16, 'p', 161, 161.6, false, false, 'ppp', 1616);
INSERT INTO public.star VALUES (17, 'q', 171, 171.7, false, false, 'qqq', 1717);
INSERT INTO public.star VALUES (18, 'r', 181, 181.8, false, false, 'rrr', 1818);
INSERT INTO public.star VALUES (19, 's', 191, 191.9, false, false, 'sss', 1919);
INSERT INTO public.star VALUES (20, 't', 202, 200.2, false, false, 'ttt', 2020);
INSERT INTO public.star VALUES (21, 'u', 212, 212.1, false, false, 'uuu', 2121);
INSERT INTO public.star VALUES (22, 'v', 222, 222.2, false, false, 'vvv', 2222);


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
-- Name: milkyway milkyway_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.milkyway
    ADD CONSTRAINT milkyway_name_key UNIQUE (name);


--
-- Name: milkyway milkyway_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.milkyway
    ADD CONSTRAINT milkyway_pkey PRIMARY KEY (milkyway_id);


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
-- Name: moon moon_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_fkey FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: planet planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_fkey FOREIGN KEY (name) REFERENCES public.star(name);


--
-- Name: star star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_fkey FOREIGN KEY (name) REFERENCES public.galaxy(name);


--
-- PostgreSQL database dump complete
--
