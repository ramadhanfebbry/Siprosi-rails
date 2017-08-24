--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "plpgsql" WITH SCHEMA "pg_catalog";


--
-- Name: EXTENSION "plpgsql"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "plpgsql" IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: barangs; Type: TABLE; Schema: public; Owner: psibmearvpmdll
--

CREATE TABLE "barangs" (
    "id" integer NOT NULL,
    "id_barang" character varying,
    "kategori_id" integer,
    "type_barang" character varying,
    "unit" character varying,
    "warna" character varying,
    "berat" character varying,
    "warehouse" character varying,
    "created_at" timestamp without time zone,
    "updated_at" timestamp without time zone
);


ALTER TABLE barangs OWNER TO psibmearvpmdll;

--
-- Name: barangs_id_seq; Type: SEQUENCE; Schema: public; Owner: psibmearvpmdll
--

CREATE SEQUENCE "barangs_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE barangs_id_seq OWNER TO psibmearvpmdll;

--
-- Name: barangs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: psibmearvpmdll
--

ALTER SEQUENCE "barangs_id_seq" OWNED BY "barangs"."id";


--
-- Name: cat_bloks; Type: TABLE; Schema: public; Owner: psibmearvpmdll
--

CREATE TABLE "cat_bloks" (
    "id" integer NOT NULL,
    "cetak_blok_id" integer,
    "hasil" integer,
    "rusak" integer,
    "keterangan" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE cat_bloks OWNER TO psibmearvpmdll;

--
-- Name: cat_bloks_id_seq; Type: SEQUENCE; Schema: public; Owner: psibmearvpmdll
--

CREATE SEQUENCE "cat_bloks_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_bloks_id_seq OWNER TO psibmearvpmdll;

--
-- Name: cat_bloks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: psibmearvpmdll
--

ALTER SEQUENCE "cat_bloks_id_seq" OWNED BY "cat_bloks"."id";


--
-- Name: cat_gtgs; Type: TABLE; Schema: public; Owner: psibmearvpmdll
--

CREATE TABLE "cat_gtgs" (
    "id" integer NOT NULL,
    "gosok_id" integer,
    "hasil" integer,
    "rusak" integer,
    "keterangan" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE cat_gtgs OWNER TO psibmearvpmdll;

--
-- Name: cat_gtgs_id_seq; Type: SEQUENCE; Schema: public; Owner: psibmearvpmdll
--

CREATE SEQUENCE "cat_gtgs_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_gtgs_id_seq OWNER TO psibmearvpmdll;

--
-- Name: cat_gtgs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: psibmearvpmdll
--

ALTER SEQUENCE "cat_gtgs_id_seq" OWNED BY "cat_gtgs"."id";


--
-- Name: cetak_bloks; Type: TABLE; Schema: public; Owner: psibmearvpmdll
--

CREATE TABLE "cetak_bloks" (
    "id" integer NOT NULL,
    "ip_id" integer,
    "hasil" integer,
    "rusak" integer,
    "keterangan" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE cetak_bloks OWNER TO psibmearvpmdll;

--
-- Name: cetak_bloks_id_seq; Type: SEQUENCE; Schema: public; Owner: psibmearvpmdll
--

CREATE SEQUENCE "cetak_bloks_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cetak_bloks_id_seq OWNER TO psibmearvpmdll;

--
-- Name: cetak_bloks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: psibmearvpmdll
--

ALTER SEQUENCE "cetak_bloks_id_seq" OWNED BY "cetak_bloks"."id";


--
-- Name: cetak_gtgs; Type: TABLE; Schema: public; Owner: psibmearvpmdll
--

CREATE TABLE "cetak_gtgs" (
    "id" integer NOT NULL,
    "ip_id" integer,
    "hasil" integer,
    "rusak" integer,
    "keterangan" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE cetak_gtgs OWNER TO psibmearvpmdll;

--
-- Name: cetak_gtgs_id_seq; Type: SEQUENCE; Schema: public; Owner: psibmearvpmdll
--

CREATE SEQUENCE "cetak_gtgs_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cetak_gtgs_id_seq OWNER TO psibmearvpmdll;

--
-- Name: cetak_gtgs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: psibmearvpmdll
--

ALTER SEQUENCE "cetak_gtgs_id_seq" OWNED BY "cetak_gtgs"."id";


--
-- Name: gosoks; Type: TABLE; Schema: public; Owner: psibmearvpmdll
--

CREATE TABLE "gosoks" (
    "id" integer NOT NULL,
    "rendam_id" integer,
    "date" character varying,
    "hasil" integer,
    "rusak" integer,
    "keterangan" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE gosoks OWNER TO psibmearvpmdll;

--
-- Name: gosoks_id_seq; Type: SEQUENCE; Schema: public; Owner: psibmearvpmdll
--

CREATE SEQUENCE "gosoks_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE gosoks_id_seq OWNER TO psibmearvpmdll;

--
-- Name: gosoks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: psibmearvpmdll
--

ALTER SEQUENCE "gosoks_id_seq" OWNED BY "gosoks"."id";


--
-- Name: hps; Type: TABLE; Schema: public; Owner: psibmearvpmdll
--

CREATE TABLE "hps" (
    "id" integer NOT NULL,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "cat_blok_id" integer,
    "cat_gtg_id" integer,
    "ip_id" integer
);


ALTER TABLE hps OWNER TO psibmearvpmdll;

--
-- Name: hps_id_seq; Type: SEQUENCE; Schema: public; Owner: psibmearvpmdll
--

CREATE SEQUENCE "hps_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hps_id_seq OWNER TO psibmearvpmdll;

--
-- Name: hps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: psibmearvpmdll
--

ALTER SEQUENCE "hps_id_seq" OWNED BY "hps"."id";


--
-- Name: ips; Type: TABLE; Schema: public; Owner: psibmearvpmdll
--

CREATE TABLE "ips" (
    "id" integer NOT NULL,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "pb_id" integer
);


ALTER TABLE ips OWNER TO psibmearvpmdll;

--
-- Name: ips_id_seq; Type: SEQUENCE; Schema: public; Owner: psibmearvpmdll
--

CREATE SEQUENCE "ips_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ips_id_seq OWNER TO psibmearvpmdll;

--
-- Name: ips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: psibmearvpmdll
--

ALTER SEQUENCE "ips_id_seq" OWNED BY "ips"."id";


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: psibmearvpmdll
--

CREATE TABLE "notifications" (
    "id" integer NOT NULL,
    "cat_blok_count" integer DEFAULT 0,
    "cat_gtg_count" integer DEFAULT 0,
    "gosok_count" integer DEFAULT 0,
    "hp_count" integer DEFAULT 0,
    "ip_gtg_count" integer DEFAULT 0,
    "ip_blok_count" integer DEFAULT 0,
    "pb_count" integer DEFAULT 0,
    "rendam_count" integer DEFAULT 0,
    "rp_count" integer DEFAULT 0,
    "konfirmasi_count" integer DEFAULT 0,
    "cetak_gtg_count" integer DEFAULT 0,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "cetak_blok_count" integer DEFAULT 0
);


ALTER TABLE notifications OWNER TO psibmearvpmdll;

--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: psibmearvpmdll
--

CREATE SEQUENCE "notifications_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE notifications_id_seq OWNER TO psibmearvpmdll;

--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: psibmearvpmdll
--

ALTER SEQUENCE "notifications_id_seq" OWNED BY "notifications"."id";


--
-- Name: pbs; Type: TABLE; Schema: public; Owner: psibmearvpmdll
--

CREATE TABLE "pbs" (
    "id" integer NOT NULL,
    "rp_id" integer,
    "status" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE pbs OWNER TO psibmearvpmdll;

--
-- Name: pbs_id_seq; Type: SEQUENCE; Schema: public; Owner: psibmearvpmdll
--

CREATE SEQUENCE "pbs_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pbs_id_seq OWNER TO psibmearvpmdll;

--
-- Name: pbs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: psibmearvpmdll
--

ALTER SEQUENCE "pbs_id_seq" OWNED BY "pbs"."id";


--
-- Name: rendams; Type: TABLE; Schema: public; Owner: psibmearvpmdll
--

CREATE TABLE "rendams" (
    "id" integer NOT NULL,
    "cetak_gtg_id" integer,
    "hasil" integer,
    "rusak" integer,
    "keterangan" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);


ALTER TABLE rendams OWNER TO psibmearvpmdll;

--
-- Name: rendams_id_seq; Type: SEQUENCE; Schema: public; Owner: psibmearvpmdll
--

CREATE SEQUENCE "rendams_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rendams_id_seq OWNER TO psibmearvpmdll;

--
-- Name: rendams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: psibmearvpmdll
--

ALTER SEQUENCE "rendams_id_seq" OWNED BY "rendams"."id";


--
-- Name: rps; Type: TABLE; Schema: public; Owner: psibmearvpmdll
--

CREATE TABLE "rps" (
    "id" integer NOT NULL,
    "schedule_qty" integer,
    "site" character varying,
    "keterangan" "text",
    "plan_date" character varying,
    "barang_id" integer,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "nama_customer" character varying,
    "alamat" character varying,
    "telpon" character varying
);


ALTER TABLE rps OWNER TO psibmearvpmdll;

--
-- Name: rps_id_seq; Type: SEQUENCE; Schema: public; Owner: psibmearvpmdll
--

CREATE SEQUENCE "rps_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rps_id_seq OWNER TO psibmearvpmdll;

--
-- Name: rps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: psibmearvpmdll
--

ALTER SEQUENCE "rps_id_seq" OWNED BY "rps"."id";


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: psibmearvpmdll
--

CREATE TABLE "schema_migrations" (
    "version" character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO psibmearvpmdll;

--
-- Name: users; Type: TABLE; Schema: public; Owner: psibmearvpmdll
--

CREATE TABLE "users" (
    "id" integer NOT NULL,
    "email" character varying DEFAULT ''::character varying NOT NULL,
    "encrypted_password" character varying DEFAULT ''::character varying NOT NULL,
    "role" character varying,
    "reset_password_token" character varying,
    "reset_password_sent_at" timestamp without time zone,
    "remember_created_at" timestamp without time zone,
    "sign_in_count" integer DEFAULT 0 NOT NULL,
    "current_sign_in_at" timestamp without time zone,
    "last_sign_in_at" timestamp without time zone,
    "current_sign_in_ip" "inet",
    "last_sign_in_ip" "inet",
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "username" character varying,
    "name" character varying
);


ALTER TABLE users OWNER TO psibmearvpmdll;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: psibmearvpmdll
--

CREATE SEQUENCE "users_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO psibmearvpmdll;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: psibmearvpmdll
--

ALTER SEQUENCE "users_id_seq" OWNED BY "users"."id";


--
-- Name: barangs id; Type: DEFAULT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "barangs" ALTER COLUMN "id" SET DEFAULT "nextval"('"barangs_id_seq"'::"regclass");


--
-- Name: cat_bloks id; Type: DEFAULT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "cat_bloks" ALTER COLUMN "id" SET DEFAULT "nextval"('"cat_bloks_id_seq"'::"regclass");


--
-- Name: cat_gtgs id; Type: DEFAULT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "cat_gtgs" ALTER COLUMN "id" SET DEFAULT "nextval"('"cat_gtgs_id_seq"'::"regclass");


--
-- Name: cetak_bloks id; Type: DEFAULT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "cetak_bloks" ALTER COLUMN "id" SET DEFAULT "nextval"('"cetak_bloks_id_seq"'::"regclass");


--
-- Name: cetak_gtgs id; Type: DEFAULT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "cetak_gtgs" ALTER COLUMN "id" SET DEFAULT "nextval"('"cetak_gtgs_id_seq"'::"regclass");


--
-- Name: gosoks id; Type: DEFAULT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "gosoks" ALTER COLUMN "id" SET DEFAULT "nextval"('"gosoks_id_seq"'::"regclass");


--
-- Name: hps id; Type: DEFAULT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "hps" ALTER COLUMN "id" SET DEFAULT "nextval"('"hps_id_seq"'::"regclass");


--
-- Name: ips id; Type: DEFAULT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "ips" ALTER COLUMN "id" SET DEFAULT "nextval"('"ips_id_seq"'::"regclass");


--
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "notifications" ALTER COLUMN "id" SET DEFAULT "nextval"('"notifications_id_seq"'::"regclass");


--
-- Name: pbs id; Type: DEFAULT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "pbs" ALTER COLUMN "id" SET DEFAULT "nextval"('"pbs_id_seq"'::"regclass");


--
-- Name: rendams id; Type: DEFAULT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "rendams" ALTER COLUMN "id" SET DEFAULT "nextval"('"rendams_id_seq"'::"regclass");


--
-- Name: rps id; Type: DEFAULT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "rps" ALTER COLUMN "id" SET DEFAULT "nextval"('"rps_id_seq"'::"regclass");


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "users" ALTER COLUMN "id" SET DEFAULT "nextval"('"users_id_seq"'::"regclass");


--
-- Data for Name: barangs; Type: TABLE DATA; Schema: public; Owner: psibmearvpmdll
--

COPY "barangs" ("id", "id_barang", "kategori_id", "type_barang", "unit", "warna", "berat", "warehouse", "created_at", "updated_at") FROM stdin;
1	GTG-00001	1	Victoria State Nok Atas	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
2	GTG-00002	1	Victoria State Nok Bawah	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
3	GTG-00003	1	Victoria State Nok Samping	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
4	GTG-00004	1	Victoria State Nok Ujung	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
5	GTG-00005	1	Victoria State Nok Smp Ujung	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
6	GTG-00006	1	Victoria State Starter	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
7	GTG-00007	1	Victoria State Nok Apex	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
8	GTG-00008	1	Victoria State Nok Siku	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
9	GTG-00009	1	Victoria Multiline Nok Atas	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
10	GTG-00010	1	Victoria Multiline Nok Bawah	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
11	GTG-00011	1	Victoria Multiline Nok Samping	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
12	GTG-00012	1	Victoria Multiline Nok Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
13	GTG-00013	1	Victoria Multiline Nok Smp Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
14	GTG-00014	1	Victoria Multiline Starter	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
15	GTG-00015	1	Victoria Multiline Apex	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
16	GTG-00016	1	Victoria Multiline Nok Siku	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
17	GTG-00017	1	Victoria Pine Nok Atas	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
18	GTG-00018	1	Victoria Pine Nok Bawah	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
19	GTG-00019	1	Victoria Pine Nok Samping	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
20	GTG-00020	1	Victoria Pine Nok Ujung	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
21	GTG-00021	1	Victoria Pine Nok SmpUjung	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
22	GTG-00022	1	Victoria Pine Starter	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
23	GTG-00023	1	Victoria Pine Apex	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
24	GTG-00024	1	Victoria Pine Nok Siku	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
25	GTG-00025	1	Victoria Clssic Nok Atas	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
26	GTG-00026	1	Victoria Clssic Nok Bawah	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
27	GTG-00027	1	Victoria Clssic Nok Samping	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
28	GTG-00028	1	Victoria Clssic Nok Ujung	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
29	GTG-00029	1	Victoria Clssic Smp Ujung	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
30	GTG-00030	1	Victoria Clssic Starter	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
31	GTG-00031	1	Victoria Clssic Apex	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
32	GTG-00032	1	Victoria Clssic Nok SIku	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
33	GTG-00033	1	Floral Nok Atas	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
34	GTG-00034	1	Floral Nok Bawah	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
35	GTG-00035	1	Floral Nok Saming	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
36	GTG-00036	1	Floral Nok Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
37	GTG-00037	1	Floral Nok Smp Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
38	GTG-00038	1	Floral Starter	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
39	GTG-00039	1	Floral Apex	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
40	GTG-00040	1	Floral Nok Siku	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
41	GTG-00041	1	Dual Slate Nok Atas	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
42	GTG-00042	1	Dual Slate Nok Bawah	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
43	GTG-00043	1	Dual Slate Nok Samping	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
44	GTG-00044	1	Dual Slate Nok Ujung	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
45	GTG-00045	1	Dual Slate Nok Smp Ujung	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
46	GTG-00046	1	Dual Slate Starter	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
47	GTG-00047	1	Dual Slate Apex	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
48	GTG-00048	1	Dual Slate Nok Siku	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
49	GTG-00049	1	Excellent Nok Atas	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
50	GTG-00050	1	Excellent Nok Bawah	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
51	GTG-00051	1	Excellent Nok Samping	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
52	GTG-00052	1	Excellent Nok Ujung	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
53	GTG-00053	1	Excellent Nok Smp Ujung	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
54	GTG-00054	1	Excellent Starter	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
55	GTG-00055	1	Excellent Apex	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
56	GTG-00056	1	Excellent Nok Si	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
57	GTG-00057	1	Majectic Nok Atas	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
58	GTG-00058	1	Majectic Nok Bawah	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
59	GTG-00059	1	Majectic Nok Samping	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
60	GTG-00060	1	Majectic Nok Ujung	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
61	GTG-00061	1	Majectic Nok Smp Ujung	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
62	GTG-00062	1	Majectic Starter	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
63	GTG-00063	1	Majectic Apex	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
64	GTG-00064	1	Majectic Nok Siku	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
65	GTG-00065	1	Majetic Nok Atas	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
66	PB-00001	2	jsk	pcs	jk	8	P-PGD GTG Warna-site	\N	\N
67	GTG-00001	1	Victoria State Nok Atas	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
68	GTG-00002	1	Victoria State Nok Bawah	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
69	GTG-00003	1	Victoria State Nok Samping	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
70	GTG-00004	1	Victoria State Nok Ujung	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
71	GTG-00005	1	Victoria State Nok Smp Ujung	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
72	GTG-00006	1	Victoria State Starter	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
73	GTG-00007	1	Victoria State Nok Apex	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
74	GTG-00008	1	Victoria State Nok Siku	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
75	GTG-00009	1	Victoria Multiline Nok Atas	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
76	GTG-00010	1	Victoria Multiline Nok Bawah	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
77	GTG-00011	1	Victoria Multiline Nok Samping	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
78	GTG-00012	1	Victoria Multiline Nok Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
79	GTG-00013	1	Victoria Multiline Nok Smp Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
80	GTG-00014	1	Victoria Multiline Starter	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
81	GTG-00015	1	Victoria Multiline Apex	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
82	GTG-00016	1	Victoria Multiline Nok Siku	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
83	GTG-00017	1	Victoria Pine Nok Atas	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
84	GTG-00018	1	Victoria Pine Nok Bawah	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
85	GTG-00019	1	Victoria Pine Nok Samping	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
86	GTG-00020	1	Victoria Pine Nok Ujung	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
87	GTG-00021	1	Victoria Pine Nok SmpUjung	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
88	GTG-00022	1	Victoria Pine Starter	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
89	GTG-00023	1	Victoria Pine Apex	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
90	GTG-00024	1	Victoria Pine Nok Siku	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
91	GTG-00025	1	Victoria Clssic Nok Atas	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
92	GTG-00026	1	Victoria Clssic Nok Bawah	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
93	GTG-00027	1	Victoria Clssic Nok Samping	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
94	GTG-00028	1	Victoria Clssic Nok Ujung	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
95	GTG-00029	1	Victoria Clssic Smp Ujung	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
96	GTG-00030	1	Victoria Clssic Starter	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
97	GTG-00031	1	Victoria Clssic Apex	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
98	GTG-00032	1	Victoria Clssic Nok SIku	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
99	GTG-00033	1	Floral Nok Atas	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
100	GTG-00034	1	Floral Nok Bawah	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
101	GTG-00035	1	Floral Nok Saming	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
102	GTG-00036	1	Floral Nok Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
103	GTG-00037	1	Floral Nok Smp Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
104	GTG-00038	1	Floral Starter	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
105	GTG-00039	1	Floral Apex	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
106	GTG-00040	1	Floral Nok Siku	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
107	GTG-00041	1	Dual Slate Nok Atas	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
108	GTG-00042	1	Dual Slate Nok Bawah	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
109	GTG-00043	1	Dual Slate Nok Samping	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
110	GTG-00044	1	Dual Slate Nok Ujung	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
111	GTG-00045	1	Dual Slate Nok Smp Ujung	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
112	GTG-00046	1	Dual Slate Starter	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
113	GTG-00047	1	Dual Slate Apex	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
114	GTG-00048	1	Dual Slate Nok Siku	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
115	GTG-00049	1	Excellent Nok Atas	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
116	GTG-00050	1	Excellent Nok Bawah	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
117	GTG-00051	1	Excellent Nok Samping	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
118	GTG-00052	1	Excellent Nok Ujung	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
119	GTG-00053	1	Excellent Nok Smp Ujung	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
120	GTG-00054	1	Excellent Starter	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
121	GTG-00055	1	Excellent Apex	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
122	GTG-00056	1	Excellent Nok Si	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
123	GTG-00057	1	Majectic Nok Atas	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
124	GTG-00058	1	Majectic Nok Bawah	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
125	GTG-00059	1	Majectic Nok Samping	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
126	GTG-00060	1	Majectic Nok Ujung	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
127	GTG-00061	1	Majectic Nok Smp Ujung	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
128	GTG-00062	1	Majectic Starter	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
129	GTG-00063	1	Majectic Apex	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
130	GTG-00064	1	Majectic Nok Siku	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
131	GTG-00065	1	Majetic Nok Atas	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
132	PB-00001	2	jsk	pcs	jk	8	P-PGD GTG Warna-site	\N	\N
133	GTG-00001	1	Victoria State Nok Atas	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
134	GTG-00002	1	Victoria State Nok Bawah	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
135	GTG-00003	1	Victoria State Nok Samping	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
136	GTG-00004	1	Victoria State Nok Ujung	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
137	GTG-00005	1	Victoria State Nok Smp Ujung	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
138	GTG-00006	1	Victoria State Starter	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
139	GTG-00007	1	Victoria State Nok Apex	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
140	GTG-00008	1	Victoria State Nok Siku	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
141	GTG-00009	1	Victoria Multiline Nok Atas	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
142	GTG-00010	1	Victoria Multiline Nok Bawah	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
143	GTG-00011	1	Victoria Multiline Nok Samping	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
144	GTG-00012	1	Victoria Multiline Nok Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
145	GTG-00013	1	Victoria Multiline Nok Smp Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
146	GTG-00014	1	Victoria Multiline Starter	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
147	GTG-00015	1	Victoria Multiline Apex	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
148	GTG-00016	1	Victoria Multiline Nok Siku	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
149	GTG-00017	1	Victoria Pine Nok Atas	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
150	GTG-00018	1	Victoria Pine Nok Bawah	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
151	GTG-00019	1	Victoria Pine Nok Samping	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
152	GTG-00020	1	Victoria Pine Nok Ujung	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
153	GTG-00021	1	Victoria Pine Nok SmpUjung	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
154	GTG-00022	1	Victoria Pine Starter	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
155	GTG-00023	1	Victoria Pine Apex	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
156	GTG-00024	1	Victoria Pine Nok Siku	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
157	GTG-00025	1	Victoria Clssic Nok Atas	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
158	GTG-00026	1	Victoria Clssic Nok Bawah	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
159	GTG-00027	1	Victoria Clssic Nok Samping	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
160	GTG-00028	1	Victoria Clssic Nok Ujung	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
161	GTG-00029	1	Victoria Clssic Smp Ujung	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
162	GTG-00030	1	Victoria Clssic Starter	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
163	GTG-00031	1	Victoria Clssic Apex	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
164	GTG-00032	1	Victoria Clssic Nok SIku	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
165	GTG-00033	1	Floral Nok Atas	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
166	GTG-00034	1	Floral Nok Bawah	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
167	GTG-00035	1	Floral Nok Saming	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
168	GTG-00036	1	Floral Nok Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
169	GTG-00037	1	Floral Nok Smp Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
170	GTG-00038	1	Floral Starter	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
171	GTG-00039	1	Floral Apex	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
172	GTG-00040	1	Floral Nok Siku	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
173	GTG-00041	1	Dual Slate Nok Atas	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
174	GTG-00042	1	Dual Slate Nok Bawah	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
175	GTG-00043	1	Dual Slate Nok Samping	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
176	GTG-00044	1	Dual Slate Nok Ujung	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
177	GTG-00045	1	Dual Slate Nok Smp Ujung	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
178	GTG-00046	1	Dual Slate Starter	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
179	GTG-00047	1	Dual Slate Apex	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
180	GTG-00048	1	Dual Slate Nok Siku	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
181	GTG-00049	1	Excellent Nok Atas	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
182	GTG-00050	1	Excellent Nok Bawah	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
183	GTG-00051	1	Excellent Nok Samping	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
184	GTG-00052	1	Excellent Nok Ujung	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
185	GTG-00053	1	Excellent Nok Smp Ujung	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
186	GTG-00054	1	Excellent Starter	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
187	GTG-00055	1	Excellent Apex	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
188	GTG-00056	1	Excellent Nok Si	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
189	GTG-00057	1	Majectic Nok Atas	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
190	GTG-00058	1	Majectic Nok Bawah	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
191	GTG-00059	1	Majectic Nok Samping	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
192	GTG-00060	1	Majectic Nok Ujung	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
193	GTG-00061	1	Majectic Nok Smp Ujung	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
194	GTG-00062	1	Majectic Starter	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
195	GTG-00063	1	Majectic Apex	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
196	GTG-00064	1	Majectic Nok Siku	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
197	GTG-00065	1	Majetic Nok Atas	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
198	PB-00001	2	jsk	pcs	jk	8	P-PGD GTG Warna-site	\N	\N
199	GTG-00001	1	Victoria State Nok Atas	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
200	GTG-00002	1	Victoria State Nok Bawah	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
201	GTG-00003	1	Victoria State Nok Samping	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
202	GTG-00004	1	Victoria State Nok Ujung	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
203	GTG-00005	1	Victoria State Nok Smp Ujung	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
204	GTG-00006	1	Victoria State Starter	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
205	GTG-00007	1	Victoria State Nok Apex	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
206	GTG-00008	1	Victoria State Nok Siku	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
207	GTG-00009	1	Victoria Multiline Nok Atas	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
208	GTG-00010	1	Victoria Multiline Nok Bawah	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
209	GTG-00011	1	Victoria Multiline Nok Samping	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
210	GTG-00012	1	Victoria Multiline Nok Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
211	GTG-00013	1	Victoria Multiline Nok Smp Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
212	GTG-00014	1	Victoria Multiline Starter	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
213	GTG-00015	1	Victoria Multiline Apex	pcs	Natural	4.75	P-PGD GTG Warna-site	\N	\N
214	GTG-00016	1	Victoria Multiline Nok Siku	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
215	GTG-00017	1	Victoria Pine Nok Atas	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
216	GTG-00018	1	Victoria Pine Nok Bawah	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
217	GTG-00019	1	Victoria Pine Nok Samping	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
218	GTG-00020	1	Victoria Pine Nok Ujung	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
219	GTG-00021	1	Victoria Pine Nok SmpUjung	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
220	GTG-00022	1	Victoria Pine Starter	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
221	GTG-00023	1	Victoria Pine Apex	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
222	GTG-00024	1	Victoria Pine Nok Siku	pcs	Natural	4.8	P-PGD GTG Warna-site	\N	\N
223	GTG-00025	1	Victoria Clssic Nok Atas	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
224	GTG-00026	1	Victoria Clssic Nok Bawah	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
225	GTG-00027	1	Victoria Clssic Nok Samping	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
226	GTG-00028	1	Victoria Clssic Nok Ujung	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
227	GTG-00029	1	Victoria Clssic Smp Ujung	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
228	GTG-00030	1	Victoria Clssic Starter	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
229	GTG-00031	1	Victoria Clssic Apex	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
230	GTG-00032	1	Victoria Clssic Nok SIku	pcs	Natural	4.85	P-PGD GTG Warna-site	\N	\N
231	GTG-00033	1	Floral Nok Atas	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
232	GTG-00034	1	Floral Nok Bawah	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
233	GTG-00035	1	Floral Nok Saming	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
234	GTG-00036	1	Floral Nok Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
235	GTG-00037	1	Floral Nok Smp Ujung	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
236	GTG-00038	1	Floral Starter	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
237	GTG-00039	1	Floral Apex	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
238	GTG-00040	1	Floral Nok Siku	pcs	Natural	4.9	P-PGD GTG Warna-site	\N	\N
239	GTG-00041	1	Dual Slate Nok Atas	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
240	GTG-00042	1	Dual Slate Nok Bawah	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
241	GTG-00043	1	Dual Slate Nok Samping	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
242	GTG-00044	1	Dual Slate Nok Ujung	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
243	GTG-00045	1	Dual Slate Nok Smp Ujung	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
244	GTG-00046	1	Dual Slate Starter	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
245	GTG-00047	1	Dual Slate Apex	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
246	GTG-00048	1	Dual Slate Nok Siku	pcs	Natural	5.1	P-PGD GTG Warna-site	\N	\N
247	GTG-00049	1	Excellent Nok Atas	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
248	GTG-00050	1	Excellent Nok Bawah	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
249	GTG-00051	1	Excellent Nok Samping	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
250	GTG-00052	1	Excellent Nok Ujung	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
251	GTG-00053	1	Excellent Nok Smp Ujung	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
252	GTG-00054	1	Excellent Starter	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
253	GTG-00055	1	Excellent Apex	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
254	GTG-00056	1	Excellent Nok Si	pcs	Natural	4.3	P-PGD GTG Warna-site	\N	\N
255	GTG-00057	1	Majectic Nok Atas	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
256	GTG-00058	1	Majectic Nok Bawah	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
257	GTG-00059	1	Majectic Nok Samping	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
258	GTG-00060	1	Majectic Nok Ujung	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
259	GTG-00061	1	Majectic Nok Smp Ujung	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
260	GTG-00062	1	Majectic Starter	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
261	GTG-00063	1	Majectic Apex	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
262	GTG-00064	1	Majectic Nok Siku	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
263	GTG-00065	1	Majetic Nok Atas	pcs	Natural	4.45	P-PGD GTG Warna-site	\N	\N
264	PB-00001	2	jsk	pcs	jk	8	P-PGD GTG Warna-site	\N	\N
\.


--
-- Name: barangs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: psibmearvpmdll
--

SELECT pg_catalog.setval('"barangs_id_seq"', 264, true);


--
-- Data for Name: cat_bloks; Type: TABLE DATA; Schema: public; Owner: psibmearvpmdll
--

COPY "cat_bloks" ("id", "cetak_blok_id", "hasil", "rusak", "keterangan", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: cat_bloks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: psibmearvpmdll
--

SELECT pg_catalog.setval('"cat_bloks_id_seq"', 1, false);


--
-- Data for Name: cat_gtgs; Type: TABLE DATA; Schema: public; Owner: psibmearvpmdll
--

COPY "cat_gtgs" ("id", "gosok_id", "hasil", "rusak", "keterangan", "created_at", "updated_at") FROM stdin;
1	1	874	0		2017-08-21 01:55:02.325756	2017-08-21 01:55:02.325756
2	2	2300	0		2017-08-21 01:55:39.892713	2017-08-21 01:55:39.892713
3	3	964	0		2017-08-21 05:07:15.562561	2017-08-21 05:07:15.562561
4	4	683	0		2017-08-21 05:07:33.923691	2017-08-21 05:07:33.923691
5	5	899	0		2017-08-21 05:17:26.289886	2017-08-21 05:17:26.289886
6	6	693	0		2017-08-21 05:18:12.104865	2017-08-21 05:18:12.104865
7	7	19	0		2017-08-21 05:19:08.63722	2017-08-21 05:19:08.63722
8	8	867	0		2017-08-21 05:19:37.837699	2017-08-21 05:19:37.837699
9	9	50	0		2017-08-21 15:16:38.696516	2017-08-21 15:16:38.696516
10	11	1200	0	-	2017-08-24 07:19:02.249948	2017-08-24 07:19:02.249948
\.


--
-- Name: cat_gtgs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: psibmearvpmdll
--

SELECT pg_catalog.setval('"cat_gtgs_id_seq"', 10, true);


--
-- Data for Name: cetak_bloks; Type: TABLE DATA; Schema: public; Owner: psibmearvpmdll
--

COPY "cetak_bloks" ("id", "ip_id", "hasil", "rusak", "keterangan", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: cetak_bloks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: psibmearvpmdll
--

SELECT pg_catalog.setval('"cetak_bloks_id_seq"', 1, false);


--
-- Data for Name: cetak_gtgs; Type: TABLE DATA; Schema: public; Owner: psibmearvpmdll
--

COPY "cetak_gtgs" ("id", "ip_id", "hasil", "rusak", "keterangan", "created_at", "updated_at") FROM stdin;
3	171	874	0		2017-08-21 01:21:30.31608	2017-08-21 01:28:12.773716
4	181	2400	100		2017-08-21 01:33:37.105676	2017-08-21 01:38:18.528962
5	91	964	0		2017-08-21 03:41:45.370058	2017-08-21 03:41:45.370058
6	92	683	0		2017-08-21 03:42:13.770714	2017-08-21 03:42:13.770714
7	121	899	0		2017-08-21 03:42:58.406187	2017-08-21 03:42:58.406187
8	122	693	0		2017-08-21 03:43:25.096202	2017-08-21 03:43:25.096202
9	151	19	0		2017-08-21 03:43:59.368415	2017-08-21 03:43:59.368415
10	123	867	0		2017-08-21 03:52:49.146772	2017-08-21 03:52:49.146772
11	182	50	0		2017-08-21 15:11:49.13271	2017-08-21 15:11:49.13271
12	184	100	0		2017-08-24 00:14:41.603935	2017-08-24 00:14:41.603935
13	185	1200	0	-	2017-08-24 07:06:30.467299	2017-08-24 07:06:30.467299
\.


--
-- Name: cetak_gtgs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: psibmearvpmdll
--

SELECT pg_catalog.setval('"cetak_gtgs_id_seq"', 13, true);


--
-- Data for Name: gosoks; Type: TABLE DATA; Schema: public; Owner: psibmearvpmdll
--

COPY "gosoks" ("id", "rendam_id", "date", "hasil", "rusak", "keterangan", "created_at", "updated_at") FROM stdin;
1	1	\N	874	0		2017-08-21 01:53:46.473347	2017-08-21 01:53:46.473347
2	2	\N	2300	100	pecah	2017-08-21 01:54:28.947252	2017-08-21 01:54:28.947252
3	3	\N	964	0		2017-08-21 03:51:46.837048	2017-08-21 03:51:46.837048
4	4	\N	683	0		2017-08-21 05:06:28.614881	2017-08-21 05:06:28.614881
5	5	\N	899	0		2017-08-21 05:14:20.050843	2017-08-21 05:14:20.050843
6	6	\N	693	0		2017-08-21 05:14:48.623838	2017-08-21 05:14:48.623838
7	7	\N	19	0		2017-08-21 05:15:23.628541	2017-08-21 05:15:23.628541
8	8	\N	867	0		2017-08-21 05:15:46.527877	2017-08-21 05:15:46.527877
9	9	\N	50	0		2017-08-21 15:15:47.100185	2017-08-21 15:15:47.100185
10	10	\N	100	0		2017-08-24 00:28:33.451855	2017-08-24 00:28:33.451855
11	11	\N	1200	0	-	2017-08-24 07:14:19.334105	2017-08-24 07:14:19.334105
\.


--
-- Name: gosoks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: psibmearvpmdll
--

SELECT pg_catalog.setval('"gosoks_id_seq"', 11, true);


--
-- Data for Name: hps; Type: TABLE DATA; Schema: public; Owner: psibmearvpmdll
--

COPY "hps" ("id", "created_at", "updated_at", "cat_blok_id", "cat_gtg_id", "ip_id") FROM stdin;
1	2017-08-21 00:49:59.32977	2017-08-21 00:49:59.32977	\N	\N	1
2	2017-08-21 00:49:59.414872	2017-08-21 00:49:59.414872	\N	\N	2
3	2017-08-21 00:49:59.474565	2017-08-21 00:49:59.474565	\N	\N	3
4	2017-08-21 00:49:59.585446	2017-08-21 00:49:59.585446	\N	\N	4
5	2017-08-21 00:49:59.694845	2017-08-21 00:49:59.694845	\N	\N	5
6	2017-08-21 00:49:59.792843	2017-08-21 00:49:59.792843	\N	\N	6
7	2017-08-21 00:49:59.869177	2017-08-21 00:49:59.869177	\N	\N	7
8	2017-08-21 00:49:59.934519	2017-08-21 00:49:59.934519	\N	\N	8
9	2017-08-21 00:49:59.980548	2017-08-21 00:49:59.980548	\N	\N	9
10	2017-08-21 00:50:00.044852	2017-08-21 00:50:00.044852	\N	\N	10
11	2017-08-21 00:50:00.134807	2017-08-21 00:50:00.134807	\N	\N	11
12	2017-08-21 00:50:00.201348	2017-08-21 00:50:00.201348	\N	\N	12
13	2017-08-21 00:50:00.285397	2017-08-21 00:50:00.285397	\N	\N	13
14	2017-08-21 00:50:00.38272	2017-08-21 00:50:00.38272	\N	\N	14
15	2017-08-21 00:50:00.438105	2017-08-21 00:50:00.438105	\N	\N	15
16	2017-08-21 00:50:00.493843	2017-08-21 00:50:00.493843	\N	\N	16
17	2017-08-21 00:50:00.543889	2017-08-21 00:50:00.543889	\N	\N	17
18	2017-08-21 00:50:00.597071	2017-08-21 00:50:00.597071	\N	\N	18
19	2017-08-21 00:50:00.679412	2017-08-21 00:50:00.679412	\N	\N	19
20	2017-08-21 00:50:00.7627	2017-08-21 00:50:00.7627	\N	\N	20
21	2017-08-21 00:50:00.824175	2017-08-21 00:50:00.824175	\N	\N	21
22	2017-08-21 00:50:00.886381	2017-08-21 00:50:00.886381	\N	\N	22
23	2017-08-21 00:50:00.943952	2017-08-21 00:50:00.943952	\N	\N	23
24	2017-08-21 00:50:00.9962	2017-08-21 00:50:00.9962	\N	\N	24
25	2017-08-21 00:50:01.118224	2017-08-21 00:50:01.118224	\N	\N	25
26	2017-08-21 00:50:01.210777	2017-08-21 00:50:01.210777	\N	\N	26
27	2017-08-21 00:50:01.29689	2017-08-21 00:50:01.29689	\N	\N	27
28	2017-08-21 00:50:01.35324	2017-08-21 00:50:01.35324	\N	\N	28
29	2017-08-21 00:50:01.439563	2017-08-21 00:50:01.439563	\N	\N	29
30	2017-08-21 00:50:01.506103	2017-08-21 00:50:01.506103	\N	\N	30
31	2017-08-21 00:50:01.553854	2017-08-21 00:50:01.553854	\N	\N	31
32	2017-08-21 00:50:01.651106	2017-08-21 00:50:01.651106	\N	\N	32
33	2017-08-21 00:50:01.7483	2017-08-21 00:50:01.7483	\N	\N	33
34	2017-08-21 00:50:01.799555	2017-08-21 00:50:01.799555	\N	\N	34
35	2017-08-21 00:50:01.871036	2017-08-21 00:50:01.871036	\N	\N	35
36	2017-08-21 00:50:01.957595	2017-08-21 00:50:01.957595	\N	\N	36
37	2017-08-21 00:50:02.036929	2017-08-21 00:50:02.036929	\N	\N	37
38	2017-08-21 00:50:02.106501	2017-08-21 00:50:02.106501	\N	\N	38
39	2017-08-21 00:50:02.16453	2017-08-21 00:50:02.16453	\N	\N	39
40	2017-08-21 00:50:02.223651	2017-08-21 00:50:02.223651	\N	\N	40
41	2017-08-21 00:50:02.279431	2017-08-21 00:50:02.279431	\N	\N	41
42	2017-08-21 00:50:02.333377	2017-08-21 00:50:02.333377	\N	\N	42
43	2017-08-21 00:50:02.400594	2017-08-21 00:50:02.400594	\N	\N	43
44	2017-08-21 00:50:02.467274	2017-08-21 00:50:02.467274	\N	\N	44
45	2017-08-21 00:50:02.531272	2017-08-21 00:50:02.531272	\N	\N	45
46	2017-08-21 00:50:02.576483	2017-08-21 00:50:02.576483	\N	\N	46
47	2017-08-21 00:50:02.640015	2017-08-21 00:50:02.640015	\N	\N	47
48	2017-08-21 00:50:02.691719	2017-08-21 00:50:02.691719	\N	\N	48
49	2017-08-21 00:50:02.751184	2017-08-21 00:50:02.751184	\N	\N	49
50	2017-08-21 00:50:02.79297	2017-08-21 00:50:02.79297	\N	\N	50
51	2017-08-21 00:50:02.862014	2017-08-21 00:50:02.862014	\N	\N	51
52	2017-08-21 00:50:02.918998	2017-08-21 00:50:02.918998	\N	\N	52
53	2017-08-21 00:50:02.972337	2017-08-21 00:50:02.972337	\N	\N	53
54	2017-08-21 00:50:03.026857	2017-08-21 00:50:03.026857	\N	\N	54
55	2017-08-21 00:50:03.073706	2017-08-21 00:50:03.073706	\N	\N	55
56	2017-08-21 00:50:03.120739	2017-08-21 00:50:03.120739	\N	\N	56
57	2017-08-21 00:50:03.171143	2017-08-21 00:50:03.171143	\N	\N	57
58	2017-08-21 00:50:03.226503	2017-08-21 00:50:03.226503	\N	\N	58
59	2017-08-21 00:50:03.3043	2017-08-21 00:50:03.3043	\N	\N	59
60	2017-08-21 00:50:03.34705	2017-08-21 00:50:03.34705	\N	\N	60
61	2017-08-21 00:50:03.388363	2017-08-21 00:50:03.388363	\N	\N	61
62	2017-08-21 00:50:03.439626	2017-08-21 00:50:03.439626	\N	\N	62
63	2017-08-21 00:50:03.481341	2017-08-21 00:50:03.481341	\N	\N	63
64	2017-08-21 00:50:03.5181	2017-08-21 00:50:03.5181	\N	\N	64
65	2017-08-21 00:50:03.561892	2017-08-21 00:50:03.561892	\N	\N	65
66	2017-08-21 00:50:03.631046	2017-08-21 00:50:03.631046	\N	\N	66
67	2017-08-21 00:50:03.694533	2017-08-21 00:50:03.694533	\N	\N	67
68	2017-08-21 00:50:03.749988	2017-08-21 00:50:03.749988	\N	\N	68
69	2017-08-21 00:50:03.799064	2017-08-21 00:50:03.799064	\N	\N	69
70	2017-08-21 00:50:03.85981	2017-08-21 00:50:03.85981	\N	\N	70
71	2017-08-21 00:50:03.914365	2017-08-21 00:50:03.914365	\N	\N	71
72	2017-08-21 00:50:03.961854	2017-08-21 00:50:03.961854	\N	\N	72
73	2017-08-21 00:50:04.007351	2017-08-21 00:50:04.007351	\N	\N	73
74	2017-08-21 00:50:04.057353	2017-08-21 00:50:04.057353	\N	\N	74
75	2017-08-21 00:50:04.101705	2017-08-21 00:50:04.101705	\N	\N	75
76	2017-08-21 00:50:04.178371	2017-08-21 00:50:04.178371	\N	\N	76
77	2017-08-21 00:50:04.241072	2017-08-21 00:50:04.241072	\N	\N	77
78	2017-08-21 00:50:04.289529	2017-08-21 00:50:04.289529	\N	\N	78
79	2017-08-21 00:50:04.325339	2017-08-21 00:50:04.325339	\N	\N	79
80	2017-08-21 00:50:04.373186	2017-08-21 00:50:04.373186	\N	\N	80
81	2017-08-21 00:50:04.439182	2017-08-21 00:50:04.439182	\N	\N	81
82	2017-08-21 00:50:04.496525	2017-08-21 00:50:04.496525	\N	\N	82
83	2017-08-21 00:50:04.551213	2017-08-21 00:50:04.551213	\N	\N	83
84	2017-08-21 00:50:04.601362	2017-08-21 00:50:04.601362	\N	\N	84
85	2017-08-21 00:50:04.652811	2017-08-21 00:50:04.652811	\N	\N	85
86	2017-08-21 00:50:04.702861	2017-08-21 00:50:04.702861	\N	\N	86
87	2017-08-21 00:50:04.747415	2017-08-21 00:50:04.747415	\N	\N	87
88	2017-08-21 00:50:04.811612	2017-08-21 00:50:04.811612	\N	\N	88
89	2017-08-21 00:50:04.879069	2017-08-21 00:50:04.879069	\N	\N	89
90	2017-08-21 00:50:04.948159	2017-08-21 00:50:04.948159	\N	\N	90
121	2017-07-01 00:00:00	2017-08-21 05:17:26.304304	\N	5	121
93	2017-06-03 00:00:00	2017-08-21 02:40:50.302669	\N	\N	93
95	2017-06-05 00:00:00	2017-08-21 02:40:50.446971	\N	\N	95
96	2017-06-06 00:00:00	2017-08-21 02:40:50.491243	\N	\N	96
97	2017-06-07 00:00:00	2017-08-21 02:40:50.533526	\N	\N	97
98	2017-06-08 00:00:00	2017-08-21 02:40:50.578651	\N	\N	98
99	2017-06-09 00:00:00	2017-08-21 02:40:50.614674	\N	\N	99
100	2017-06-10 00:00:00	2017-08-21 02:40:50.662778	\N	\N	100
101	2017-06-11 00:00:00	2017-08-21 02:40:50.734654	\N	\N	101
102	2017-06-12 00:00:00	2017-08-21 02:40:50.791301	\N	\N	102
103	2017-06-13 00:00:00	2017-08-21 02:40:50.882715	\N	\N	103
104	2017-06-14 00:00:00	2017-08-21 02:40:50.935049	\N	\N	104
105	2017-06-15 00:00:00	2017-08-21 02:40:50.981766	\N	\N	105
106	2017-06-16 00:00:00	2017-08-21 02:40:51.027084	\N	\N	106
107	2017-06-17 00:00:00	2017-08-21 02:40:51.091343	\N	\N	107
108	2017-06-18 00:00:00	2017-08-21 02:40:51.186543	\N	\N	108
110	2017-06-20 00:00:00	2017-08-21 02:40:51.335465	\N	\N	110
111	2017-06-21 00:00:00	2017-08-21 02:40:51.402969	\N	\N	111
112	2017-06-22 00:00:00	2017-08-21 02:40:51.462706	\N	\N	112
113	2017-06-23 00:00:00	2017-08-21 02:40:51.523119	\N	\N	113
114	2017-06-24 00:00:00	2017-08-21 02:40:51.621973	\N	\N	114
115	2017-06-25 00:00:00	2017-08-21 02:40:51.674818	\N	\N	115
116	2017-06-26 00:00:00	2017-08-21 02:40:51.761067	\N	\N	116
117	2017-06-27 00:00:00	2017-08-21 02:40:51.840821	\N	\N	117
118	2017-06-28 00:00:00	2017-08-21 02:40:51.889512	\N	\N	118
119	2017-06-29 00:00:00	2017-08-21 02:40:51.919306	\N	\N	119
120	2017-06-30 00:00:00	2017-08-21 02:40:51.959034	\N	\N	120
122	2017-07-02 00:00:00	2017-08-21 05:18:12.119497	\N	6	122
125	2017-07-05 00:00:00	2017-08-21 02:40:52.334847	\N	\N	125
126	2017-07-06 00:00:00	2017-08-21 02:40:52.419916	\N	\N	126
127	2017-07-07 00:00:00	2017-08-21 02:40:52.518061	\N	\N	127
128	2017-07-08 00:00:00	2017-08-21 02:40:52.735635	\N	\N	128
129	2017-07-09 00:00:00	2017-08-21 02:40:52.948198	\N	\N	129
130	2017-07-10 00:00:00	2017-08-21 02:40:53.079155	\N	\N	130
131	2017-07-11 00:00:00	2017-08-21 02:40:53.211691	\N	\N	131
132	2017-07-12 00:00:00	2017-08-21 02:40:53.327524	\N	\N	132
133	2017-07-13 00:00:00	2017-08-21 02:40:53.382739	\N	\N	133
134	2017-07-14 00:00:00	2017-08-21 02:40:53.404788	\N	\N	134
135	2017-07-15 00:00:00	2017-08-21 02:40:53.430634	\N	\N	135
136	2017-07-16 00:00:00	2017-08-21 02:40:53.461146	\N	\N	136
92	2017-06-02 00:00:00	2017-08-21 05:07:33.936716	\N	4	92
94	2017-06-04 00:00:00	2017-08-21 02:40:50.391743	\N	\N	94
109	2017-06-19 00:00:00	2017-08-21 02:40:51.25479	\N	\N	109
124	2017-07-04 00:00:00	2017-08-21 02:40:52.285316	\N	\N	124
137	2017-07-17 00:00:00	2017-08-21 02:40:53.500957	\N	\N	137
138	2017-07-18 00:00:00	2017-08-21 02:40:53.596686	\N	\N	138
139	2017-07-19 00:00:00	2017-08-21 02:40:53.661333	\N	\N	139
140	2017-07-20 00:00:00	2017-08-21 02:40:53.70704	\N	\N	140
141	2017-07-21 00:00:00	2017-08-21 02:40:53.779969	\N	\N	141
142	2017-07-22 00:00:00	2017-08-21 02:40:53.829018	\N	\N	142
143	2017-07-23 00:00:00	2017-08-21 02:40:53.844141	\N	\N	143
144	2017-07-24 00:00:00	2017-08-21 02:40:53.858491	\N	\N	144
145	2017-07-25 00:00:00	2017-08-21 02:40:53.898802	\N	\N	145
146	2017-07-26 00:00:00	2017-08-21 02:40:53.94708	\N	\N	146
147	2017-07-27 00:00:00	2017-08-21 02:40:54.003454	\N	\N	147
148	2017-07-28 00:00:00	2017-08-21 02:40:54.044204	\N	\N	148
149	2017-07-29 00:00:00	2017-08-21 02:40:54.120539	\N	\N	149
150	2017-07-30 00:00:00	2017-08-21 02:40:54.182716	\N	\N	150
152	2017-08-02 00:00:00	2017-08-21 02:40:54.304662	\N	\N	152
153	2017-08-03 00:00:00	2017-08-21 02:40:54.316956	\N	\N	153
154	2017-08-04 00:00:00	2017-08-21 02:40:54.36702	\N	\N	154
155	2017-08-05 00:00:00	2017-08-21 02:40:54.414624	\N	\N	155
156	2017-08-06 00:00:00	2017-08-21 02:40:54.44896	\N	\N	156
157	2017-08-07 00:00:00	2017-08-21 02:40:54.517477	\N	\N	157
158	2017-08-08 00:00:00	2017-08-21 02:40:54.58065	\N	\N	158
159	2017-08-09 00:00:00	2017-08-21 02:40:54.612904	\N	\N	159
160	2017-08-10 00:00:00	2017-08-21 02:40:54.633434	\N	\N	160
161	2017-08-11 00:00:00	2017-08-21 02:40:54.655776	\N	\N	161
162	2017-08-12 00:00:00	2017-08-21 02:40:54.691194	\N	\N	162
163	2017-08-13 00:00:00	2017-08-21 02:40:54.715126	\N	\N	163
164	2017-08-14 00:00:00	2017-08-21 02:40:54.746867	\N	\N	164
165	2017-08-15 00:00:00	2017-08-21 02:40:54.78671	\N	\N	165
166	2017-08-16 00:00:00	2017-08-21 02:40:54.815425	\N	\N	166
167	2017-08-17 00:00:00	2017-08-21 02:40:54.871445	\N	\N	167
168	2017-08-18 00:00:00	2017-08-21 02:40:54.915468	\N	\N	168
169	2017-08-19 00:00:00	2017-08-21 02:40:54.954579	\N	\N	169
170	2017-08-20 00:00:00	2017-08-21 02:40:54.990293	\N	\N	170
172	2017-08-22 00:00:00	2017-08-21 02:40:55.023039	\N	\N	172
173	2017-08-23 00:00:00	2017-08-21 02:40:55.070758	\N	\N	173
174	2017-08-24 00:00:00	2017-08-21 02:40:55.097931	\N	\N	174
175	2017-08-25 00:00:00	2017-08-21 02:40:55.128397	\N	\N	175
176	2017-08-26 00:00:00	2017-08-21 02:40:55.165555	\N	\N	176
177	2017-08-27 00:00:00	2017-08-21 02:40:55.180965	\N	\N	177
178	2017-08-28 00:00:00	2017-08-21 02:40:55.211467	\N	\N	178
179	2017-08-29 00:00:00	2017-08-21 02:40:55.251058	\N	\N	179
180	2017-08-30 00:00:00	2017-08-21 02:40:55.266648	\N	\N	180
171	2017-08-21 00:00:00	2017-08-21 02:40:55.320419	\N	1	171
181	2017-08-21 00:00:00	2017-08-21 02:40:55.36665	\N	2	181
91	2017-06-01 00:00:00	2017-08-21 05:07:15.595635	\N	3	91
151	2017-08-01 00:00:00	2017-08-21 05:19:08.65045	\N	7	151
123	2017-07-03 00:00:00	2017-08-21 05:19:37.850109	\N	8	123
182	2017-08-21 00:00:00	2017-08-21 15:16:38.714059	\N	9	182
183	2017-06-03 00:00:00	2017-08-22 18:44:45.175923	\N	\N	183
184	2017-08-23 00:00:00	2017-08-22 23:08:40.052475	\N	\N	184
185	2017-08-22 00:00:00	2017-08-24 07:19:02.273757	\N	10	185
\.


--
-- Name: hps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: psibmearvpmdll
--

SELECT pg_catalog.setval('"hps_id_seq"', 185, true);


--
-- Data for Name: ips; Type: TABLE DATA; Schema: public; Owner: psibmearvpmdll
--

COPY "ips" ("id", "created_at", "updated_at", "pb_id") FROM stdin;
181	2017-08-21 01:32:09.476892	2017-08-21 01:32:09.476892	181
182	2017-08-21 15:11:07.56761	2017-08-21 15:11:07.56761	182
183	2017-08-22 18:44:45.074664	2017-08-22 18:44:45.074664	93
184	2017-08-22 23:08:40.033196	2017-08-22 23:08:40.033196	184
185	2017-08-24 07:04:43.091095	2017-08-24 07:04:43.091095	183
91	2017-08-21 01:06:19.819291	2017-08-21 01:06:19.819291	91
92	2017-08-21 01:06:19.902063	2017-08-21 01:06:19.902063	92
121	2017-08-21 01:06:21.890867	2017-08-21 01:06:21.890867	121
122	2017-08-21 01:06:21.967374	2017-08-21 01:06:21.967374	122
123	2017-08-21 01:06:22.047002	2017-08-21 01:06:22.047002	123
151	2017-08-21 01:06:24.998641	2017-08-21 01:06:24.998641	151
171	2017-08-21 01:06:27.042219	2017-08-21 01:06:27.042219	171
\.


--
-- Name: ips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: psibmearvpmdll
--

SELECT pg_catalog.setval('"ips_id_seq"', 185, true);


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: psibmearvpmdll
--

COPY "notifications" ("id", "cat_blok_count", "cat_gtg_count", "gosok_count", "hp_count", "ip_gtg_count", "ip_blok_count", "pb_count", "rendam_count", "rp_count", "konfirmasi_count", "cetak_gtg_count", "created_at", "updated_at", "cetak_blok_count") FROM stdin;
4	0	0	0	95	0	5	0	0	0	0	0	2017-08-21 01:06:17.725355	2017-08-24 07:23:23.478407	0
\.


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: psibmearvpmdll
--

SELECT pg_catalog.setval('"notifications_id_seq"', 4, true);


--
-- Data for Name: pbs; Type: TABLE DATA; Schema: public; Owner: psibmearvpmdll
--

COPY "pbs" ("id", "rp_id", "status", "created_at", "updated_at") FROM stdin;
181	361	Konfirmasi	2017-08-21 01:31:14.000553	2017-08-21 01:31:40.260771
182	362	Konfirmasi	2017-08-21 15:09:01.773068	2017-08-21 15:10:05.845342
184	364	Konfirmasi	2017-08-22 23:07:32.913761	2017-08-22 23:08:02.085385
185	365	Belum Konfirmasi	2017-08-24 00:10:45.308294	2017-08-24 00:10:45.308294
183	363	Konfirmasi	2017-08-22 00:39:40.266972	2017-08-24 00:12:10.895217
186	366	Belum Konfirmasi	2017-08-24 06:56:27.798318	2017-08-24 06:56:27.798318
91	271	Konfirmasi	2017-08-21 01:06:19.795477	2017-08-21 01:06:19.795477
92	272	Konfirmasi	2017-08-21 01:06:19.881801	2017-08-21 01:06:19.881801
93	273	Konfirmasi	2017-08-21 01:06:19.96518	2017-08-21 01:06:19.96518
94	274	Konfirmasi	2017-08-21 01:06:20.100656	2017-08-21 01:06:20.100656
95	275	Konfirmasi	2017-08-21 01:06:20.191153	2017-08-21 01:06:20.191153
96	276	Konfirmasi	2017-08-21 01:06:20.236611	2017-08-21 01:06:20.236611
97	277	Konfirmasi	2017-08-21 01:06:20.283503	2017-08-21 01:06:20.283503
98	278	Konfirmasi	2017-08-21 01:06:20.33874	2017-08-21 01:06:20.33874
99	279	Konfirmasi	2017-08-21 01:06:20.391064	2017-08-21 01:06:20.391064
100	280	Konfirmasi	2017-08-21 01:06:20.443919	2017-08-21 01:06:20.443919
101	281	Konfirmasi	2017-08-21 01:06:20.500824	2017-08-21 01:06:20.500824
102	282	Konfirmasi	2017-08-21 01:06:20.544538	2017-08-21 01:06:20.544538
103	283	Konfirmasi	2017-08-21 01:06:20.598557	2017-08-21 01:06:20.598557
104	284	Konfirmasi	2017-08-21 01:06:20.650451	2017-08-21 01:06:20.650451
105	285	Konfirmasi	2017-08-21 01:06:20.713414	2017-08-21 01:06:20.713414
106	286	Konfirmasi	2017-08-21 01:06:20.789157	2017-08-21 01:06:20.789157
107	287	Konfirmasi	2017-08-21 01:06:20.845906	2017-08-21 01:06:20.845906
108	288	Konfirmasi	2017-08-21 01:06:20.914425	2017-08-21 01:06:20.914425
109	289	Konfirmasi	2017-08-21 01:06:20.975639	2017-08-21 01:06:20.975639
110	290	Konfirmasi	2017-08-21 01:06:21.03634	2017-08-21 01:06:21.03634
111	291	Konfirmasi	2017-08-21 01:06:21.096542	2017-08-21 01:06:21.096542
112	292	Konfirmasi	2017-08-21 01:06:21.162952	2017-08-21 01:06:21.162952
113	293	Konfirmasi	2017-08-21 01:06:21.312478	2017-08-21 01:06:21.312478
114	294	Konfirmasi	2017-08-21 01:06:21.405998	2017-08-21 01:06:21.405998
115	295	Konfirmasi	2017-08-21 01:06:21.508321	2017-08-21 01:06:21.508321
116	296	Konfirmasi	2017-08-21 01:06:21.553121	2017-08-21 01:06:21.553121
117	297	Konfirmasi	2017-08-21 01:06:21.614587	2017-08-21 01:06:21.614587
118	298	Konfirmasi	2017-08-21 01:06:21.671224	2017-08-21 01:06:21.671224
119	299	Konfirmasi	2017-08-21 01:06:21.731644	2017-08-21 01:06:21.731644
120	300	Konfirmasi	2017-08-21 01:06:21.802445	2017-08-21 01:06:21.802445
121	301	Konfirmasi	2017-08-21 01:06:21.870482	2017-08-21 01:06:21.870482
122	302	Konfirmasi	2017-08-21 01:06:21.941195	2017-08-21 01:06:21.941195
123	303	Konfirmasi	2017-08-21 01:06:22.029004	2017-08-21 01:06:22.029004
124	304	Konfirmasi	2017-08-21 01:06:22.087202	2017-08-21 01:06:22.087202
125	305	Konfirmasi	2017-08-21 01:06:22.151575	2017-08-21 01:06:22.151575
126	306	Konfirmasi	2017-08-21 01:06:22.215814	2017-08-21 01:06:22.215814
127	307	Konfirmasi	2017-08-21 01:06:22.272994	2017-08-21 01:06:22.272994
128	308	Konfirmasi	2017-08-21 01:06:22.328522	2017-08-21 01:06:22.328522
129	309	Konfirmasi	2017-08-21 01:06:22.397392	2017-08-21 01:06:22.397392
130	310	Konfirmasi	2017-08-21 01:06:22.526361	2017-08-21 01:06:22.526361
131	311	Konfirmasi	2017-08-21 01:06:22.710367	2017-08-21 01:06:22.710367
132	312	Konfirmasi	2017-08-21 01:06:22.801264	2017-08-21 01:06:22.801264
133	313	Konfirmasi	2017-08-21 01:06:22.89963	2017-08-21 01:06:22.89963
134	314	Konfirmasi	2017-08-21 01:06:23.149188	2017-08-21 01:06:23.149188
135	315	Konfirmasi	2017-08-21 01:06:23.249805	2017-08-21 01:06:23.249805
136	316	Konfirmasi	2017-08-21 01:06:23.304532	2017-08-21 01:06:23.304532
137	317	Konfirmasi	2017-08-21 01:06:23.414663	2017-08-21 01:06:23.414663
138	318	Konfirmasi	2017-08-21 01:06:23.495319	2017-08-21 01:06:23.495319
139	319	Konfirmasi	2017-08-21 01:06:23.555524	2017-08-21 01:06:23.555524
140	320	Konfirmasi	2017-08-21 01:06:23.599784	2017-08-21 01:06:23.599784
141	321	Konfirmasi	2017-08-21 01:06:23.649395	2017-08-21 01:06:23.649395
142	322	Konfirmasi	2017-08-21 01:06:23.765729	2017-08-21 01:06:23.765729
143	323	Konfirmasi	2017-08-21 01:06:23.911201	2017-08-21 01:06:23.911201
144	324	Konfirmasi	2017-08-21 01:06:24.051701	2017-08-21 01:06:24.051701
145	325	Konfirmasi	2017-08-21 01:06:24.158489	2017-08-21 01:06:24.158489
146	326	Konfirmasi	2017-08-21 01:06:24.285242	2017-08-21 01:06:24.285242
147	327	Konfirmasi	2017-08-21 01:06:24.44579	2017-08-21 01:06:24.44579
148	328	Konfirmasi	2017-08-21 01:06:24.628725	2017-08-21 01:06:24.628725
149	329	Konfirmasi	2017-08-21 01:06:24.82929	2017-08-21 01:06:24.82929
150	330	Konfirmasi	2017-08-21 01:06:24.897907	2017-08-21 01:06:24.897907
151	331	Konfirmasi	2017-08-21 01:06:24.980688	2017-08-21 01:06:24.980688
152	332	Konfirmasi	2017-08-21 01:06:25.112327	2017-08-21 01:06:25.112327
153	333	Konfirmasi	2017-08-21 01:06:25.222786	2017-08-21 01:06:25.222786
154	334	Konfirmasi	2017-08-21 01:06:25.287329	2017-08-21 01:06:25.287329
155	335	Konfirmasi	2017-08-21 01:06:25.358212	2017-08-21 01:06:25.358212
156	336	Konfirmasi	2017-08-21 01:06:25.400261	2017-08-21 01:06:25.400261
157	337	Konfirmasi	2017-08-21 01:06:25.4856	2017-08-21 01:06:25.4856
158	338	Konfirmasi	2017-08-21 01:06:25.603796	2017-08-21 01:06:25.603796
159	339	Konfirmasi	2017-08-21 01:06:25.859166	2017-08-21 01:06:25.859166
160	340	Konfirmasi	2017-08-21 01:06:25.982432	2017-08-21 01:06:25.982432
161	341	Konfirmasi	2017-08-21 01:06:26.194464	2017-08-21 01:06:26.194464
162	342	Konfirmasi	2017-08-21 01:06:26.309043	2017-08-21 01:06:26.309043
163	343	Konfirmasi	2017-08-21 01:06:26.444768	2017-08-21 01:06:26.444768
164	344	Konfirmasi	2017-08-21 01:06:26.527644	2017-08-21 01:06:26.527644
165	345	Konfirmasi	2017-08-21 01:06:26.681456	2017-08-21 01:06:26.681456
166	346	Konfirmasi	2017-08-21 01:06:26.752877	2017-08-21 01:06:26.752877
167	347	Konfirmasi	2017-08-21 01:06:26.802949	2017-08-21 01:06:26.802949
168	348	Konfirmasi	2017-08-21 01:06:26.849167	2017-08-21 01:06:26.849167
169	349	Konfirmasi	2017-08-21 01:06:26.917193	2017-08-21 01:06:26.917193
170	350	Konfirmasi	2017-08-21 01:06:26.975241	2017-08-21 01:06:26.975241
171	351	Konfirmasi	2017-08-21 01:06:27.027503	2017-08-21 01:06:27.027503
172	352	Konfirmasi	2017-08-21 01:06:27.092681	2017-08-21 01:06:27.092681
173	353	Konfirmasi	2017-08-21 01:06:27.181254	2017-08-21 01:06:27.181254
174	354	Konfirmasi	2017-08-21 01:06:27.279674	2017-08-21 01:06:27.279674
175	355	Konfirmasi	2017-08-21 01:06:27.469197	2017-08-21 01:06:27.469197
176	356	Konfirmasi	2017-08-21 01:06:27.622466	2017-08-21 01:06:27.622466
177	357	Konfirmasi	2017-08-21 01:06:27.857333	2017-08-21 01:06:27.857333
178	358	Konfirmasi	2017-08-21 01:06:28.013253	2017-08-21 01:06:28.013253
179	359	Konfirmasi	2017-08-21 01:06:28.213569	2017-08-21 01:06:28.213569
180	360	Konfirmasi	2017-08-21 01:06:28.350955	2017-08-21 01:06:28.350955
\.


--
-- Name: pbs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: psibmearvpmdll
--

SELECT pg_catalog.setval('"pbs_id_seq"', 186, true);


--
-- Data for Name: rendams; Type: TABLE DATA; Schema: public; Owner: psibmearvpmdll
--

COPY "rendams" ("id", "cetak_gtg_id", "hasil", "rusak", "keterangan", "created_at", "updated_at") FROM stdin;
1	3	874	0		2017-08-21 01:43:27.906689	2017-08-21 01:43:27.906689
2	4	2400	0		2017-08-21 01:52:35.406662	2017-08-21 01:52:35.406662
3	5	964	0		2017-08-21 03:44:42.254088	2017-08-21 03:44:42.254088
4	6	683	0		2017-08-21 03:45:04.683185	2017-08-21 03:45:04.683185
5	7	899	0		2017-08-21 03:45:22.763258	2017-08-21 03:45:22.763258
6	8	693	0		2017-08-21 03:45:47.654669	2017-08-21 03:45:47.654669
7	9	19	0		2017-08-21 03:46:10.731461	2017-08-21 03:46:10.731461
8	10	867	0		2017-08-21 05:04:34.769738	2017-08-21 05:04:34.769738
9	11	50	0		2017-08-21 15:15:04.507995	2017-08-21 15:15:04.507995
10	12	100	0		2017-08-24 00:22:51.336005	2017-08-24 00:22:51.336005
11	13	1200	0		2017-08-24 07:10:36.166643	2017-08-24 07:10:36.166643
\.


--
-- Name: rendams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: psibmearvpmdll
--

SELECT pg_catalog.setval('"rendams_id_seq"', 11, true);


--
-- Data for Name: rps; Type: TABLE DATA; Schema: public; Owner: psibmearvpmdll
--

COPY "rps" ("id", "schedule_qty", "site", "keterangan", "plan_date", "barang_id", "created_at", "updated_at", "nama_customer", "alamat", "telpon") FROM stdin;
361	2500	Genteng	semen 800kg, pasir 700kg, cat GR 250 ltr	08/21/2017	47	2017-08-21 01:30:24.915741	2017-08-21 01:30:24.915741	Mischa Ralline	Serio no 87 	02264578876
362	50	Genteng	semen 20 kg, pasir 15 kg, cat Dlx RM 5 ltr	08/21/2017	7	2017-08-21 15:08:16.326836	2017-08-21 15:08:16.326836	Fadillah	Jl cagak subang no 98	0987656686
363	1200	Genteng	Semen 500 kg, pasir 400 kg, cat DB 40 ltr	08/22/2017	9	2017-08-22 00:22:43.041344	2017-08-22 00:22:43.041344	Maria Ekamah	jl Cikapundung Bandung	087776564556
364	100	Genteng	semen 20 kg, pasir 15 kg	08/23/2017	236	2017-08-22 23:06:37.161932	2017-08-22 23:06:37.161932	Rena Renata	jl Re Martadinata no 10 Jakarta	08777653456
365	200	Genteng	Semen 60 kg, pasir 50 kg, cat 30 ltr	08/24/2017	35	2017-08-23 23:58:09.035463	2017-08-23 23:58:09.035463	Keylla Harington	Jl. Sukaseuri no 78 	0877654356
366	600	Genteng	semen 60 kg, pasir 45 kg, cat 30 ltr	08/24/2017	56	2017-08-24 06:54:45.924677	2017-08-24 06:54:45.924677	Joseph Hartono	Kosambi Karawang	087665432334
271	964	Genteng	test	06/1/2017	255	2017-08-21 01:06:19.772406	2017-08-21 01:06:19.772406	Mr. Philip Strosin	1026 Micaela Divide	1-420-589-3929 x53836
272	683	Genteng	test	06/2/2017	125	2017-08-21 01:06:19.869976	2017-08-21 01:06:19.869976	Viviane Rutherford PhD	17277 Fahey Views	1-455-828-0285
273	346	Blok	test	06/3/2017	66	2017-08-21 01:06:19.946917	2017-08-21 01:06:19.946917	Ms. Brice Rohan	24797 Craig Locks	721.695.7955
274	392	Genteng	test	06/4/2017	31	2017-08-21 01:06:20.074054	2017-08-21 01:06:20.074054	Kaya Brakus I	26981 Keenan Center	1-262-851-2450 x39730
275	773	Genteng	test	06/5/2017	252	2017-08-21 01:06:20.181517	2017-08-21 01:06:20.181517	William Grant	3953 Carter Radial	(124) 032-5997
276	966	Genteng	test	06/6/2017	61	2017-08-21 01:06:20.227627	2017-08-21 01:06:20.227627	Sigmund Dach	50065 Bailey Lodge	(824) 914-3552 x3218
277	806	Genteng	test	06/7/2017	250	2017-08-21 01:06:20.274839	2017-08-21 01:06:20.274839	Jalon Collier	6665 Berge Road	1-655-542-2698
278	133	Genteng	test	06/8/2017	229	2017-08-21 01:06:20.322074	2017-08-21 01:06:20.322074	Warren Strosin	155 Ferry Village	497-605-4231 x67109
279	823	Genteng	test	06/9/2017	22	2017-08-21 01:06:20.381481	2017-08-21 01:06:20.381481	Johnson Klocko	14523 Ritchie Drives	711-820-2209 x6996
280	656	Genteng	test	06/10/2017	44	2017-08-21 01:06:20.426196	2017-08-21 01:06:20.426196	Kaylee Doyle	51938 Rhoda Lane	932-003-3471 x7131
281	978	Genteng	test	06/11/2017	167	2017-08-21 01:06:20.490887	2017-08-21 01:06:20.490887	Marilie Kuhic	91012 Saul Haven	603.307.9221 x3989
282	755	Genteng	test	06/12/2017	135	2017-08-21 01:06:20.532368	2017-08-21 01:06:20.532368	Miss Ardith Mayer	10438 Konopelski Villages	1-121-369-7226 x610
283	388	Genteng	test	06/13/2017	195	2017-08-21 01:06:20.581777	2017-08-21 01:06:20.581777	Spencer McDermott	29450 Tony Grove	902.424.4566 x6399
284	893	Genteng	test	06/14/2017	233	2017-08-21 01:06:20.637374	2017-08-21 01:06:20.637374	Sadie Stoltenberg Jr.	4430 Kulas Extensions	976-091-5362 x84716
285	435	Genteng	test	06/15/2017	23	2017-08-21 01:06:20.691725	2017-08-21 01:06:20.691725	Unique Goodwin	444 Toy Summit	(949) 200-0932 x660
286	890	Genteng	test	06/16/2017	207	2017-08-21 01:06:20.764733	2017-08-21 01:06:20.764733	Casimer Bauch	99470 Conroy Forks	(752) 409-8294
287	531	Genteng	test	06/17/2017	144	2017-08-21 01:06:20.830624	2017-08-21 01:06:20.830624	Carmine White	67949 Harris Grove	1-595-444-6612
288	651	Blok	test	06/18/2017	66	2017-08-21 01:06:20.90225	2017-08-21 01:06:20.90225	Korbin Erdman	63657 Peter Forges	(571) 300-3317 x397
289	430	Genteng	test	06/19/2017	53	2017-08-21 01:06:20.962948	2017-08-21 01:06:20.962948	Everardo Renner PhD	45242 Lorenz Wall	(426) 213-6663 x9767
290	110	Genteng	test	06/20/2017	210	2017-08-21 01:06:21.019055	2017-08-21 01:06:21.019055	Arlene Kutch	3941 Blaise Branch	636-170-3435 x53150
291	653	Genteng	test	06/21/2017	20	2017-08-21 01:06:21.079988	2017-08-21 01:06:21.079988	Cielo Littel	3011 Devan Crescent	(697) 064-9914
292	385	Genteng	test	06/22/2017	239	2017-08-21 01:06:21.150319	2017-08-21 01:06:21.150319	Katelin Goyette	31785 Skyla Club	121-349-3570
293	321	Genteng	test	06/23/2017	38	2017-08-21 01:06:21.271387	2017-08-21 01:06:21.271387	Dr. Tobin Gorczany	4932 Weimann Radial	703-171-6746
294	786	Genteng	test	06/24/2017	135	2017-08-21 01:06:21.358019	2017-08-21 01:06:21.358019	Sterling Boehm	728 Deja Isle	716.253.1679
295	255	Genteng	test	06/25/2017	139	2017-08-21 01:06:21.495218	2017-08-21 01:06:21.495218	Ahmad Miller	901 Dejah Knolls	(541) 341-9632
296	405	Genteng	test	06/26/2017	203	2017-08-21 01:06:21.543216	2017-08-21 01:06:21.543216	Ottilie Wyman	10227 Champlin Parks	1-827-093-9271
297	581	Genteng	test	06/27/2017	213	2017-08-21 01:06:21.602886	2017-08-21 01:06:21.602886	Skye Frami	501 Trisha Corners	(956) 386-8837
298	343	Genteng	test	06/28/2017	208	2017-08-21 01:06:21.657779	2017-08-21 01:06:21.657779	Jamir Hackett	9398 Ophelia Locks	975-694-6317 x6926
299	961	Genteng	test	06/29/2017	233	2017-08-21 01:06:21.717123	2017-08-21 01:06:21.717123	Ms. Agnes Rosenbaum	587 Leuschke Mission	248-826-6865 x33188
300	437	Genteng	test	06/30/2017	169	2017-08-21 01:06:21.783535	2017-08-21 01:06:21.783535	Johann Ratke	16911 Leuschke Point	(140) 390-3732
301	899	Genteng	test	07/1/2017	169	2017-08-21 01:06:21.846436	2017-08-21 01:06:21.846436	Braulio Heidenreich Jr.	2929 Jaren Fork	1-863-746-1351 x8027
302	693	Genteng	test	07/2/2017	86	2017-08-21 01:06:21.925742	2017-08-21 01:06:21.925742	Dr. Vincenzo Predovic	87839 Kessler Brooks	896.292.5890
303	867	Genteng	test	07/3/2017	146	2017-08-21 01:06:22.015952	2017-08-21 01:06:22.015952	Rene Miller	295 Jayde Expressway	1-368-478-5789
304	575	Genteng	test	07/4/2017	127	2017-08-21 01:06:22.075331	2017-08-21 01:06:22.075331	Lauren Crooks Jr.	888 Wolf Mills	1-831-817-6268 x45038
305	81	Genteng	test	07/5/2017	252	2017-08-21 01:06:22.137844	2017-08-21 01:06:22.137844	Hollie Schmitt	142 Schowalter Gateway	233-504-5891
306	358	Genteng	test	07/6/2017	197	2017-08-21 01:06:22.204034	2017-08-21 01:06:22.204034	Miss Annamarie Marquardt	529 Abshire Station	(115) 911-1209
307	991	Genteng	test	07/7/2017	257	2017-08-21 01:06:22.262232	2017-08-21 01:06:22.262232	Reynold Torphy Jr.	9697 Nolan Loop	889.239.1198 x83320
308	784	Genteng	test	07/8/2017	229	2017-08-21 01:06:22.311386	2017-08-21 01:06:22.311386	Mr. Elva Roberts	6715 Jacobi Mountain	(690) 052-8582
309	44	Genteng	test	07/9/2017	52	2017-08-21 01:06:22.378804	2017-08-21 01:06:22.378804	Dr. Juana Reynolds	30107 Ephraim Village	130-947-7790
310	129	Genteng	test	07/10/2017	156	2017-08-21 01:06:22.469357	2017-08-21 01:06:22.469357	Kay Schaefer	1789 Ferry Terrace	1-225-145-2505 x051
311	931	Genteng	test	07/11/2017	73	2017-08-21 01:06:22.696431	2017-08-21 01:06:22.696431	Jordy Bechtelar	5506 O'Reilly Ports	937.507.2797
312	544	Genteng	test	07/12/2017	58	2017-08-21 01:06:22.77624	2017-08-21 01:06:22.77624	Emerald Mosciski	209 Jast Passage	934.271.4727 x624
313	515	Genteng	test	07/13/2017	127	2017-08-21 01:06:22.862826	2017-08-21 01:06:22.862826	Sean Cruickshank	8712 Eino Junction	200-479-9398
314	49	Genteng	test	07/14/2017	160	2017-08-21 01:06:23.135797	2017-08-21 01:06:23.135797	Nya Hintz	400 Larson Walk	(533) 185-8740 x17480
315	159	Genteng	test	07/15/2017	128	2017-08-21 01:06:23.229089	2017-08-21 01:06:23.229089	Brooks Thiel	65311 Breitenberg Motorway	1-140-121-3307
316	554	Genteng	test	07/16/2017	187	2017-08-21 01:06:23.293419	2017-08-21 01:06:23.293419	Yolanda Simonis	8593 Schroeder Squares	1-434-080-9846 x59783
317	429	Genteng	test	07/17/2017	98	2017-08-21 01:06:23.382853	2017-08-21 01:06:23.382853	Stephania Powlowski	821 Francesco Underpass	770-223-9824 x85295
318	424	Genteng	test	07/18/2017	173	2017-08-21 01:06:23.480618	2017-08-21 01:06:23.480618	Melba Beahan	239 Rolfson Fork	1-905-712-5637 x3022
319	950	Genteng	test	07/19/2017	215	2017-08-21 01:06:23.536553	2017-08-21 01:06:23.536553	Franco Spinka	503 Denesik Track	194-142-8008 x8437
320	951	Genteng	test	07/20/2017	186	2017-08-21 01:06:23.588335	2017-08-21 01:06:23.588335	Oscar Auer	743 Emelia Mill	750.001.1882 x20849
321	249	Genteng	test	07/21/2017	39	2017-08-21 01:06:23.638112	2017-08-21 01:06:23.638112	Mrs. Ernie Larkin	675 Tillman Highway	1-910-569-4566
322	402	Blok	test	07/22/2017	66	2017-08-21 01:06:23.739412	2017-08-21 01:06:23.739412	Mrs. Mathias Zulauf	489 Ledner Flat	469.809.2351 x315
323	472	Genteng	test	07/23/2017	257	2017-08-21 01:06:23.885691	2017-08-21 01:06:23.885691	Daren Schowalter IV	42125 Eliza Light	373.320.9123
324	268	Genteng	test	07/24/2017	109	2017-08-21 01:06:24.032203	2017-08-21 01:06:24.032203	Bradly Jacobi	5913 Kameron Ramp	774-100-4356
325	612	Genteng	test	07/25/2017	39	2017-08-21 01:06:24.143029	2017-08-21 01:06:24.143029	Manuel Mosciski	8112 Fritsch Road	(807) 776-8612 x91191
326	475	Genteng	test	07/26/2017	237	2017-08-21 01:06:24.236335	2017-08-21 01:06:24.236335	Althea Pouros Jr.	20046 Bradtke Lodge	1-158-265-7294 x47593
327	944	Genteng	test	07/27/2017	72	2017-08-21 01:06:24.400936	2017-08-21 01:06:24.400936	Eleanora Leannon	38637 Dennis View	1-831-564-3850 x37103
328	237	Genteng	test	07/28/2017	18	2017-08-21 01:06:24.567797	2017-08-21 01:06:24.567797	Dr. Zita Romaguera	18471 Damion Hollow	673.680.3934 x6649
329	230	Genteng	test	07/29/2017	2	2017-08-21 01:06:24.771884	2017-08-21 01:06:24.771884	Dr. Mylene Cartwright	2700 McLaughlin Gardens	546-983-8428 x724
330	745	Genteng	test	07/30/2017	200	2017-08-21 01:06:24.885571	2017-08-21 01:06:24.885571	Dr. Durward McDermott	18781 Gayle Trafficway	432-561-7979
331	19	Genteng	test	08/1/2017	259	2017-08-21 01:06:24.954418	2017-08-21 01:06:24.954418	Brandy Gerlach	28936 Alice Points	1-735-579-5839 x89777
332	51	Blok	test	08/2/2017	132	2017-08-21 01:06:25.076274	2017-08-21 01:06:25.076274	Branson Rippin	422 Milford Trace	761-424-5979
333	883	Genteng	test	08/3/2017	26	2017-08-21 01:06:25.207683	2017-08-21 01:06:25.207683	Mathilde D'Amore	6995 Landen Harbor	1-168-576-0784 x028
334	23	Genteng	test	08/4/2017	160	2017-08-21 01:06:25.275192	2017-08-21 01:06:25.275192	Lucious Kulas V	68369 Dicki Flat	646.575.2931 x2298
335	817	Genteng	test	08/5/2017	26	2017-08-21 01:06:25.341613	2017-08-21 01:06:25.341613	Bethany Kshlerin	8954 Hodkiewicz Islands	680-525-3502
336	164	Genteng	test	08/6/2017	122	2017-08-21 01:06:25.390714	2017-08-21 01:06:25.390714	Wilfredo Collins	944 Axel Isle	916.965.7660 x712
337	638	Genteng	test	08/7/2017	3	2017-08-21 01:06:25.462138	2017-08-21 01:06:25.462138	Jacky Braun	1570 Schneider Pine	(139) 560-2273 x72424
338	204	Genteng	test	08/8/2017	225	2017-08-21 01:06:25.585806	2017-08-21 01:06:25.585806	Katarina Dickinson	358 Edward Path	873.539.3386
339	205	Genteng	test	08/9/2017	206	2017-08-21 01:06:25.790883	2017-08-21 01:06:25.790883	Noemie Spinka DVM	84227 Amaya Fort	475-165-1695
340	867	Genteng	test	08/10/2017	38	2017-08-21 01:06:25.908424	2017-08-21 01:06:25.908424	Lois Zulauf DDS	9601 Treutel Spur	1-529-961-7926 x290
341	144	Genteng	test	08/11/2017	116	2017-08-21 01:06:26.155204	2017-08-21 01:06:26.155204	Dr. Tracey Lesch	572 Rose Dam	637.380.2968 x653
342	274	Genteng	test	08/12/2017	227	2017-08-21 01:06:26.278339	2017-08-21 01:06:26.278339	Miss Anissa Ernser	68817 Schuster Throughway	178-987-5653
343	774	Genteng	test	08/13/2017	45	2017-08-21 01:06:26.431343	2017-08-21 01:06:26.431343	Joseph Hodkiewicz	4137 Hahn Summit	822.706.0559 x8544
344	120	Genteng	test	08/14/2017	205	2017-08-21 01:06:26.503893	2017-08-21 01:06:26.503893	Gustave Hilpert	45926 Cassidy Bridge	469-395-5566
345	452	Genteng	test	08/15/2017	182	2017-08-21 01:06:26.662109	2017-08-21 01:06:26.662109	Olin Nader	26232 Ullrich Views	691-159-7650 x4155
346	75	Genteng	test	08/16/2017	173	2017-08-21 01:06:26.741144	2017-08-21 01:06:26.741144	Dr. Jennie Flatley	67164 Percy Motorway	1-400-429-6695 x5028
347	192	Genteng	test	08/17/2017	15	2017-08-21 01:06:26.792256	2017-08-21 01:06:26.792256	Naomi Paucek	712 Monahan Burg	495-306-7822 x838
348	639	Genteng	test	08/18/2017	114	2017-08-21 01:06:26.836937	2017-08-21 01:06:26.836937	Zechariah Bauch	895 Stoltenberg Place	(625) 721-2119 x56910
349	934	Genteng	test	08/19/2017	97	2017-08-21 01:06:26.903084	2017-08-21 01:06:26.903084	Cortney Abshire	2567 Lynch Ways	717.430.3350
350	223	Genteng	test	08/20/2017	203	2017-08-21 01:06:26.962237	2017-08-21 01:06:26.962237	Rashad Schuster	87260 Dickinson Parkway	721.075.6707 x8926
351	874	Genteng	test	08/21/2017	223	2017-08-21 01:06:27.016539	2017-08-21 01:06:27.016539	Alaina Collins	87820 Herman Squares	654-656-3202
352	937	Genteng	test	08/22/2017	79	2017-08-21 01:06:27.068784	2017-08-21 01:06:27.068784	Mya Luettgen V	54651 Mohamed Cove	(710) 962-9255
353	977	Genteng	test	08/23/2017	225	2017-08-21 01:06:27.149672	2017-08-21 01:06:27.149672	Noel Fisher Jr.	8898 Ratke Ridge	1-202-088-4328 x5020
354	812	Genteng	test	08/24/2017	242	2017-08-21 01:06:27.25006	2017-08-21 01:06:27.25006	Tillman Prohaska	685 Olga Shoals	213-179-5282 x1072
355	989	Genteng	test	08/25/2017	12	2017-08-21 01:06:27.433839	2017-08-21 01:06:27.433839	Ms. Leonel Hoppe	8485 Baron Island	500-322-7804 x815
356	235	Genteng	test	08/26/2017	227	2017-08-21 01:06:27.589637	2017-08-21 01:06:27.589637	Alessandro Cronin	7349 Nora Wells	(897) 065-2030
357	642	Genteng	test	08/27/2017	260	2017-08-21 01:06:27.763283	2017-08-21 01:06:27.763283	Tyson Reichert III	3746 Mason Ramp	910.013.8487 x91991
358	387	Genteng	test	08/28/2017	231	2017-08-21 01:06:27.971151	2017-08-21 01:06:27.971151	Tressie Konopelski	92846 Kirlin Rapids	870.954.6453 x1558
359	282	Genteng	test	08/29/2017	227	2017-08-21 01:06:28.165963	2017-08-21 01:06:28.165963	Mona Goldner	426 Schimmel Path	(666) 861-9541 x6124
360	825	Genteng	test	08/30/2017	196	2017-08-21 01:06:28.300784	2017-08-21 01:06:28.300784	Gordon Mills	263 Collier Unions	(749) 432-1535 x494
\.


--
-- Name: rps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: psibmearvpmdll
--

SELECT pg_catalog.setval('"rps_id_seq"', 366, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: psibmearvpmdll
--

COPY "schema_migrations" ("version") FROM stdin;
20170710001816
20170710005916
20170710143101
20170713081646
20170716232729
20170716233543
20170716235938
20170717000009
20170717001400
20170717001444
20170717001530
20170717001629
20170717031943
20170718144204
20170718233956
20170718234303
20170720112527
20170804035828
20170806152103
20170806170822
20170807020403
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: psibmearvpmdll
--

COPY "users" ("id", "email", "encrypted_password", "role", "reset_password_token", "reset_password_sent_at", "remember_created_at", "sign_in_count", "current_sign_in_at", "last_sign_in_at", "current_sign_in_ip", "last_sign_in_ip", "created_at", "updated_at", "username", "name") FROM stdin;
9	cetak_blok@siprosi.com	$2a$11$6knGcdT9uHaRxbT2e0L.Deza8JdCHqhkO0NQNLm7Jo8kIIA6hthXu	cetak_blok	\N	\N	\N	0	\N	\N	\N	\N	2017-08-21 00:40:36.790641	2017-08-21 00:40:36.790641	cetak_blok	cetak_blok
10	cat_blok@siprosi.com	$2a$11$Qm9YStO2/zdaSQgEitBDGu5bTJmtIwixklR0RyPypFVgpvJV0vOFS	cat_blok	\N	\N	\N	0	\N	\N	\N	\N	2017-08-21 00:40:36.982632	2017-08-21 00:40:36.982632	cat_blok	cat_blok
2	ppic@siprosi.com	$2a$11$ZWmU2syDtQK8GckToRRNg.69ufG4Srh2GiJX.fnjXEoweFaAEFjN6	ppic	\N	\N	\N	15	2017-08-24 06:53:01.841931	2017-08-23 23:52:17.09461	114.124.215.83	114.4.83.183	2017-08-21 00:40:34.188446	2017-08-24 06:53:01.844551	ppic	ppic
4	gudang@siprosi.com	$2a$11$UzleBoKTcne.iMjC55k00uzKOmuF5ZAIf15Oli94nyHr5qLqE9fY6	gudang	\N	\N	\N	6	2017-08-24 06:58:27.124588	2017-08-24 00:11:00.083711	114.124.239.210	114.4.83.183	2017-08-21 00:40:34.564201	2017-08-24 06:58:27.127293	gudang	gudang
5	cetak_genteng@siprosi.com	$2a$11$nZ6q4vKM2cfvOQMWRQ4mJuMLS6JfrUnL0mcay9VPwu1LKnn/BEeam	cetak_genteng	\N	\N	\N	21	2017-08-24 07:04:59.056603	2017-08-24 07:03:02.427313	114.124.230.62	114.124.230.62	2017-08-21 00:40:34.736251	2017-08-24 07:04:59.058742	cetak_genteng	cetak_genteng
6	rendam_genteng@siprosi.com	$2a$11$vmhen5k/IMut65KnOJ7JLup5NLADOl30gmQPiOPIg6RaaTlcSiCyS	rendam_genteng	\N	\N	\N	13	2017-08-24 07:09:20.255534	2017-08-24 00:15:44.751424	114.124.200.209	114.4.83.183	2017-08-21 00:40:34.911302	2017-08-24 07:09:20.25849	rendam_genteng	rendam_genteng
7	gosok_genteng@siprosi.com	$2a$11$MpLqYD8uQEr1FCM1a78tz.no8LkgxoF25v882UZGj2jQs04r.7xAu	gosok_genteng	\N	\N	\N	15	2017-08-24 07:12:39.45012	2017-08-24 00:23:11.776011	114.124.200.209	114.4.83.183	2017-08-21 00:40:36.428043	2017-08-24 07:12:39.452418	gosok_genteng	gosok_genteng
1	admin@siprosi.com	$2a$11$YmvXTpD04caF00wSs0197O0Wg//M7wQqnHiWwgIt6ljuC1UJLOnN2	admin	\N	\N	\N	2	2017-08-22 05:44:30.539675	2017-08-22 00:40:14.489865	114.4.83.183	114.4.83.183	2017-08-21 00:40:34.023017	2017-08-22 05:44:30.541615	admin	admin
8	cat_genteng@siprosi.com	$2a$11$5C01eicj4fRfePRcBxP8hu51KL5DaxwMWguAiL6KQPsTwPBFDp4pa	cat_genteng	\N	\N	\N	13	2017-08-24 07:17:12.194008	2017-08-24 00:29:14.010808	114.124.208.227	114.4.83.183	2017-08-21 00:40:36.590708	2017-08-24 07:17:12.196547	cat_genteng	cat_genteng
3	produksi@siprosi.com	$2a$11$Z6Oq5Ty0YxA6JvxImbIkruDayEDcMgWd9TZhs6FanVEYwZn.J3kli	produksi	\N	\N	\N	38	2017-08-24 07:23:20.447371	2017-08-24 07:04:03.417773	114.124.239.210	114.124.230.62	2017-08-21 00:40:34.371418	2017-08-24 07:23:20.449781	produksi	produksi
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: psibmearvpmdll
--

SELECT pg_catalog.setval('"users_id_seq"', 10, true);


--
-- Name: barangs barangs_pkey; Type: CONSTRAINT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "barangs"
    ADD CONSTRAINT "barangs_pkey" PRIMARY KEY ("id");


--
-- Name: cat_bloks cat_bloks_pkey; Type: CONSTRAINT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "cat_bloks"
    ADD CONSTRAINT "cat_bloks_pkey" PRIMARY KEY ("id");


--
-- Name: cat_gtgs cat_gtgs_pkey; Type: CONSTRAINT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "cat_gtgs"
    ADD CONSTRAINT "cat_gtgs_pkey" PRIMARY KEY ("id");


--
-- Name: cetak_bloks cetak_bloks_pkey; Type: CONSTRAINT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "cetak_bloks"
    ADD CONSTRAINT "cetak_bloks_pkey" PRIMARY KEY ("id");


--
-- Name: cetak_gtgs cetak_gtgs_pkey; Type: CONSTRAINT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "cetak_gtgs"
    ADD CONSTRAINT "cetak_gtgs_pkey" PRIMARY KEY ("id");


--
-- Name: gosoks gosoks_pkey; Type: CONSTRAINT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "gosoks"
    ADD CONSTRAINT "gosoks_pkey" PRIMARY KEY ("id");


--
-- Name: hps hps_pkey; Type: CONSTRAINT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "hps"
    ADD CONSTRAINT "hps_pkey" PRIMARY KEY ("id");


--
-- Name: ips ips_pkey; Type: CONSTRAINT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "ips"
    ADD CONSTRAINT "ips_pkey" PRIMARY KEY ("id");


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "notifications"
    ADD CONSTRAINT "notifications_pkey" PRIMARY KEY ("id");


--
-- Name: pbs pbs_pkey; Type: CONSTRAINT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "pbs"
    ADD CONSTRAINT "pbs_pkey" PRIMARY KEY ("id");


--
-- Name: rendams rendams_pkey; Type: CONSTRAINT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "rendams"
    ADD CONSTRAINT "rendams_pkey" PRIMARY KEY ("id");


--
-- Name: rps rps_pkey; Type: CONSTRAINT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "rps"
    ADD CONSTRAINT "rps_pkey" PRIMARY KEY ("id");


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: psibmearvpmdll
--

ALTER TABLE ONLY "users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: psibmearvpmdll
--

CREATE UNIQUE INDEX "index_users_on_email" ON "users" USING "btree" ("email");


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: psibmearvpmdll
--

CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" USING "btree" ("reset_password_token");


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: psibmearvpmdll
--

CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" USING "btree" ("version");


--
-- PostgreSQL database dump complete
--

