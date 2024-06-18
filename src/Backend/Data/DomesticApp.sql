PGDMP  7    /    	            {            DomesticApp    16.1    16.1 $               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    18092    DomesticApp    DATABASE     �   CREATE DATABASE "DomesticApp" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "DomesticApp";
                postgres    false            �            1259    18323    emails    TABLE     h   CREATE TABLE public.emails (
    num_celular character varying(20),
    email character varying(255)
);
    DROP TABLE public.emails;
       public         heap    postgres    false            �            1259    18110    labores    TABLE     f   CREATE TABLE public.labores (
    id_trabajador integer NOT NULL,
    labor character varying(255)
);
    DROP TABLE public.labores;
       public         heap    postgres    false            �            1259    18315    medios_pago    TABLE     x   CREATE TABLE public.medios_pago (
    num_celular character varying(20),
    t_credito integer,
    t_debito integer
);
    DROP TABLE public.medios_pago;
       public         heap    postgres    false            �            1259    18120    servicio    TABLE     �   CREATE TABLE public.servicio (
    servicio_id integer NOT NULL,
    descripcion_labor character varying(255),
    precio_hora double precision
);
    DROP TABLE public.servicio;
       public         heap    postgres    false            �            1259    18158 
   tipo_labor    TABLE     ^   CREATE TABLE public.tipo_labor (
    servicio_id integer,
    labor character varying(255)
);
    DROP TABLE public.tipo_labor;
       public         heap    postgres    false            �            1259    18093 
   trabajador    TABLE     �   CREATE TABLE public.trabajador (
    id integer NOT NULL,
    info_personal character varying(255),
    direccion character varying(255),
    precio_hora double precision
);
    DROP TABLE public.trabajador;
       public         heap    postgres    false            �            1259    18143    trabajador_servicio    TABLE     r   CREATE TABLE public.trabajador_servicio (
    id_trabajador integer NOT NULL,
    id_servicio integer NOT NULL
);
 '   DROP TABLE public.trabajador_servicio;
       public         heap    postgres    false            �            1259    18331    usuario_servicio    TABLE     {   CREATE TABLE public.usuario_servicio (
    num_celular character varying(20) NOT NULL,
    id_servicio integer NOT NULL
);
 $   DROP TABLE public.usuario_servicio;
       public         heap    postgres    false            �            1259    18308    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    num_celular character varying(20) NOT NULL,
    info_personal character varying(255),
    direccion character varying(255),
    recibo_servicio_publico character varying(255),
    medio_pago_id integer
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false                      0    18323    emails 
   TABLE DATA           4   COPY public.emails (num_celular, email) FROM stdin;
    public          postgres    false    222   1+                 0    18110    labores 
   TABLE DATA           7   COPY public.labores (id_trabajador, labor) FROM stdin;
    public          postgres    false    216   N+                 0    18315    medios_pago 
   TABLE DATA           G   COPY public.medios_pago (num_celular, t_credito, t_debito) FROM stdin;
    public          postgres    false    221   k+                 0    18120    servicio 
   TABLE DATA           O   COPY public.servicio (servicio_id, descripcion_labor, precio_hora) FROM stdin;
    public          postgres    false    217   �+                 0    18158 
   tipo_labor 
   TABLE DATA           8   COPY public.tipo_labor (servicio_id, labor) FROM stdin;
    public          postgres    false    219   �+                 0    18093 
   trabajador 
   TABLE DATA           O   COPY public.trabajador (id, info_personal, direccion, precio_hora) FROM stdin;
    public          postgres    false    215   �+                 0    18143    trabajador_servicio 
   TABLE DATA           I   COPY public.trabajador_servicio (id_trabajador, id_servicio) FROM stdin;
    public          postgres    false    218   �+                 0    18331    usuario_servicio 
   TABLE DATA           D   COPY public.usuario_servicio (num_celular, id_servicio) FROM stdin;
    public          postgres    false    223   �+                 0    18308    usuarios 
   TABLE DATA           q   COPY public.usuarios (num_celular, info_personal, direccion, recibo_servicio_publico, medio_pago_id) FROM stdin;
    public          postgres    false    220   ,       r           2606    18114    labores labores_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.labores
    ADD CONSTRAINT labores_pkey PRIMARY KEY (id_trabajador);
 >   ALTER TABLE ONLY public.labores DROP CONSTRAINT labores_pkey;
       public            postgres    false    216            t           2606    18124    servicio servicio_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT servicio_pkey PRIMARY KEY (servicio_id);
 @   ALTER TABLE ONLY public.servicio DROP CONSTRAINT servicio_pkey;
       public            postgres    false    217            p           2606    18099    trabajador trabajador_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.trabajador
    ADD CONSTRAINT trabajador_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.trabajador DROP CONSTRAINT trabajador_pkey;
       public            postgres    false    215            v           2606    18147 ,   trabajador_servicio trabajador_servicio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.trabajador_servicio
    ADD CONSTRAINT trabajador_servicio_pkey PRIMARY KEY (id_trabajador, id_servicio);
 V   ALTER TABLE ONLY public.trabajador_servicio DROP CONSTRAINT trabajador_servicio_pkey;
       public            postgres    false    218    218            z           2606    18335 &   usuario_servicio usuario_servicio_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.usuario_servicio
    ADD CONSTRAINT usuario_servicio_pkey PRIMARY KEY (num_celular, id_servicio);
 P   ALTER TABLE ONLY public.usuario_servicio DROP CONSTRAINT usuario_servicio_pkey;
       public            postgres    false    223    223            x           2606    18314    usuarios usuarios_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (num_celular);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    220            �           2606    18326    emails emails_num_celular_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.emails
    ADD CONSTRAINT emails_num_celular_fkey FOREIGN KEY (num_celular) REFERENCES public.usuarios(num_celular);
 H   ALTER TABLE ONLY public.emails DROP CONSTRAINT emails_num_celular_fkey;
       public          postgres    false    220    222    4728            {           2606    18115 "   labores labores_id_trabajador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.labores
    ADD CONSTRAINT labores_id_trabajador_fkey FOREIGN KEY (id_trabajador) REFERENCES public.trabajador(id);
 L   ALTER TABLE ONLY public.labores DROP CONSTRAINT labores_id_trabajador_fkey;
       public          postgres    false    215    216    4720                       2606    18318 (   medios_pago medios_pago_num_celular_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medios_pago
    ADD CONSTRAINT medios_pago_num_celular_fkey FOREIGN KEY (num_celular) REFERENCES public.usuarios(num_celular);
 R   ALTER TABLE ONLY public.medios_pago DROP CONSTRAINT medios_pago_num_celular_fkey;
       public          postgres    false    221    220    4728            ~           2606    18161 &   tipo_labor tipo_labor_servicio_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipo_labor
    ADD CONSTRAINT tipo_labor_servicio_id_fkey FOREIGN KEY (servicio_id) REFERENCES public.servicio(servicio_id);
 P   ALTER TABLE ONLY public.tipo_labor DROP CONSTRAINT tipo_labor_servicio_id_fkey;
       public          postgres    false    217    219    4724            |           2606    18153 8   trabajador_servicio trabajador_servicio_id_servicio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.trabajador_servicio
    ADD CONSTRAINT trabajador_servicio_id_servicio_fkey FOREIGN KEY (id_servicio) REFERENCES public.servicio(servicio_id);
 b   ALTER TABLE ONLY public.trabajador_servicio DROP CONSTRAINT trabajador_servicio_id_servicio_fkey;
       public          postgres    false    218    217    4724            }           2606    18148 :   trabajador_servicio trabajador_servicio_id_trabajador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.trabajador_servicio
    ADD CONSTRAINT trabajador_servicio_id_trabajador_fkey FOREIGN KEY (id_trabajador) REFERENCES public.trabajador(id);
 d   ALTER TABLE ONLY public.trabajador_servicio DROP CONSTRAINT trabajador_servicio_id_trabajador_fkey;
       public          postgres    false    215    4720    218            �           2606    18341 2   usuario_servicio usuario_servicio_id_servicio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_servicio
    ADD CONSTRAINT usuario_servicio_id_servicio_fkey FOREIGN KEY (id_servicio) REFERENCES public.servicio(servicio_id);
 \   ALTER TABLE ONLY public.usuario_servicio DROP CONSTRAINT usuario_servicio_id_servicio_fkey;
       public          postgres    false    223    4724    217            �           2606    18336 2   usuario_servicio usuario_servicio_num_celular_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_servicio
    ADD CONSTRAINT usuario_servicio_num_celular_fkey FOREIGN KEY (num_celular) REFERENCES public.usuarios(num_celular);
 \   ALTER TABLE ONLY public.usuario_servicio DROP CONSTRAINT usuario_servicio_num_celular_fkey;
       public          postgres    false    220    4728    223                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     