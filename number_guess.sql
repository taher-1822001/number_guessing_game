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
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 6, 4);
INSERT INTO public.games VALUES (2, 557, 5);
INSERT INTO public.games VALUES (3, 798, 5);
INSERT INTO public.games VALUES (4, 500, 6);
INSERT INTO public.games VALUES (5, 112, 6);
INSERT INTO public.games VALUES (6, 409, 5);
INSERT INTO public.games VALUES (7, 360, 5);
INSERT INTO public.games VALUES (8, 531, 5);
INSERT INTO public.games VALUES (9, 425, 7);
INSERT INTO public.games VALUES (10, 162, 7);
INSERT INTO public.games VALUES (11, 887, 8);
INSERT INTO public.games VALUES (12, 112, 8);
INSERT INTO public.games VALUES (13, 349, 7);
INSERT INTO public.games VALUES (14, 966, 7);
INSERT INTO public.games VALUES (15, 574, 7);
INSERT INTO public.games VALUES (16, 212, 9);
INSERT INTO public.games VALUES (17, 461, 9);
INSERT INTO public.games VALUES (18, 61, 10);
INSERT INTO public.games VALUES (19, 112, 10);
INSERT INTO public.games VALUES (20, 367, 9);
INSERT INTO public.games VALUES (21, 521, 9);
INSERT INTO public.games VALUES (22, 175, 9);
INSERT INTO public.games VALUES (23, 784, 11);
INSERT INTO public.games VALUES (24, 434, 11);
INSERT INTO public.games VALUES (25, 770, 12);
INSERT INTO public.games VALUES (26, 958, 12);
INSERT INTO public.games VALUES (27, 524, 11);
INSERT INTO public.games VALUES (28, 464, 11);
INSERT INTO public.games VALUES (29, 944, 11);
INSERT INTO public.games VALUES (30, 13, 13);
INSERT INTO public.games VALUES (31, 505, 14);
INSERT INTO public.games VALUES (32, 465, 14);
INSERT INTO public.games VALUES (33, 346, 15);
INSERT INTO public.games VALUES (34, 462, 15);
INSERT INTO public.games VALUES (35, 528, 14);
INSERT INTO public.games VALUES (36, 713, 14);
INSERT INTO public.games VALUES (37, 265, 14);
INSERT INTO public.games VALUES (38, 13, 13);
INSERT INTO public.games VALUES (39, 238, 16);
INSERT INTO public.games VALUES (40, 911, 16);
INSERT INTO public.games VALUES (41, 43, 17);
INSERT INTO public.games VALUES (42, 85, 17);
INSERT INTO public.games VALUES (43, 612, 16);
INSERT INTO public.games VALUES (44, 885, 16);
INSERT INTO public.games VALUES (45, 773, 16);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1660612654932');
INSERT INTO public.users VALUES (2, 'user_1660612654931');
INSERT INTO public.users VALUES (3, 'dsllfd');
INSERT INTO public.users VALUES (4, 'jsklf');
INSERT INTO public.users VALUES (5, 'user_1660612861004');
INSERT INTO public.users VALUES (6, 'user_1660612861003');
INSERT INTO public.users VALUES (7, 'user_1660613043087');
INSERT INTO public.users VALUES (8, 'user_1660613043086');
INSERT INTO public.users VALUES (9, 'user_1660613115557');
INSERT INTO public.users VALUES (10, 'user_1660613115556');
INSERT INTO public.users VALUES (11, 'user_1660613197240');
INSERT INTO public.users VALUES (12, 'user_1660613197239');
INSERT INTO public.users VALUES (13, 'taher');
INSERT INTO public.users VALUES (14, 'user_1660613298439');
INSERT INTO public.users VALUES (15, 'user_1660613298438');
INSERT INTO public.users VALUES (16, 'user_1660613363732');
INSERT INTO public.users VALUES (17, 'user_1660613363731');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 45, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 17, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

