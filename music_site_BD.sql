PGDMP  4                    |         
   music_site    16.3    16.3 4    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16413 
   music_site    DATABASE     ~   CREATE DATABASE music_site WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE music_site;
                postgres    false            �            1259    16429    album    TABLE     |   CREATE TABLE public.album (
    id_album integer NOT NULL,
    title character varying(60) NOT NULL,
    album_year date
);
    DROP TABLE public.album;
       public         heap    postgres    false            �            1259    16428    album_id_album_seq    SEQUENCE     �   CREATE SEQUENCE public.album_id_album_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.album_id_album_seq;
       public          postgres    false    220            �           0    0    album_id_album_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.album_id_album_seq OWNED BY public.album.id_album;
          public          postgres    false    219            �            1259    16422    band    TABLE     i   CREATE TABLE public.band (
    id_band integer NOT NULL,
    name_band character varying(60) NOT NULL
);
    DROP TABLE public.band;
       public         heap    postgres    false            �            1259    16421    band_id_band_seq    SEQUENCE     �   CREATE SEQUENCE public.band_id_band_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.band_id_band_seq;
       public          postgres    false    218            �           0    0    band_id_band_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.band_id_band_seq OWNED BY public.band.id_band;
          public          postgres    false    217            �            1259    16555    bridge_band_album    TABLE     U   CREATE TABLE public.bridge_band_album (
    id_band integer,
    id_album integer
);
 %   DROP TABLE public.bridge_band_album;
       public         heap    postgres    false            �            1259    16542    bridge_collection_tracks    TABLE     b   CREATE TABLE public.bridge_collection_tracks (
    id_track integer,
    id_collection integer
);
 ,   DROP TABLE public.bridge_collection_tracks;
       public         heap    postgres    false            �            1259    16517    bridge_genre_band    TABLE     U   CREATE TABLE public.bridge_genre_band (
    id_band integer,
    id_genre integer
);
 %   DROP TABLE public.bridge_genre_band;
       public         heap    postgres    false            �            1259    16436    collection_of_song    TABLE     �   CREATE TABLE public.collection_of_song (
    id_collection integer NOT NULL,
    title character varying(60) NOT NULL,
    year_collection date
);
 &   DROP TABLE public.collection_of_song;
       public         heap    postgres    false            �            1259    16435 $   collection_of_song_id_collection_seq    SEQUENCE     �   CREATE SEQUENCE public.collection_of_song_id_collection_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.collection_of_song_id_collection_seq;
       public          postgres    false    222            �           0    0 $   collection_of_song_id_collection_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.collection_of_song_id_collection_seq OWNED BY public.collection_of_song.id_collection;
          public          postgres    false    221            �            1259    16415    genre    TABLE     g   CREATE TABLE public.genre (
    id_genre integer NOT NULL,
    title character varying(40) NOT NULL
);
    DROP TABLE public.genre;
       public         heap    postgres    false            �            1259    16414    genre_id_genre_seq    SEQUENCE     �   CREATE SEQUENCE public.genre_id_genre_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.genre_id_genre_seq;
       public          postgres    false    216            �           0    0    genre_id_genre_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.genre_id_genre_seq OWNED BY public.genre.id_genre;
          public          postgres    false    215            �            1259    16531    music_track    TABLE     �   CREATE TABLE public.music_track (
    id_track integer NOT NULL,
    name_track character varying(60) NOT NULL,
    duration time without time zone,
    id_album integer
);
    DROP TABLE public.music_track;
       public         heap    postgres    false            �            1259    16530    music_track_id_track_seq    SEQUENCE     �   CREATE SEQUENCE public.music_track_id_track_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.music_track_id_track_seq;
       public          postgres    false    225            �           0    0    music_track_id_track_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.music_track_id_track_seq OWNED BY public.music_track.id_track;
          public          postgres    false    224            <           2604    16432    album id_album    DEFAULT     p   ALTER TABLE ONLY public.album ALTER COLUMN id_album SET DEFAULT nextval('public.album_id_album_seq'::regclass);
 =   ALTER TABLE public.album ALTER COLUMN id_album DROP DEFAULT;
       public          postgres    false    219    220    220            ;           2604    16425    band id_band    DEFAULT     l   ALTER TABLE ONLY public.band ALTER COLUMN id_band SET DEFAULT nextval('public.band_id_band_seq'::regclass);
 ;   ALTER TABLE public.band ALTER COLUMN id_band DROP DEFAULT;
       public          postgres    false    217    218    218            =           2604    16439     collection_of_song id_collection    DEFAULT     �   ALTER TABLE ONLY public.collection_of_song ALTER COLUMN id_collection SET DEFAULT nextval('public.collection_of_song_id_collection_seq'::regclass);
 O   ALTER TABLE public.collection_of_song ALTER COLUMN id_collection DROP DEFAULT;
       public          postgres    false    221    222    222            :           2604    16418    genre id_genre    DEFAULT     p   ALTER TABLE ONLY public.genre ALTER COLUMN id_genre SET DEFAULT nextval('public.genre_id_genre_seq'::regclass);
 =   ALTER TABLE public.genre ALTER COLUMN id_genre DROP DEFAULT;
       public          postgres    false    215    216    216            >           2604    16534    music_track id_track    DEFAULT     |   ALTER TABLE ONLY public.music_track ALTER COLUMN id_track SET DEFAULT nextval('public.music_track_id_track_seq'::regclass);
 C   ALTER TABLE public.music_track ALTER COLUMN id_track DROP DEFAULT;
       public          postgres    false    225    224    225            �          0    16429    album 
   TABLE DATA           <   COPY public.album (id_album, title, album_year) FROM stdin;
    public          postgres    false    220   <       �          0    16422    band 
   TABLE DATA           2   COPY public.band (id_band, name_band) FROM stdin;
    public          postgres    false    218   "<       �          0    16555    bridge_band_album 
   TABLE DATA           >   COPY public.bridge_band_album (id_band, id_album) FROM stdin;
    public          postgres    false    227   ?<       �          0    16542    bridge_collection_tracks 
   TABLE DATA           K   COPY public.bridge_collection_tracks (id_track, id_collection) FROM stdin;
    public          postgres    false    226   \<       �          0    16517    bridge_genre_band 
   TABLE DATA           >   COPY public.bridge_genre_band (id_band, id_genre) FROM stdin;
    public          postgres    false    223   y<       �          0    16436    collection_of_song 
   TABLE DATA           S   COPY public.collection_of_song (id_collection, title, year_collection) FROM stdin;
    public          postgres    false    222   �<       �          0    16415    genre 
   TABLE DATA           0   COPY public.genre (id_genre, title) FROM stdin;
    public          postgres    false    216   �<       �          0    16531    music_track 
   TABLE DATA           O   COPY public.music_track (id_track, name_track, duration, id_album) FROM stdin;
    public          postgres    false    225   �<       �           0    0    album_id_album_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.album_id_album_seq', 1, false);
          public          postgres    false    219            �           0    0    band_id_band_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.band_id_band_seq', 1, false);
          public          postgres    false    217            �           0    0 $   collection_of_song_id_collection_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.collection_of_song_id_collection_seq', 1, false);
          public          postgres    false    221            �           0    0    genre_id_genre_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.genre_id_genre_seq', 1, false);
          public          postgres    false    215            �           0    0    music_track_id_track_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.music_track_id_track_seq', 1, false);
          public          postgres    false    224            D           2606    16434    album album_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (id_album);
 :   ALTER TABLE ONLY public.album DROP CONSTRAINT album_pkey;
       public            postgres    false    220            B           2606    16427    band band_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.band
    ADD CONSTRAINT band_pkey PRIMARY KEY (id_band);
 8   ALTER TABLE ONLY public.band DROP CONSTRAINT band_pkey;
       public            postgres    false    218            F           2606    16441 *   collection_of_song collection_of_song_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.collection_of_song
    ADD CONSTRAINT collection_of_song_pkey PRIMARY KEY (id_collection);
 T   ALTER TABLE ONLY public.collection_of_song DROP CONSTRAINT collection_of_song_pkey;
       public            postgres    false    222            @           2606    16420    genre genre_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id_genre);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public            postgres    false    216            H           2606    16536    music_track music_track_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.music_track
    ADD CONSTRAINT music_track_pkey PRIMARY KEY (id_track);
 F   ALTER TABLE ONLY public.music_track DROP CONSTRAINT music_track_pkey;
       public            postgres    false    225            N           2606    16563 1   bridge_band_album bridge_band_album_id_album_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_band_album
    ADD CONSTRAINT bridge_band_album_id_album_fkey FOREIGN KEY (id_album) REFERENCES public.album(id_album);
 [   ALTER TABLE ONLY public.bridge_band_album DROP CONSTRAINT bridge_band_album_id_album_fkey;
       public          postgres    false    4676    227    220            O           2606    16558 0   bridge_band_album bridge_band_album_id_band_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_band_album
    ADD CONSTRAINT bridge_band_album_id_band_fkey FOREIGN KEY (id_band) REFERENCES public.band(id_band);
 Z   ALTER TABLE ONLY public.bridge_band_album DROP CONSTRAINT bridge_band_album_id_band_fkey;
       public          postgres    false    227    4674    218            L           2606    16550 D   bridge_collection_tracks bridge_collection_tracks_id_collection_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_collection_tracks
    ADD CONSTRAINT bridge_collection_tracks_id_collection_fkey FOREIGN KEY (id_collection) REFERENCES public.collection_of_song(id_collection);
 n   ALTER TABLE ONLY public.bridge_collection_tracks DROP CONSTRAINT bridge_collection_tracks_id_collection_fkey;
       public          postgres    false    222    226    4678            M           2606    16545 ?   bridge_collection_tracks bridge_collection_tracks_id_track_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_collection_tracks
    ADD CONSTRAINT bridge_collection_tracks_id_track_fkey FOREIGN KEY (id_track) REFERENCES public.music_track(id_track);
 i   ALTER TABLE ONLY public.bridge_collection_tracks DROP CONSTRAINT bridge_collection_tracks_id_track_fkey;
       public          postgres    false    4680    225    226            I           2606    16520 0   bridge_genre_band bridge_genre_band_id_band_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_genre_band
    ADD CONSTRAINT bridge_genre_band_id_band_fkey FOREIGN KEY (id_band) REFERENCES public.band(id_band);
 Z   ALTER TABLE ONLY public.bridge_genre_band DROP CONSTRAINT bridge_genre_band_id_band_fkey;
       public          postgres    false    218    4674    223            J           2606    16525 1   bridge_genre_band bridge_genre_band_id_genre_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_genre_band
    ADD CONSTRAINT bridge_genre_band_id_genre_fkey FOREIGN KEY (id_genre) REFERENCES public.genre(id_genre);
 [   ALTER TABLE ONLY public.bridge_genre_band DROP CONSTRAINT bridge_genre_band_id_genre_fkey;
       public          postgres    false    4672    223    216            K           2606    16537 %   music_track music_track_id_album_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.music_track
    ADD CONSTRAINT music_track_id_album_fkey FOREIGN KEY (id_album) REFERENCES public.album(id_album);
 O   ALTER TABLE ONLY public.music_track DROP CONSTRAINT music_track_id_album_fkey;
       public          postgres    false    220    225    4676            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     