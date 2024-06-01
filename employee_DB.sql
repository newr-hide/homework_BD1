PGDMP      (                |            employee_DB    16.3    16.3 !    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16684    employee_DB    DATABASE     �   CREATE DATABASE "employee_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "employee_DB";
                postgres    false            �            1259    16725    bridge_chief_list_employee    TABLE     b   CREATE TABLE public.bridge_chief_list_employee (
    id_chief integer,
    id_employee integer
);
 .   DROP TABLE public.bridge_chief_list_employee;
       public         heap    postgres    false            �            1259    16712    bridge_departament_employee    TABLE     i   CREATE TABLE public.bridge_departament_employee (
    id_departament integer,
    id_employee integer
);
 /   DROP TABLE public.bridge_departament_employee;
       public         heap    postgres    false            �            1259    16706 
   chief_list    TABLE     x   CREATE TABLE public.chief_list (
    id_chief integer NOT NULL,
    position_at_work character varying(100) NOT NULL
);
    DROP TABLE public.chief_list;
       public         heap    postgres    false            �            1259    16705    chief_list_id_chief_seq    SEQUENCE     �   CREATE SEQUENCE public.chief_list_id_chief_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.chief_list_id_chief_seq;
       public          postgres    false    220            �           0    0    chief_list_id_chief_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.chief_list_id_chief_seq OWNED BY public.chief_list.id_chief;
          public          postgres    false    219            �            1259    16692    departament    TABLE     t   CREATE TABLE public.departament (
    id_departament integer NOT NULL,
    title character varying(100) NOT NULL
);
    DROP TABLE public.departament;
       public         heap    postgres    false            �            1259    16691    departament_id_departament_seq    SEQUENCE     �   CREATE SEQUENCE public.departament_id_departament_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.departament_id_departament_seq;
       public          postgres    false    216            �           0    0    departament_id_departament_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.departament_id_departament_seq OWNED BY public.departament.id_departament;
          public          postgres    false    215            �            1259    16699    employee    TABLE     v   CREATE TABLE public.employee (
    id_employee integer NOT NULL,
    name_employee character varying(100) NOT NULL
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �            1259    16698    employee_id_employee_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_id_employee_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employee_id_employee_seq;
       public          postgres    false    218            �           0    0    employee_id_employee_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.employee_id_employee_seq OWNED BY public.employee.id_employee;
          public          postgres    false    217            .           2604    16709    chief_list id_chief    DEFAULT     z   ALTER TABLE ONLY public.chief_list ALTER COLUMN id_chief SET DEFAULT nextval('public.chief_list_id_chief_seq'::regclass);
 B   ALTER TABLE public.chief_list ALTER COLUMN id_chief DROP DEFAULT;
       public          postgres    false    219    220    220            ,           2604    16695    departament id_departament    DEFAULT     �   ALTER TABLE ONLY public.departament ALTER COLUMN id_departament SET DEFAULT nextval('public.departament_id_departament_seq'::regclass);
 I   ALTER TABLE public.departament ALTER COLUMN id_departament DROP DEFAULT;
       public          postgres    false    216    215    216            -           2604    16702    employee id_employee    DEFAULT     |   ALTER TABLE ONLY public.employee ALTER COLUMN id_employee SET DEFAULT nextval('public.employee_id_employee_seq'::regclass);
 C   ALTER TABLE public.employee ALTER COLUMN id_employee DROP DEFAULT;
       public          postgres    false    217    218    218            �          0    16725    bridge_chief_list_employee 
   TABLE DATA           K   COPY public.bridge_chief_list_employee (id_chief, id_employee) FROM stdin;
    public          postgres    false    222   -'       �          0    16712    bridge_departament_employee 
   TABLE DATA           R   COPY public.bridge_departament_employee (id_departament, id_employee) FROM stdin;
    public          postgres    false    221   J'       �          0    16706 
   chief_list 
   TABLE DATA           @   COPY public.chief_list (id_chief, position_at_work) FROM stdin;
    public          postgres    false    220   g'       �          0    16692    departament 
   TABLE DATA           <   COPY public.departament (id_departament, title) FROM stdin;
    public          postgres    false    216   �'       �          0    16699    employee 
   TABLE DATA           >   COPY public.employee (id_employee, name_employee) FROM stdin;
    public          postgres    false    218   �'       �           0    0    chief_list_id_chief_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.chief_list_id_chief_seq', 1, false);
          public          postgres    false    219            �           0    0    departament_id_departament_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.departament_id_departament_seq', 1, false);
          public          postgres    false    215            �           0    0    employee_id_employee_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.employee_id_employee_seq', 1, false);
          public          postgres    false    217            4           2606    16711    chief_list chief_list_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.chief_list
    ADD CONSTRAINT chief_list_pkey PRIMARY KEY (id_chief);
 D   ALTER TABLE ONLY public.chief_list DROP CONSTRAINT chief_list_pkey;
       public            postgres    false    220            0           2606    16697    departament departament_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.departament
    ADD CONSTRAINT departament_pkey PRIMARY KEY (id_departament);
 F   ALTER TABLE ONLY public.departament DROP CONSTRAINT departament_pkey;
       public            postgres    false    216            2           2606    16704    employee employee_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id_employee);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    218            7           2606    16728 C   bridge_chief_list_employee bridge_chief_list_employee_id_chief_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_chief_list_employee
    ADD CONSTRAINT bridge_chief_list_employee_id_chief_fkey FOREIGN KEY (id_chief) REFERENCES public.chief_list(id_chief);
 m   ALTER TABLE ONLY public.bridge_chief_list_employee DROP CONSTRAINT bridge_chief_list_employee_id_chief_fkey;
       public          postgres    false    222    4660    220            8           2606    16733 F   bridge_chief_list_employee bridge_chief_list_employee_id_employee_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_chief_list_employee
    ADD CONSTRAINT bridge_chief_list_employee_id_employee_fkey FOREIGN KEY (id_employee) REFERENCES public.employee(id_employee);
 p   ALTER TABLE ONLY public.bridge_chief_list_employee DROP CONSTRAINT bridge_chief_list_employee_id_employee_fkey;
       public          postgres    false    4658    222    218            5           2606    16715 K   bridge_departament_employee bridge_departament_employee_id_departament_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_departament_employee
    ADD CONSTRAINT bridge_departament_employee_id_departament_fkey FOREIGN KEY (id_departament) REFERENCES public.departament(id_departament);
 u   ALTER TABLE ONLY public.bridge_departament_employee DROP CONSTRAINT bridge_departament_employee_id_departament_fkey;
       public          postgres    false    4656    221    216            6           2606    16720 H   bridge_departament_employee bridge_departament_employee_id_employee_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_departament_employee
    ADD CONSTRAINT bridge_departament_employee_id_employee_fkey FOREIGN KEY (id_employee) REFERENCES public.employee(id_employee);
 r   ALTER TABLE ONLY public.bridge_departament_employee DROP CONSTRAINT bridge_departament_employee_id_employee_fkey;
       public          postgres    false    218    221    4658            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     