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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (129, 185, 186, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (130, 187, 188, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (131, 186, 188, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (132, 185, 187, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (133, 186, 189, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (134, 188, 190, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (135, 187, 191, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (136, 185, 192, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (137, 188, 193, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (138, 190, 194, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (139, 187, 195, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (140, 191, 196, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (141, 186, 197, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (142, 189, 198, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (143, 192, 199, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (144, 185, 200, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (145, 201, 200, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (146, 202, 191, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (147, 200, 202, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (148, 201, 191, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (149, 202, 203, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (150, 200, 187, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (151, 191, 193, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (152, 201, 185, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (153, 191, 204, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (154, 193, 192, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (155, 185, 205, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (156, 201, 206, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (157, 202, 196, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (158, 203, 207, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (159, 200, 194, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (160, 187, 208, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (185, 'France');
INSERT INTO public.teams VALUES (186, 'Croatia');
INSERT INTO public.teams VALUES (187, 'Belgium');
INSERT INTO public.teams VALUES (188, 'England');
INSERT INTO public.teams VALUES (189, 'Russia');
INSERT INTO public.teams VALUES (190, 'Sweden');
INSERT INTO public.teams VALUES (191, 'Brazil');
INSERT INTO public.teams VALUES (192, 'Uruguay');
INSERT INTO public.teams VALUES (193, 'Colombia');
INSERT INTO public.teams VALUES (194, 'Switzerland');
INSERT INTO public.teams VALUES (195, 'Japan');
INSERT INTO public.teams VALUES (196, 'Mexico');
INSERT INTO public.teams VALUES (197, 'Denmark');
INSERT INTO public.teams VALUES (198, 'Spain');
INSERT INTO public.teams VALUES (199, 'Portugal');
INSERT INTO public.teams VALUES (200, 'Argentina');
INSERT INTO public.teams VALUES (201, 'Germany');
INSERT INTO public.teams VALUES (202, 'Netherlands');
INSERT INTO public.teams VALUES (203, 'Costa Rica');
INSERT INTO public.teams VALUES (204, 'Chile');
INSERT INTO public.teams VALUES (205, 'Nigeria');
INSERT INTO public.teams VALUES (206, 'Algeria');
INSERT INTO public.teams VALUES (207, 'Greece');
INSERT INTO public.teams VALUES (208, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 160, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 208, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

