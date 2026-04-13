--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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

INSERT INTO public.games VALUES (64, 2018, 'Final', 353, 354, 4, 2);
INSERT INTO public.games VALUES (65, 2018, 'Third Place', 355, 356, 2, 0);
INSERT INTO public.games VALUES (66, 2018, 'Semi-Final', 354, 356, 2, 1);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 353, 355, 1, 0);
INSERT INTO public.games VALUES (68, 2018, 'Quarter-Final', 354, 357, 3, 2);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 356, 358, 2, 0);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 355, 359, 2, 1);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 353, 360, 2, 0);
INSERT INTO public.games VALUES (72, 2018, 'Eighth-Final', 356, 361, 2, 1);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 358, 362, 1, 0);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 355, 363, 3, 2);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 359, 364, 2, 0);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 354, 365, 2, 1);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 357, 366, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 360, 367, 2, 1);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 353, 368, 4, 3);
INSERT INTO public.games VALUES (80, 2014, 'Final', 369, 368, 1, 0);
INSERT INTO public.games VALUES (81, 2014, 'Third Place', 370, 359, 3, 0);
INSERT INTO public.games VALUES (82, 2014, 'Semi-Final', 368, 370, 1, 0);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 369, 359, 7, 1);
INSERT INTO public.games VALUES (84, 2014, 'Quarter-Final', 370, 371, 1, 0);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 368, 355, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 359, 361, 2, 1);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 369, 353, 1, 0);
INSERT INTO public.games VALUES (88, 2014, 'Eighth-Final', 359, 372, 2, 1);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 361, 360, 2, 0);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 353, 373, 2, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 369, 374, 2, 1);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 370, 364, 2, 1);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 371, 375, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 368, 362, 1, 0);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 355, 376, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (353, 'France');
INSERT INTO public.teams VALUES (354, 'Croatia');
INSERT INTO public.teams VALUES (355, 'Belgium');
INSERT INTO public.teams VALUES (356, 'England');
INSERT INTO public.teams VALUES (357, 'Russia');
INSERT INTO public.teams VALUES (358, 'Sweden');
INSERT INTO public.teams VALUES (359, 'Brazil');
INSERT INTO public.teams VALUES (360, 'Uruguay');
INSERT INTO public.teams VALUES (361, 'Colombia');
INSERT INTO public.teams VALUES (362, 'Switzerland');
INSERT INTO public.teams VALUES (363, 'Japan');
INSERT INTO public.teams VALUES (364, 'Mexico');
INSERT INTO public.teams VALUES (365, 'Denmark');
INSERT INTO public.teams VALUES (366, 'Spain');
INSERT INTO public.teams VALUES (367, 'Portugal');
INSERT INTO public.teams VALUES (368, 'Argentina');
INSERT INTO public.teams VALUES (369, 'Germany');
INSERT INTO public.teams VALUES (370, 'Netherlands');
INSERT INTO public.teams VALUES (371, 'Costa Rica');
INSERT INTO public.teams VALUES (372, 'Chile');
INSERT INTO public.teams VALUES (373, 'Nigeria');
INSERT INTO public.teams VALUES (374, 'Algeria');
INSERT INTO public.teams VALUES (375, 'Greece');
INSERT INTO public.teams VALUES (376, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 95, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 376, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

