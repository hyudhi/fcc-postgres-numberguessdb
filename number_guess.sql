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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
    username character varying(255) NOT NULL
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

INSERT INTO public.games VALUES (1, 2, 1);
INSERT INTO public.games VALUES (2, 3, 1);
INSERT INTO public.games VALUES (3, 1, 1);
INSERT INTO public.games VALUES (4, 1, 31);
INSERT INTO public.games VALUES (5, 4, 25);
INSERT INTO public.games VALUES (6, 4, 425);
INSERT INTO public.games VALUES (7, 5, 342);
INSERT INTO public.games VALUES (8, 5, 672);
INSERT INTO public.games VALUES (9, 4, 619);
INSERT INTO public.games VALUES (10, 4, 844);
INSERT INTO public.games VALUES (11, 4, 638);
INSERT INTO public.games VALUES (12, 1, 7);
INSERT INTO public.games VALUES (13, 6, 576);
INSERT INTO public.games VALUES (14, 6, 343);
INSERT INTO public.games VALUES (15, 7, 975);
INSERT INTO public.games VALUES (16, 7, 577);
INSERT INTO public.games VALUES (17, 6, 894);
INSERT INTO public.games VALUES (18, 6, 758);
INSERT INTO public.games VALUES (19, 6, 98);
INSERT INTO public.games VALUES (20, 1, 17);
INSERT INTO public.games VALUES (21, 8, 333);
INSERT INTO public.games VALUES (22, 8, 447);
INSERT INTO public.games VALUES (23, 9, 378);
INSERT INTO public.games VALUES (24, 9, 857);
INSERT INTO public.games VALUES (25, 8, 627);
INSERT INTO public.games VALUES (26, 8, 537);
INSERT INTO public.games VALUES (27, 8, 318);
INSERT INTO public.games VALUES (28, 10, 891);
INSERT INTO public.games VALUES (29, 10, 261);
INSERT INTO public.games VALUES (30, 11, 257);
INSERT INTO public.games VALUES (31, 11, 818);
INSERT INTO public.games VALUES (32, 10, 655);
INSERT INTO public.games VALUES (33, 10, 277);
INSERT INTO public.games VALUES (34, 10, 483);
INSERT INTO public.games VALUES (35, 12, 306);
INSERT INTO public.games VALUES (36, 12, 953);
INSERT INTO public.games VALUES (37, 13, 34);
INSERT INTO public.games VALUES (38, 13, 680);
INSERT INTO public.games VALUES (39, 12, 662);
INSERT INTO public.games VALUES (40, 12, 728);
INSERT INTO public.games VALUES (41, 12, 940);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'yudhi');
INSERT INTO public.users VALUES (2, 'YUDHI');
INSERT INTO public.users VALUES (3, 'a');
INSERT INTO public.users VALUES (4, 'user_1716840307560');
INSERT INTO public.users VALUES (5, 'user_1716840307559');
INSERT INTO public.users VALUES (6, 'user_1716840525606');
INSERT INTO public.users VALUES (7, 'user_1716840525605');
INSERT INTO public.users VALUES (8, 'user_1716840652914');
INSERT INTO public.users VALUES (9, 'user_1716840652913');
INSERT INTO public.users VALUES (10, 'user_1716840680291');
INSERT INTO public.users VALUES (11, 'user_1716840680290');
INSERT INTO public.users VALUES (12, 'user_1716841279722');
INSERT INTO public.users VALUES (13, 'user_1716841279721');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 41, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 13, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

