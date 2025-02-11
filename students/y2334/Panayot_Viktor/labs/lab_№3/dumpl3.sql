PGDMP                         y            market    13.2    13.2 (    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    market    DATABASE     c   CREATE DATABASE market WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE market;
                postgres    false            �            1259    16405    batch    TABLE     �   CREATE TABLE public.batch (
    idbatch integer NOT NULL,
    name_batch character(10),
    amount_of_product text,
    price_batch integer
);
    DROP TABLE public.batch;
       public         heap    postgres    false            �            1259    16441    batch_content    TABLE     l   CREATE TABLE public.batch_content (
    idbatch integer,
    idproduct integer,
    date_of_receipt date
);
 !   DROP TABLE public.batch_content;
       public         heap    postgres    false            �            1259    16413    broker    TABLE     �   CREATE TABLE public.broker (
    name_broker character(30),
    succsess_percent integer,
    idbroker integer NOT NULL,
    work_experience integer
);
    DROP TABLE public.broker;
       public         heap    postgres    false            �            1259    16469    contract_bcb    TABLE     �   CREATE TABLE public.contract_bcb (
    idbroker integer,
    idcustomer integer,
    idbatch integer,
    date_of_conclusion date
);
     DROP TABLE public.contract_bcb;
       public         heap    postgres    false            �            1259    16454    contract_bo    TABLE     �   CREATE TABLE public.contract_bo (
    idcontract_bo integer NOT NULL,
    idoffice integer,
    idbroker integer,
    office_percent integer,
    salary integer,
    date_of_duration date
);
    DROP TABLE public.contract_bo;
       public         heap    postgres    false            �            1259    16428    contract_fp    TABLE     j   CREATE TABLE public.contract_fp (
    idproduct integer,
    iffirm integer,
    date_of_contract date
);
    DROP TABLE public.contract_fp;
       public         heap    postgres    false            �            1259    16423    customer    TABLE     c   CREATE TABLE public.customer (
    idcustomer integer NOT NULL,
    name_customer character(30)
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    16395    firm    TABLE     ~   CREATE TABLE public.firm (
    idfirm integer NOT NULL,
    name_firm character(25),
    specialization_firm character(25)
);
    DROP TABLE public.firm;
       public         heap    postgres    false            �            1259    16418    office    TABLE     ]   CREATE TABLE public.office (
    idoffice integer NOT NULL,
    name_office character(25)
);
    DROP TABLE public.office;
       public         heap    postgres    false            �            1259    16400    product    TABLE     �   CREATE TABLE public.product (
    ifproduct integer NOT NULL,
    name_product character(25),
    shelf_life date,
    unit character(10),
    price integer,
    date_of_production date,
    date_of_shipment date
);
    DROP TABLE public.product;
       public         heap    postgres    false            �          0    16405    batch 
   TABLE DATA           T   COPY public.batch (idbatch, name_batch, amount_of_product, price_batch) FROM stdin;
    public          postgres    false    202   /       �          0    16441    batch_content 
   TABLE DATA           L   COPY public.batch_content (idbatch, idproduct, date_of_receipt) FROM stdin;
    public          postgres    false    207   �/       �          0    16413    broker 
   TABLE DATA           Z   COPY public.broker (name_broker, succsess_percent, idbroker, work_experience) FROM stdin;
    public          postgres    false    203   �/       �          0    16469    contract_bcb 
   TABLE DATA           Y   COPY public.contract_bcb (idbroker, idcustomer, idbatch, date_of_conclusion) FROM stdin;
    public          postgres    false    209   $0       �          0    16454    contract_bo 
   TABLE DATA           r   COPY public.contract_bo (idcontract_bo, idoffice, idbroker, office_percent, salary, date_of_duration) FROM stdin;
    public          postgres    false    208   c0       �          0    16428    contract_fp 
   TABLE DATA           J   COPY public.contract_fp (idproduct, iffirm, date_of_contract) FROM stdin;
    public          postgres    false    206   �0       �          0    16423    customer 
   TABLE DATA           =   COPY public.customer (idcustomer, name_customer) FROM stdin;
    public          postgres    false    205   �0       �          0    16395    firm 
   TABLE DATA           F   COPY public.firm (idfirm, name_firm, specialization_firm) FROM stdin;
    public          postgres    false    200   @1       �          0    16418    office 
   TABLE DATA           7   COPY public.office (idoffice, name_office) FROM stdin;
    public          postgres    false    204   �1       �          0    16400    product 
   TABLE DATA           y   COPY public.product (ifproduct, name_product, shelf_life, unit, price, date_of_production, date_of_shipment) FROM stdin;
    public          postgres    false    201   �1       J           2606    16412    batch batch_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.batch
    ADD CONSTRAINT batch_pkey PRIMARY KEY (idbatch);
 :   ALTER TABLE ONLY public.batch DROP CONSTRAINT batch_pkey;
       public            postgres    false    202            L           2606    16417    broker broker_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.broker
    ADD CONSTRAINT broker_pkey PRIMARY KEY (idbroker);
 <   ALTER TABLE ONLY public.broker DROP CONSTRAINT broker_pkey;
       public            postgres    false    203            R           2606    16458    contract_bo contract_bo_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.contract_bo
    ADD CONSTRAINT contract_bo_pkey PRIMARY KEY (idcontract_bo);
 F   ALTER TABLE ONLY public.contract_bo DROP CONSTRAINT contract_bo_pkey;
       public            postgres    false    208            P           2606    16427    customer customer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (idcustomer);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    205            F           2606    16399    firm firm_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.firm
    ADD CONSTRAINT firm_pkey PRIMARY KEY (idfirm);
 8   ALTER TABLE ONLY public.firm DROP CONSTRAINT firm_pkey;
       public            postgres    false    200            N           2606    16422    office office_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.office
    ADD CONSTRAINT office_pkey PRIMARY KEY (idoffice);
 <   ALTER TABLE ONLY public.office DROP CONSTRAINT office_pkey;
       public            postgres    false    204            H           2606    16404    product product_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (ifproduct);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    201            U           2606    16444 (   batch_content batch_content_idbatch_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch_content
    ADD CONSTRAINT batch_content_idbatch_fkey FOREIGN KEY (idbatch) REFERENCES public.batch(idbatch) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.batch_content DROP CONSTRAINT batch_content_idbatch_fkey;
       public          postgres    false    2890    202    207            V           2606    16449 *   batch_content batch_content_idproduct_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch_content
    ADD CONSTRAINT batch_content_idproduct_fkey FOREIGN KEY (idproduct) REFERENCES public.product(ifproduct) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.batch_content DROP CONSTRAINT batch_content_idproduct_fkey;
       public          postgres    false    2888    201    207            [           2606    16482 &   contract_bcb contract_bcb_idbatch_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract_bcb
    ADD CONSTRAINT contract_bcb_idbatch_fkey FOREIGN KEY (idbatch) REFERENCES public.batch(idbatch) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.contract_bcb DROP CONSTRAINT contract_bcb_idbatch_fkey;
       public          postgres    false    2890    209    202            Y           2606    16472 '   contract_bcb contract_bcb_idbroker_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract_bcb
    ADD CONSTRAINT contract_bcb_idbroker_fkey FOREIGN KEY (idbroker) REFERENCES public.broker(idbroker) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.contract_bcb DROP CONSTRAINT contract_bcb_idbroker_fkey;
       public          postgres    false    203    209    2892            Z           2606    16477 )   contract_bcb contract_bcb_idcustomer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract_bcb
    ADD CONSTRAINT contract_bcb_idcustomer_fkey FOREIGN KEY (idcustomer) REFERENCES public.customer(idcustomer) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.contract_bcb DROP CONSTRAINT contract_bcb_idcustomer_fkey;
       public          postgres    false    209    2896    205            X           2606    16464 %   contract_bo contract_bo_idbroker_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract_bo
    ADD CONSTRAINT contract_bo_idbroker_fkey FOREIGN KEY (idbroker) REFERENCES public.broker(idbroker) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.contract_bo DROP CONSTRAINT contract_bo_idbroker_fkey;
       public          postgres    false    2892    203    208            W           2606    16459 %   contract_bo contract_bo_idoffice_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract_bo
    ADD CONSTRAINT contract_bo_idoffice_fkey FOREIGN KEY (idoffice) REFERENCES public.office(idoffice) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.contract_bo DROP CONSTRAINT contract_bo_idoffice_fkey;
       public          postgres    false    2894    208    204            S           2606    16431 &   contract_fp contract_fp_idproduct_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract_fp
    ADD CONSTRAINT contract_fp_idproduct_fkey FOREIGN KEY (idproduct) REFERENCES public.product(ifproduct) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.contract_fp DROP CONSTRAINT contract_fp_idproduct_fkey;
       public          postgres    false    201    206    2888            T           2606    16436 #   contract_fp contract_fp_iffirm_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract_fp
    ADD CONSTRAINT contract_fp_iffirm_fkey FOREIGN KEY (iffirm) REFERENCES public.firm(idfirm) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.contract_fp DROP CONSTRAINT contract_fp_iffirm_fkey;
       public          postgres    false    200    206    2886            �   Z   x�3�440 "##CN���"��̢T+C���̂�xC ������������[��$ ���8�<��3��a
�b���� _$�      �   .   x�3�4�4202�50�54�2�4A�q����k�i�,���� VZ
G      �   N   x���/JI�SpJ�I�/*Q@����F\.�y
^�@�X�����)Wh^rN�B@fFI>6e&�Ɯf\1z\\\ <�^      �   /   x�ʱ 0�����:����׫��V�-�	�&�V���= ��      �   8   x�5�� 0߸KѺM���-ǋ���f`j��Y1l�οsQۼl��"� 0�      �   -   x�3�4�4202�5 !.#N 400�r�9��eM8M@\�l� S
-      �   H   x�3�H�K��/Q��.�/R@\F���>I�yy�)
�y
A��ř��pƜ~�%�y�
�4TA� �g      �   Z   x�3�tLN-R�8��KR����e��8�RS�r�1u��&��a��2�����j�gZ~~
V.���̂T��|3�������� ��&�      �   <   x�3��OK3LNU�\F�IE�%�E�
NE�UU LΘ�(���^� 4 � �=... ��      �   �   x�m��
�0Dg�+�
�l7d�X
Y�v���?1ء&���Ow~
���6�A;v�Hg��!$�l��kk))݄������/��n�$dA�5���O�B30>G=�uY�;-?}��|uMkFs��;�[@nD�E�[Q�a�Ś4�O��:�x8     