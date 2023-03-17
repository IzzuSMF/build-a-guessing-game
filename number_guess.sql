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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    u_id integer,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    u_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.u_id;


--
-- Name: users u_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN u_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 9);
INSERT INTO public.games VALUES (1, 9);
INSERT INTO public.games VALUES (1, 9);
INSERT INTO public.games VALUES (2, 34);
INSERT INTO public.games VALUES (2, 762);
INSERT INTO public.games VALUES (3, 869);
INSERT INTO public.games VALUES (3, 268);
INSERT INTO public.games VALUES (2, 163);
INSERT INTO public.games VALUES (2, 785);
INSERT INTO public.games VALUES (2, 350);
INSERT INTO public.games VALUES (1, 4);
INSERT INTO public.games VALUES (4, 369);
INSERT INTO public.games VALUES (4, 947);
INSERT INTO public.games VALUES (5, 181);
INSERT INTO public.games VALUES (5, 665);
INSERT INTO public.games VALUES (4, 987);
INSERT INTO public.games VALUES (4, 702);
INSERT INTO public.games VALUES (4, 51);
INSERT INTO public.games VALUES (6, 908);
INSERT INTO public.games VALUES (6, 905);
INSERT INTO public.games VALUES (7, 793);
INSERT INTO public.games VALUES (7, 41);
INSERT INTO public.games VALUES (6, 734);
INSERT INTO public.games VALUES (6, 324);
INSERT INTO public.games VALUES (6, 307);
INSERT INTO public.games VALUES (8, 104);
INSERT INTO public.games VALUES (8, 416);
INSERT INTO public.games VALUES (9, 992);
INSERT INTO public.games VALUES (9, 30);
INSERT INTO public.games VALUES (8, 144);
INSERT INTO public.games VALUES (8, 891);
INSERT INTO public.games VALUES (8, 721);
INSERT INTO public.games VALUES (10, 948);
INSERT INTO public.games VALUES (10, 765);
INSERT INTO public.games VALUES (11, 13);
INSERT INTO public.games VALUES (11, 197);
INSERT INTO public.games VALUES (10, 665);
INSERT INTO public.games VALUES (10, 770);
INSERT INTO public.games VALUES (10, 442);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'IzzuS');
INSERT INTO public.users VALUES (2, 'user_1679061645382');
INSERT INTO public.users VALUES (3, 'user_1679061645381');
INSERT INTO public.users VALUES (4, 'user_1679061713282');
INSERT INTO public.users VALUES (5, 'user_1679061713281');
INSERT INTO public.users VALUES (6, 'user_1679061789672');
INSERT INTO public.users VALUES (7, 'user_1679061789671');
INSERT INTO public.users VALUES (8, 'user_1679061825470');
INSERT INTO public.users VALUES (9, 'user_1679061825469');
INSERT INTO public.users VALUES (10, 'user_1679062006854');
INSERT INTO public.users VALUES (11, 'user_1679062006853');


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 11, true);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (u_id) REFERENCES public.users(u_id);


--
-- PostgreSQL database dump complete
--

