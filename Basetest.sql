PGDMP     8    %                x            Test    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    Test    DATABASE     f   CREATE DATABASE "Test" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Argentina.1252';
    DROP DATABASE "Test";
                postgres    false            �            1259    32778    AlumnoCurso    TABLE     m   CREATE TABLE public."AlumnoCurso" (
    "Id" "char" NOT NULL,
    "IdAlumno" "char",
    "IdCurso" "char"
);
 !   DROP TABLE public."AlumnoCurso";
       public         heap    postgres    false            �            1259    16395    Alumnos    TABLE     �   CREATE TABLE public."Alumnos" (
    "Nombre" "char" NOT NULL,
    "IdAlumno" integer NOT NULL,
    "Apellido" "char" NOT NULL,
    "DNI" integer NOT NULL,
    "Legajo" integer,
    "Password" "char"
);
    DROP TABLE public."Alumnos";
       public         heap    postgres    false            �            1259    32783    CursoDocente    TABLE     p   CREATE TABLE public."CursoDocente" (
    "Id" "char" NOT NULL,
    "IdCurso" integer,
    "IdDocente" "char"
);
 "   DROP TABLE public."CursoDocente";
       public         heap    postgres    false            �            1259    24586    Cursos    TABLE     q   CREATE TABLE public."Cursos" (
    "IdCurso" "char" NOT NULL,
    "Nombre Corto" "char",
    "Detalle" "char"
);
    DROP TABLE public."Cursos";
       public         heap    postgres    false            �            1259    16400    Docente    TABLE       CREATE TABLE public."Docente" (
    "IdDocente" integer NOT NULL,
    "Nombre" "char" NOT NULL,
    "Apellido" "char" NOT NULL,
    "Legajo" integer NOT NULL,
    "Cuil" integer NOT NULL,
    "DNI" integer NOT NULL,
    "Clave" "char",
    "Tipo" "char"
);
    DROP TABLE public."Docente";
       public         heap    postgres    false            �          0    32778    AlumnoCurso 
   TABLE DATA           D   COPY public."AlumnoCurso" ("Id", "IdAlumno", "IdCurso") FROM stdin;
    public          postgres    false    203   '       �          0    16395    Alumnos 
   TABLE DATA           b   COPY public."Alumnos" ("Nombre", "IdAlumno", "Apellido", "DNI", "Legajo", "Password") FROM stdin;
    public          postgres    false    200   D       �          0    32783    CursoDocente 
   TABLE DATA           F   COPY public."CursoDocente" ("Id", "IdCurso", "IdDocente") FROM stdin;
    public          postgres    false    204   a       �          0    24586    Cursos 
   TABLE DATA           H   COPY public."Cursos" ("IdCurso", "Nombre Corto", "Detalle") FROM stdin;
    public          postgres    false    202   ~       �          0    16400    Docente 
   TABLE DATA           p   COPY public."Docente" ("IdDocente", "Nombre", "Apellido", "Legajo", "Cuil", "DNI", "Clave", "Tipo") FROM stdin;
    public          postgres    false    201   �       7           2606    32782    AlumnoCurso AlumnoCurso_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."AlumnoCurso"
    ADD CONSTRAINT "AlumnoCurso_pkey" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY public."AlumnoCurso" DROP CONSTRAINT "AlumnoCurso_pkey";
       public            postgres    false    203            1           2606    16399    Alumnos Alumnos_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_pkey" PRIMARY KEY ("IdAlumno");
 B   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_pkey";
       public            postgres    false    200            9           2606    32787    CursoDocente CursoDocente_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."CursoDocente"
    ADD CONSTRAINT "CursoDocente_pkey" PRIMARY KEY ("Id");
 L   ALTER TABLE ONLY public."CursoDocente" DROP CONSTRAINT "CursoDocente_pkey";
       public            postgres    false    204            3           2606    16404    Docente Docente_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Docente"
    ADD CONSTRAINT "Docente_pkey" PRIMARY KEY ("IdDocente");
 B   ALTER TABLE ONLY public."Docente" DROP CONSTRAINT "Docente_pkey";
       public            postgres    false    201            5           2606    24590    Cursos Materias_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Cursos"
    ADD CONSTRAINT "Materias_pkey" PRIMARY KEY ("IdCurso");
 B   ALTER TABLE ONLY public."Cursos" DROP CONSTRAINT "Materias_pkey";
       public            postgres    false    202            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     