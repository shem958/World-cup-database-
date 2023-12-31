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
    round character varying(255) NOT NULL
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
    name character varying(255) NOT NULL
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

INSERT INTO public.games VALUES (65, 153, 154, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (66, 155, 156, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (67, 154, 156, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (68, 153, 155, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (69, 154, 157, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (70, 156, 158, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (71, 155, 159, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (72, 153, 160, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (73, 156, 161, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 158, 162, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (75, 155, 163, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (76, 159, 164, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (77, 154, 165, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (78, 157, 166, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (79, 160, 167, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (80, 153, 168, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (81, 169, 168, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (82, 170, 159, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (83, 168, 170, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (84, 169, 159, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (85, 170, 171, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (86, 168, 155, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (87, 159, 161, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (88, 169, 153, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (89, 159, 172, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (90, 161, 160, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (91, 153, 173, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (92, 169, 174, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (93, 170, 164, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (94, 171, 175, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (95, 168, 162, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (96, 155, 176, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (153, 'France');
INSERT INTO public.teams VALUES (154, 'Croatia');
INSERT INTO public.teams VALUES (155, 'Belgium');
INSERT INTO public.teams VALUES (156, 'England');
INSERT INTO public.teams VALUES (157, 'Russia');
INSERT INTO public.teams VALUES (158, 'Sweden');
INSERT INTO public.teams VALUES (159, 'Brazil');
INSERT INTO public.teams VALUES (160, 'Uruguay');
INSERT INTO public.teams VALUES (161, 'Colombia');
INSERT INTO public.teams VALUES (162, 'Switzerland');
INSERT INTO public.teams VALUES (163, 'Japan');
INSERT INTO public.teams VALUES (164, 'Mexico');
INSERT INTO public.teams VALUES (165, 'Denmark');
INSERT INTO public.teams VALUES (166, 'Spain');
INSERT INTO public.teams VALUES (167, 'Portugal');
INSERT INTO public.teams VALUES (168, 'Argentina');
INSERT INTO public.teams VALUES (169, 'Germany');
INSERT INTO public.teams VALUES (170, 'Netherlands');
INSERT INTO public.teams VALUES (171, 'Costa Rica');
INSERT INTO public.teams VALUES (172, 'Chile');
INSERT INTO public.teams VALUES (173, 'Nigeria');
INSERT INTO public.teams VALUES (174, 'Algeria');
INSERT INTO public.teams VALUES (175, 'Greece');
INSERT INTO public.teams VALUES (176, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 176, true);


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

