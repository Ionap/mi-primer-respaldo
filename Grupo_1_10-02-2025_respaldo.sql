PGDMP              
        }            BD_instituto_educativo    16.6    17.2 6    7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            :           1262    1589259    BD_instituto_educativo    DATABASE     z   CREATE DATABASE "BD_instituto_educativo" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
 (   DROP DATABASE "BD_instituto_educativo";
                     Comfe_owner    false            ;           0    0 !   DATABASE "BD_instituto_educativo"    COMMENT     �   COMMENT ON DATABASE "BD_instituto_educativo" IS 'base de datos diseñada para almacenar informacion referente al instituto educativo
creado por meyer, iona y angel';
                        Comfe_owner    false    3386                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            <           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    1589322    cursomaterias    TABLE     {   CREATE TABLE public.cursomaterias (
    id_curso_materia integer NOT NULL,
    id_curso integer,
    id_materia integer
);
 !   DROP TABLE public.cursomaterias;
       public         heap r       Comfe_owner    false    4            �            1259    1589321 "   cursomaterias_id_curso_materia_seq    SEQUENCE     �   CREATE SEQUENCE public.cursomaterias_id_curso_materia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.cursomaterias_id_curso_materia_seq;
       public               Comfe_owner    false    226    4            =           0    0 "   cursomaterias_id_curso_materia_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.cursomaterias_id_curso_materia_seq OWNED BY public.cursomaterias.id_curso_materia;
          public               Comfe_owner    false    225            �            1259    1589282    cursos    TABLE     �   CREATE TABLE public.cursos (
    id_curso integer NOT NULL,
    nombre_curso character varying(100) NOT NULL,
    descripcion text,
    id_profesor integer
);
    DROP TABLE public.cursos;
       public         heap r       Comfe_owner    false    4            �            1259    1589281    cursos_id_curso_seq    SEQUENCE     �   CREATE SEQUENCE public.cursos_id_curso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cursos_id_curso_seq;
       public               Comfe_owner    false    220    4            >           0    0    cursos_id_curso_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cursos_id_curso_seq OWNED BY public.cursos.id_curso;
          public               Comfe_owner    false    219            �            1259    1589264    estudiantes    TABLE     )  CREATE TABLE public.estudiantes (
    id_estudiante integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    fecha_nacimiento date,
    direccion character varying(255),
    telefono character varying(15),
    email character varying(100)
);
    DROP TABLE public.estudiantes;
       public         heap r       Comfe_owner    false    4            �            1259    1589263    estudiantes_id_estudiante_seq    SEQUENCE     �   CREATE SEQUENCE public.estudiantes_id_estudiante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.estudiantes_id_estudiante_seq;
       public               Comfe_owner    false    216    4            ?           0    0    estudiantes_id_estudiante_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.estudiantes_id_estudiante_seq OWNED BY public.estudiantes.id_estudiante;
          public               Comfe_owner    false    215            �            1259    1589305    inscripciones    TABLE     �   CREATE TABLE public.inscripciones (
    id_inscripcion integer NOT NULL,
    id_estudiante integer,
    id_curso integer,
    fecha_inscripcion date
);
 !   DROP TABLE public.inscripciones;
       public         heap r       Comfe_owner    false    4            �            1259    1589304     inscripciones_id_inscripcion_seq    SEQUENCE     �   CREATE SEQUENCE public.inscripciones_id_inscripcion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.inscripciones_id_inscripcion_seq;
       public               Comfe_owner    false    4    224            @           0    0     inscripciones_id_inscripcion_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.inscripciones_id_inscripcion_seq OWNED BY public.inscripciones.id_inscripcion;
          public               Comfe_owner    false    223            �            1259    1589296    materias    TABLE     �   CREATE TABLE public.materias (
    id_materia integer NOT NULL,
    nombre_materia character varying(100) NOT NULL,
    descripcion text
);
    DROP TABLE public.materias;
       public         heap r       Comfe_owner    false    4            �            1259    1589295    materias_id_materia_seq    SEQUENCE     �   CREATE SEQUENCE public.materias_id_materia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.materias_id_materia_seq;
       public               Comfe_owner    false    4    222            A           0    0    materias_id_materia_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.materias_id_materia_seq OWNED BY public.materias.id_materia;
          public               Comfe_owner    false    221            �            1259    1589273 
   profesores    TABLE     O  CREATE TABLE public.profesores (
    id_profesor integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    fecha_nacimiento date,
    direccion character varying(255),
    telefono character varying(15),
    email character varying(100),
    especialidad character varying(100)
);
    DROP TABLE public.profesores;
       public         heap r       Comfe_owner    false    4            �            1259    1589272    profesores_id_profesor_seq    SEQUENCE     �   CREATE SEQUENCE public.profesores_id_profesor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.profesores_id_profesor_seq;
       public               Comfe_owner    false    4    218            B           0    0    profesores_id_profesor_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.profesores_id_profesor_seq OWNED BY public.profesores.id_profesor;
          public               Comfe_owner    false    217            �           2604    1589325    cursomaterias id_curso_materia    DEFAULT     �   ALTER TABLE ONLY public.cursomaterias ALTER COLUMN id_curso_materia SET DEFAULT nextval('public.cursomaterias_id_curso_materia_seq'::regclass);
 M   ALTER TABLE public.cursomaterias ALTER COLUMN id_curso_materia DROP DEFAULT;
       public               Comfe_owner    false    226    225    226            �           2604    1589285    cursos id_curso    DEFAULT     r   ALTER TABLE ONLY public.cursos ALTER COLUMN id_curso SET DEFAULT nextval('public.cursos_id_curso_seq'::regclass);
 >   ALTER TABLE public.cursos ALTER COLUMN id_curso DROP DEFAULT;
       public               Comfe_owner    false    220    219    220            �           2604    1589267    estudiantes id_estudiante    DEFAULT     �   ALTER TABLE ONLY public.estudiantes ALTER COLUMN id_estudiante SET DEFAULT nextval('public.estudiantes_id_estudiante_seq'::regclass);
 H   ALTER TABLE public.estudiantes ALTER COLUMN id_estudiante DROP DEFAULT;
       public               Comfe_owner    false    216    215    216            �           2604    1589308    inscripciones id_inscripcion    DEFAULT     �   ALTER TABLE ONLY public.inscripciones ALTER COLUMN id_inscripcion SET DEFAULT nextval('public.inscripciones_id_inscripcion_seq'::regclass);
 K   ALTER TABLE public.inscripciones ALTER COLUMN id_inscripcion DROP DEFAULT;
       public               Comfe_owner    false    223    224    224            �           2604    1589299    materias id_materia    DEFAULT     z   ALTER TABLE ONLY public.materias ALTER COLUMN id_materia SET DEFAULT nextval('public.materias_id_materia_seq'::regclass);
 B   ALTER TABLE public.materias ALTER COLUMN id_materia DROP DEFAULT;
       public               Comfe_owner    false    221    222    222            �           2604    1589276    profesores id_profesor    DEFAULT     �   ALTER TABLE ONLY public.profesores ALTER COLUMN id_profesor SET DEFAULT nextval('public.profesores_id_profesor_seq'::regclass);
 E   ALTER TABLE public.profesores ALTER COLUMN id_profesor DROP DEFAULT;
       public               Comfe_owner    false    218    217    218            4          0    1589322    cursomaterias 
   TABLE DATA           O   COPY public.cursomaterias (id_curso_materia, id_curso, id_materia) FROM stdin;
    public               Comfe_owner    false    226   �B       .          0    1589282    cursos 
   TABLE DATA           R   COPY public.cursos (id_curso, nombre_curso, descripcion, id_profesor) FROM stdin;
    public               Comfe_owner    false    220   %C       *          0    1589264    estudiantes 
   TABLE DATA           t   COPY public.estudiantes (id_estudiante, nombre, apellido, fecha_nacimiento, direccion, telefono, email) FROM stdin;
    public               Comfe_owner    false    216   D       2          0    1589305    inscripciones 
   TABLE DATA           c   COPY public.inscripciones (id_inscripcion, id_estudiante, id_curso, fecha_inscripcion) FROM stdin;
    public               Comfe_owner    false    224   �E       0          0    1589296    materias 
   TABLE DATA           K   COPY public.materias (id_materia, nombre_materia, descripcion) FROM stdin;
    public               Comfe_owner    false    222   
F       ,          0    1589273 
   profesores 
   TABLE DATA              COPY public.profesores (id_profesor, nombre, apellido, fecha_nacimiento, direccion, telefono, email, especialidad) FROM stdin;
    public               Comfe_owner    false    218   �F       C           0    0 "   cursomaterias_id_curso_materia_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.cursomaterias_id_curso_materia_seq', 5, true);
          public               Comfe_owner    false    225            D           0    0    cursos_id_curso_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cursos_id_curso_seq', 5, true);
          public               Comfe_owner    false    219            E           0    0    estudiantes_id_estudiante_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.estudiantes_id_estudiante_seq', 10, true);
          public               Comfe_owner    false    215            F           0    0     inscripciones_id_inscripcion_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.inscripciones_id_inscripcion_seq', 10, true);
          public               Comfe_owner    false    223            G           0    0    materias_id_materia_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.materias_id_materia_seq', 5, true);
          public               Comfe_owner    false    221            H           0    0    profesores_id_profesor_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.profesores_id_profesor_seq', 5, true);
          public               Comfe_owner    false    217            �           2606    1589327     cursomaterias cursomaterias_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.cursomaterias
    ADD CONSTRAINT cursomaterias_pkey PRIMARY KEY (id_curso_materia);
 J   ALTER TABLE ONLY public.cursomaterias DROP CONSTRAINT cursomaterias_pkey;
       public                 Comfe_owner    false    226            �           2606    1589289    cursos cursos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (id_curso);
 <   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_pkey;
       public                 Comfe_owner    false    220            �           2606    1589271    estudiantes estudiantes_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_pkey PRIMARY KEY (id_estudiante);
 F   ALTER TABLE ONLY public.estudiantes DROP CONSTRAINT estudiantes_pkey;
       public                 Comfe_owner    false    216            �           2606    1589310     inscripciones inscripciones_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_pkey PRIMARY KEY (id_inscripcion);
 J   ALTER TABLE ONLY public.inscripciones DROP CONSTRAINT inscripciones_pkey;
       public                 Comfe_owner    false    224            �           2606    1589303    materias materias_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (id_materia);
 @   ALTER TABLE ONLY public.materias DROP CONSTRAINT materias_pkey;
       public                 Comfe_owner    false    222            �           2606    1589280    profesores profesores_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (id_profesor);
 D   ALTER TABLE ONLY public.profesores DROP CONSTRAINT profesores_pkey;
       public                 Comfe_owner    false    218            �           2606    1589328 )   cursomaterias cursomaterias_id_curso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cursomaterias
    ADD CONSTRAINT cursomaterias_id_curso_fkey FOREIGN KEY (id_curso) REFERENCES public.cursos(id_curso);
 S   ALTER TABLE ONLY public.cursomaterias DROP CONSTRAINT cursomaterias_id_curso_fkey;
       public               Comfe_owner    false    226    220    3214            �           2606    1589333 +   cursomaterias cursomaterias_id_materia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cursomaterias
    ADD CONSTRAINT cursomaterias_id_materia_fkey FOREIGN KEY (id_materia) REFERENCES public.materias(id_materia);
 U   ALTER TABLE ONLY public.cursomaterias DROP CONSTRAINT cursomaterias_id_materia_fkey;
       public               Comfe_owner    false    3216    222    226            �           2606    1589290    cursos cursos_id_profesor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_id_profesor_fkey FOREIGN KEY (id_profesor) REFERENCES public.profesores(id_profesor);
 H   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_id_profesor_fkey;
       public               Comfe_owner    false    218    3212    220            �           2606    1589316 )   inscripciones inscripciones_id_curso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_id_curso_fkey FOREIGN KEY (id_curso) REFERENCES public.cursos(id_curso);
 S   ALTER TABLE ONLY public.inscripciones DROP CONSTRAINT inscripciones_id_curso_fkey;
       public               Comfe_owner    false    224    220    3214            �           2606    1589311 .   inscripciones inscripciones_id_estudiante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_id_estudiante_fkey FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_estudiante);
 X   ALTER TABLE ONLY public.inscripciones DROP CONSTRAINT inscripciones_id_estudiante_fkey;
       public               Comfe_owner    false    224    216    3210            4   (   x��9 0İ�����M��HT(�X��)ڡ�a�G}K�.      .   �   x�Mϻm1�����k�������Љ�H��6�UF�b��1p}�Oj[2�٢'��#�RjQ��8��TY��H�X�nQX�%|D�BV;R;k���*ٗޑ&Tb�?RX�<EI��.���;I�H������0��VnoQMz�r<rў�����ƚ��	�n/�r݊[	\2� ���d��k���`�>�s�1m�      *   �  x�u����0���S�l�N��[W����*Z�=�2"�r��T���}��CB�=%��>���%|�������,�<˹�����B�#�*�5�o�4.�4���ĶsF�C�P��EX��&*yVq���j�m���i�h؛�"+t9uY��&P8S�"���&t7g���y6�{5�XU/S]��üpi~�*��cJx��ޓ
M�m�-^MD�+9���E;B3�������h��{a�e1�H�+u1薔1"N�LX�.h}�M�蛩n��j���s��;02�<��O�8M�LY�Q�����X**=ھ��%�_B���%B4D�T5l�V����t����e2p������1���pM)����&�83�2�a�~��Xr�=�_�^N:.����|?�b���{�e      2   T   x�M̹�0���Ł��d�9"v�:�Rh��yQ)�4X�Ã.8+j�ʆ�;;z�΁�G'f�Ʌ_.,� �
߇��.�      0   �   x�e��1F�d
O��� ��@cr�d)$(v��c�+(�!���+������}����-���hn8BC�Q�DSv�S�qDءؙ�Q�����s��|[��i��9�R��l����
��P��#ef��Ƕf��|��~3]����$�9�1��)h�K�gјa������ƞ�[T?)�ǉ��lGjY      ,   *  x�U�Mj�0F��S�2�m�g�mh��%�n&�P&Hv�Sz�����*���+��{O�FAӟȍ=��RGߠ�*�I)�6u����^�#O(r]��Zꢬ�-p|^��B{1����do?#�8D)l��4W��(�TJ*��ƐءP�4j�І|�|~�}��W�Q{��z��յL2��mChDY��Z���s b��w�Ե���4������0��dR��n}qlq�%D�����*�R?�ৌ���Y�}D����J�wer_��k�^:�ڗ\�x
�ʼ��~��{E�����     