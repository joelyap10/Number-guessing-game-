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
    guesses integer NOT NULL,
    username character varying(22)
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
    username character varying(22)
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

INSERT INTO public.games VALUES (281, 198, 'user_1681856753048');
INSERT INTO public.games VALUES (282, 859, 'user_1681856753047');
INSERT INTO public.games VALUES (283, 546, 'user_1681856753047');
INSERT INTO public.games VALUES (284, 514, 'user_1681856753048');
INSERT INTO public.games VALUES (285, 998, 'user_1681856753048');
INSERT INTO public.games VALUES (286, 370, 'user_1681856753048');
INSERT INTO public.games VALUES (287, 350, 'user_1681856770198');
INSERT INTO public.games VALUES (288, 504, 'user_1681856770197');
INSERT INTO public.games VALUES (289, 197, 'user_1681856770197');
INSERT INTO public.games VALUES (290, 1002, 'user_1681856770198');
INSERT INTO public.games VALUES (291, 415, 'user_1681856770198');
INSERT INTO public.games VALUES (292, 735, 'user_1681856770198');
INSERT INTO public.games VALUES (293, 800, 'user_1681856801994');
INSERT INTO public.games VALUES (294, 362, 'user_1681856801994');
INSERT INTO public.games VALUES (295, 962, 'user_1681856801993');
INSERT INTO public.games VALUES (296, 52, 'user_1681856801993');
INSERT INTO public.games VALUES (297, 256, 'user_1681856801994');
INSERT INTO public.games VALUES (298, 199, 'user_1681856801994');
INSERT INTO public.games VALUES (299, 659, 'user_1681856801994');
INSERT INTO public.games VALUES (300, 176, 'user_1681856819208');
INSERT INTO public.games VALUES (301, 403, 'user_1681856819208');
INSERT INTO public.games VALUES (302, 559, 'user_1681856819207');
INSERT INTO public.games VALUES (303, 83, 'user_1681856819207');
INSERT INTO public.games VALUES (304, 103, 'user_1681856819208');
INSERT INTO public.games VALUES (305, 866, 'user_1681856819208');
INSERT INTO public.games VALUES (306, 213, 'user_1681856819208');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (144, 'user_1681856753048');
INSERT INTO public.users VALUES (145, 'user_1681856753047');
INSERT INTO public.users VALUES (146, 'user_1681856770198');
INSERT INTO public.users VALUES (147, 'user_1681856770197');
INSERT INTO public.users VALUES (148, 'user_1681856801994');
INSERT INTO public.users VALUES (149, 'user_1681856801993');
INSERT INTO public.users VALUES (150, 'user_1681856819208');
INSERT INTO public.users VALUES (151, 'user_1681856819207');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 306, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 151, true);


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
-- PostgreSQL database dump complete
--

