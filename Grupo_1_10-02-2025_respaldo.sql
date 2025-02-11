--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6
-- Dumped by pg_dump version 17.2

-- Started on 2025-02-10 21:27:42

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 226 (class 1259 OID 1589322)
-- Name: cursomaterias; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.cursomaterias (
    id_curso_materia integer NOT NULL,
    id_curso integer,
    id_materia integer
);


ALTER TABLE public.cursomaterias OWNER TO "Comfe_owner";

--
-- TOC entry 225 (class 1259 OID 1589321)
-- Name: cursomaterias_id_curso_materia_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.cursomaterias_id_curso_materia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cursomaterias_id_curso_materia_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 225
-- Name: cursomaterias_id_curso_materia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.cursomaterias_id_curso_materia_seq OWNED BY public.cursomaterias.id_curso_materia;


--
-- TOC entry 220 (class 1259 OID 1589282)
-- Name: cursos; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.cursos (
    id_curso integer NOT NULL,
    nombre_curso character varying(100) NOT NULL,
    descripcion text,
    id_profesor integer
);


ALTER TABLE public.cursos OWNER TO "Comfe_owner";

--
-- TOC entry 219 (class 1259 OID 1589281)
-- Name: cursos_id_curso_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.cursos_id_curso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cursos_id_curso_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 219
-- Name: cursos_id_curso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.cursos_id_curso_seq OWNED BY public.cursos.id_curso;


--
-- TOC entry 216 (class 1259 OID 1589264)
-- Name: estudiantes; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.estudiantes (
    id_estudiante integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    fecha_nacimiento date,
    direccion character varying(255),
    telefono character varying(15),
    email character varying(100)
);


ALTER TABLE public.estudiantes OWNER TO "Comfe_owner";

--
-- TOC entry 215 (class 1259 OID 1589263)
-- Name: estudiantes_id_estudiante_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.estudiantes_id_estudiante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estudiantes_id_estudiante_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 215
-- Name: estudiantes_id_estudiante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.estudiantes_id_estudiante_seq OWNED BY public.estudiantes.id_estudiante;


--
-- TOC entry 224 (class 1259 OID 1589305)
-- Name: inscripciones; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.inscripciones (
    id_inscripcion integer NOT NULL,
    id_estudiante integer,
    id_curso integer,
    fecha_inscripcion date
);


ALTER TABLE public.inscripciones OWNER TO "Comfe_owner";

--
-- TOC entry 223 (class 1259 OID 1589304)
-- Name: inscripciones_id_inscripcion_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.inscripciones_id_inscripcion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inscripciones_id_inscripcion_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 223
-- Name: inscripciones_id_inscripcion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.inscripciones_id_inscripcion_seq OWNED BY public.inscripciones.id_inscripcion;


--
-- TOC entry 222 (class 1259 OID 1589296)
-- Name: materias; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.materias (
    id_materia integer NOT NULL,
    nombre_materia character varying(100) NOT NULL,
    descripcion text
);


ALTER TABLE public.materias OWNER TO "Comfe_owner";

--
-- TOC entry 221 (class 1259 OID 1589295)
-- Name: materias_id_materia_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.materias_id_materia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.materias_id_materia_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 221
-- Name: materias_id_materia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.materias_id_materia_seq OWNED BY public.materias.id_materia;


--
-- TOC entry 218 (class 1259 OID 1589273)
-- Name: profesores; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.profesores (
    id_profesor integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    fecha_nacimiento date,
    direccion character varying(255),
    telefono character varying(15),
    email character varying(100),
    especialidad character varying(100)
);


ALTER TABLE public.profesores OWNER TO "Comfe_owner";

--
-- TOC entry 217 (class 1259 OID 1589272)
-- Name: profesores_id_profesor_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.profesores_id_profesor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.profesores_id_profesor_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3392 (class 0 OID 0)
-- Dependencies: 217
-- Name: profesores_id_profesor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.profesores_id_profesor_seq OWNED BY public.profesores.id_profesor;


--
-- TOC entry 3208 (class 2604 OID 1589325)
-- Name: cursomaterias id_curso_materia; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.cursomaterias ALTER COLUMN id_curso_materia SET DEFAULT nextval('public.cursomaterias_id_curso_materia_seq'::regclass);


--
-- TOC entry 3205 (class 2604 OID 1589285)
-- Name: cursos id_curso; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.cursos ALTER COLUMN id_curso SET DEFAULT nextval('public.cursos_id_curso_seq'::regclass);


--
-- TOC entry 3203 (class 2604 OID 1589267)
-- Name: estudiantes id_estudiante; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.estudiantes ALTER COLUMN id_estudiante SET DEFAULT nextval('public.estudiantes_id_estudiante_seq'::regclass);


--
-- TOC entry 3207 (class 2604 OID 1589308)
-- Name: inscripciones id_inscripcion; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.inscripciones ALTER COLUMN id_inscripcion SET DEFAULT nextval('public.inscripciones_id_inscripcion_seq'::regclass);


--
-- TOC entry 3206 (class 2604 OID 1589299)
-- Name: materias id_materia; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.materias ALTER COLUMN id_materia SET DEFAULT nextval('public.materias_id_materia_seq'::regclass);


--
-- TOC entry 3204 (class 2604 OID 1589276)
-- Name: profesores id_profesor; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.profesores ALTER COLUMN id_profesor SET DEFAULT nextval('public.profesores_id_profesor_seq'::regclass);


--
-- TOC entry 3380 (class 0 OID 1589322)
-- Dependencies: 226
-- Data for Name: cursomaterias; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.cursomaterias (id_curso_materia, id_curso, id_materia) FROM stdin;
1	1	1
2	1	2
3	2	3
4	3	4
5	4	5
\.


--
-- TOC entry 3374 (class 0 OID 1589282)
-- Dependencies: 220
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.cursos (id_curso, nombre_curso, descripcion, id_profesor) FROM stdin;
1	Matemáticas Avanzadas	Curso de matemáticas para estudiantes avanzados	1
2	Literatura Clásica	Estudio de obras literarias clásicas	2
3	Biología General	Introducción a la biología	3
4	Historia Universal	Estudio de la historia mundial	4
5	Física Moderna	Conceptos avanzados de física	5
\.


--
-- TOC entry 3370 (class 0 OID 1589264)
-- Dependencies: 216
-- Data for Name: estudiantes; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.estudiantes (id_estudiante, nombre, apellido, fecha_nacimiento, direccion, telefono, email) FROM stdin;
1	Juan	Perez	2005-03-15	Calle Falsa 123	555-1234	juan.perez@example.com
2	Maria	Gomez	2006-07-22	Avenida Siempre Viva 456	555-5678	maria.gomez@example.com
3	Carlos	Lopez	2004-11-30	Calle Real 789	555-8765	carlos.lopez@example.com
4	Ana	Martinez	2005-05-10	Calle Primavera 321	555-4321	ana.martinez@example.com
5	Luis	Rodriguez	2006-02-14	Calle Verano 654	555-9876	luis.rodriguez@example.com
6	Sofia	Hernandez	2004-09-25	Calle Otoño 987	555-3456	sofia.hernandez@example.com
7	Pedro	Diaz	2005-12-05	Calle Invierno 654	555-6543	pedro.diaz@example.com
8	Laura	Fernandez	2006-04-18	Calle Primavera 321	555-7890	laura.fernandez@example.com
9	Diego	Garcia	2004-08-12	Calle Verano 654	555-2345	diego.garcia@example.com
10	Marta	Sanchez	2005-01-20	Calle Otoño 987	555-6789	marta.sanchez@example.com
11	Carlos	Gomez	2000-01-15	Calle 123, Ciudad	3001234567	carlos.gomez@example.com
12	Laura	Martinez	2001-02-20	Carrera 45, Ciudad	3002345678	laura.martinez@example.com
13	Juan	Rodriguez	2002-03-25	Avenida 67, Ciudad	3003456789	juan.rodriguez@example.com
14	Ana	Perez	2000-04-10	Calle 89, Ciudad	3004567890	ana.perez@example.com
15	Luis	Gonzalez	2001-05-05	Carrera 12, Ciudad	3005678901	luis.gonzalez@example.com
16	Maria	Lopez	2002-06-15	Avenida 34, Ciudad	3006789012	maria.lopez@example.com
17	Diego	Hernandez	2000-07-25	Calle 56, Ciudad	3007890123	diego.hernandez@example.com
18	Sofia	Garcia	2001-08-30	Carrera 78, Ciudad	3008901234	sofia.garcia@example.com
19	David	Torres	2002-09-12	Avenida 90, Ciudad	3009012345	david.torres@example.com
20	Isabella	Ramirez	2000-10-21	Calle 11, Ciudad	3000123456	isabella.ramirez@example.com
21	Miguel	Jimenez	2001-11-30	Carrera 22, Ciudad	3001234560	miguel.jimenez@example.com
22	Lucia	Vargas	2002-12-15	Avenida 33, Ciudad	3002345671	lucia.vargas@example.com
23	Julian	Gutierrez	2000-01-05	Calle 44, Ciudad	3003456782	julian.gutierrez@example.com
24	Camila	Castro	2001-02-14	Carrera 55, Ciudad	3004567893	camila.castro@example.com
25	Andres	Ruiz	2002-03-23	Avenida 66, Ciudad	3005678904	andres.ruiz@example.com
26	Valeria	Moreno	2000-04-12	Calle 77, Ciudad	3006789015	valeria.moreno@example.com
27	Daniel	Ortiz	2001-05-21	Carrera 88, Ciudad	3007890126	daniel.ortiz@example.com
28	Alejandra	Suarez	2002-06-30	Avenida 99, Ciudad	3008901237	alejandra.suarez@example.com
29	Carlos	Gomez	2000-01-15	Calle 123, Ciudad	3001234567	carlos.gomez@example.com
30	Laura	Martinez	2001-02-20	Carrera 45, Ciudad	3002345678	laura.martinez@example.com
31	Juan	Rodriguez	2002-03-25	Avenida 67, Ciudad	3003456789	juan.rodriguez@example.com
32	Ana	Perez	2000-04-10	Calle 89, Ciudad	3004567890	ana.perez@example.com
33	Luis	Gonzalez	2001-05-05	Carrera 12, Ciudad	3005678901	luis.gonzalez@example.com
34	Maria	Lopez	2002-06-15	Avenida 34, Ciudad	3006789012	maria.lopez@example.com
35	Diego	Hernandez	2000-07-25	Calle 56, Ciudad	3007890123	diego.hernandez@example.com
36	Sofia	Garcia	2001-08-30	Carrera 78, Ciudad	3008901234	sofia.garcia@example.com
37	David	Torres	2002-09-12	Avenida 90, Ciudad	3009012345	david.torres@example.com
38	Isabella	Ramirez	2000-10-21	Calle 11, Ciudad	3000123456	isabella.ramirez@example.com
39	Miguel	Jimenez	2001-11-30	Carrera 22, Ciudad	3001234560	miguel.jimenez@example.com
40	Lucia	Vargas	2002-12-15	Avenida 33, Ciudad	3002345671	lucia.vargas@example.com
41	Julian	Gutierrez	2000-01-05	Calle 44, Ciudad	3003456782	julian.gutierrez@example.com
42	Camila	Castro	2001-02-14	Carrera 55, Ciudad	3004567893	camila.castro@example.com
43	Andres	Ruiz	2002-03-23	Avenida 66, Ciudad	3005678904	andres.ruiz@example.com
44	Valeria	Moreno	2000-04-12	Calle 77, Ciudad	3006789015	valeria.moreno@example.com
45	Daniel	Ortiz	2001-05-21	Carrera 88, Ciudad	3007890126	daniel.ortiz@example.com
46	Alejandra	Suarez	2002-06-30	Avenida 99, Ciudad	3008901237	alejandra.suarez@example.com
\.


--
-- TOC entry 3378 (class 0 OID 1589305)
-- Dependencies: 224
-- Data for Name: inscripciones; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.inscripciones (id_inscripcion, id_estudiante, id_curso, fecha_inscripcion) FROM stdin;
1	1	1	2023-10-01
2	2	1	2023-10-02
3	3	2	2023-10-03
4	4	2	2023-10-04
5	5	3	2023-10-05
6	6	3	2023-10-06
7	7	4	2023-10-07
8	8	4	2023-10-08
9	9	5	2023-10-09
10	10	5	2023-10-10
\.


--
-- TOC entry 3376 (class 0 OID 1589296)
-- Dependencies: 222
-- Data for Name: materias; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.materias (id_materia, nombre_materia, descripcion) FROM stdin;
1	Álgebra	Estudio de las estructuras algebraicas
2	Geometría	Estudio de las figuras geométricas
3	Literatura Española	Estudio de la literatura en español
4	Biología Celular	Estudio de las células y su funcionamiento
5	Historia Antigua	Estudio de las civilizaciones antiguas
\.


--
-- TOC entry 3372 (class 0 OID 1589273)
-- Dependencies: 218
-- Data for Name: profesores; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.profesores (id_profesor, nombre, apellido, fecha_nacimiento, direccion, telefono, email, especialidad) FROM stdin;
1	Roberto	Jimenez	1980-07-22	Avenida Siempre Viva 456	555-5678	roberto.jimenez@example.com	Matemáticas
2	Carmen	Ruiz	1975-11-15	Calle Falsa 123	555-1234	carmen.ruiz@example.com	Literatura
3	Javier	Molina	1985-03-10	Calle Real 789	555-8765	javier.molina@example.com	Ciencias
4	Isabel	Torres	1978-09-30	Calle Primavera 321	555-4321	isabel.torres@example.com	Historia
5	Alberto	Vargas	1982-12-05	Calle Verano 654	555-9876	alberto.vargas@example.com	Física
\.


--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 225
-- Name: cursomaterias_id_curso_materia_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.cursomaterias_id_curso_materia_seq', 5, true);


--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 219
-- Name: cursos_id_curso_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.cursos_id_curso_seq', 5, true);


--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 215
-- Name: estudiantes_id_estudiante_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.estudiantes_id_estudiante_seq', 46, true);


--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 223
-- Name: inscripciones_id_inscripcion_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.inscripciones_id_inscripcion_seq', 10, true);


--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 221
-- Name: materias_id_materia_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.materias_id_materia_seq', 5, true);


--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 217
-- Name: profesores_id_profesor_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.profesores_id_profesor_seq', 5, true);


--
-- TOC entry 3220 (class 2606 OID 1589327)
-- Name: cursomaterias cursomaterias_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.cursomaterias
    ADD CONSTRAINT cursomaterias_pkey PRIMARY KEY (id_curso_materia);


--
-- TOC entry 3214 (class 2606 OID 1589289)
-- Name: cursos cursos_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (id_curso);


--
-- TOC entry 3210 (class 2606 OID 1589271)
-- Name: estudiantes estudiantes_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_pkey PRIMARY KEY (id_estudiante);


--
-- TOC entry 3218 (class 2606 OID 1589310)
-- Name: inscripciones inscripciones_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_pkey PRIMARY KEY (id_inscripcion);


--
-- TOC entry 3216 (class 2606 OID 1589303)
-- Name: materias materias_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (id_materia);


--
-- TOC entry 3212 (class 2606 OID 1589280)
-- Name: profesores profesores_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (id_profesor);


--
-- TOC entry 3224 (class 2606 OID 1589328)
-- Name: cursomaterias cursomaterias_id_curso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.cursomaterias
    ADD CONSTRAINT cursomaterias_id_curso_fkey FOREIGN KEY (id_curso) REFERENCES public.cursos(id_curso);


--
-- TOC entry 3225 (class 2606 OID 1589333)
-- Name: cursomaterias cursomaterias_id_materia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.cursomaterias
    ADD CONSTRAINT cursomaterias_id_materia_fkey FOREIGN KEY (id_materia) REFERENCES public.materias(id_materia);


--
-- TOC entry 3221 (class 2606 OID 1589290)
-- Name: cursos cursos_id_profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_id_profesor_fkey FOREIGN KEY (id_profesor) REFERENCES public.profesores(id_profesor);


--
-- TOC entry 3222 (class 2606 OID 1589316)
-- Name: inscripciones inscripciones_id_curso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_id_curso_fkey FOREIGN KEY (id_curso) REFERENCES public.cursos(id_curso);


--
-- TOC entry 3223 (class 2606 OID 1589311)
-- Name: inscripciones inscripciones_id_estudiante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_id_estudiante_fkey FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_estudiante);


-- Completed on 2025-02-10 21:27:50

--
-- PostgreSQL database dump complete
--

