--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6 (Homebrew)
-- Dumped by pg_dump version 14.6 (Homebrew)

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
-- Name: backpacks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backpacks (
    id integer NOT NULL,
    name character varying(60),
    image character varying(40),
    sizes integer[],
    articul character varying(50)
);


ALTER TABLE public.backpacks OWNER TO postgres;

--
-- Name: backpacks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.backpacks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backpacks_id_seq OWNER TO postgres;

--
-- Name: backpacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.backpacks_id_seq OWNED BY public.backpacks.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(30),
    link character varying(30),
    image character varying(60)
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    id integer NOT NULL,
    name text,
    total_price integer,
    goods_amount integer,
    date_of_transaction date,
    email text,
    country character varying(200),
    city character varying(200),
    phone bigint,
    transaction_id bigint
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- Name: clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clients_id_seq OWNER TO postgres;

--
-- Name: clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;


--
-- Name: clothes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clothes (
    id integer NOT NULL,
    name character varying(60),
    price integer,
    image character varying(60),
    description text[],
    sizes text[],
    articul character varying(50)
);


ALTER TABLE public.clothes OWNER TO postgres;

--
-- Name: clothes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clothes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clothes_id_seq OWNER TO postgres;

--
-- Name: clothes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clothes_id_seq OWNED BY public.clothes.id;


--
-- Name: guard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.guard (
    id integer NOT NULL,
    name character varying(70),
    images character varying(60)[],
    price integer,
    prim character varying(100),
    extra_info text[],
    description text[],
    complectations text[],
    is_sertified boolean,
    articul character varying(70)
);


ALTER TABLE public.guard OWNER TO postgres;

--
-- Name: guard_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.guard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guard_id_seq OWNER TO postgres;

--
-- Name: guard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.guard_id_seq OWNED BY public.guard.id;


--
-- Name: medicine; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicine (
    id integer NOT NULL,
    name character varying(30),
    description text[],
    contents text[],
    price integer,
    image character varying(100),
    articul character varying(50)
);


ALTER TABLE public.medicine OWNER TO postgres;

--
-- Name: medicine_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.medicine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medicine_id_seq OWNER TO postgres;

--
-- Name: medicine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.medicine_id_seq OWNED BY public.medicine.id;


--
-- Name: shields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shields (
    id integer NOT NULL,
    name character varying(50),
    description text[],
    price integer,
    images character varying(40)[],
    annotation text,
    extra_info text,
    articul character varying(50)
);


ALTER TABLE public.shields OWNER TO postgres;

--
-- Name: shields_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shields_id_seq OWNER TO postgres;

--
-- Name: shields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shields_id_seq OWNED BY public.shields.id;


--
-- Name: backpacks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backpacks ALTER COLUMN id SET DEFAULT nextval('public.backpacks_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: clients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);


--
-- Name: clothes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clothes ALTER COLUMN id SET DEFAULT nextval('public.clothes_id_seq'::regclass);


--
-- Name: guard id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guard ALTER COLUMN id SET DEFAULT nextval('public.guard_id_seq'::regclass);


--
-- Name: medicine id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicine ALTER COLUMN id SET DEFAULT nextval('public.medicine_id_seq'::regclass);


--
-- Name: shields id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shields ALTER COLUMN id SET DEFAULT nextval('public.shields_id_seq'::regclass);


--
-- Data for Name: backpacks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.backpacks (id, name, image, sizes, articul) FROM stdin;
1	Рюкзак	/backpack1.png	{50,75,80,100,120}	back11669157368257
2	Рюкзак	/backpack2.png	{50,75,80,100,120}	back21669157379379
3	Рюкзак	/backpack3.png	{50,75,80,100,120}	back31669157390591
4	Рюкзак	/backpack4.png	{50,75,80,100,120}	back41669157403449
5	Рюкзак	/backpack5.png	{50,75,80,100,120}	back51669157418169
6	Рюкзак	/backpack6.png	{50,75,80,100,120}	back61669157429865
7	Рюкзак	/backpack7.png	{50,75,80,100,120}	back71669157452178
8	Рюкзак	/backpack8.png	{50,75,80,100,120}	back81669157466519
9	Рюкзак	/backpack9.png	{50,75,80,100,120}	back91669157477049
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name, link, image) FROM stdin;
3	Аптечки	/medical-kits	/kit.svg
4	Одежда	/clothes	/uniform.svg
5	Щиты и прочее	/shields-and-others	/shield.svg
1	Рюкзаки	/backpacks	/backpack.svg
2	Бронежилеты и шлемы	/armors	/bodyarmor.svg
\.


--
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients (id, name, total_price, goods_amount, date_of_transaction, email, country, city, phone, transaction_id) FROM stdin;
3	Egor	200000	20	2022-11-16	s1lice.egor@gmail.com	Russia	Chita	89245000234	1671148350565
\.


--
-- Data for Name: clothes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clothes (id, name, price, image, description, sizes, articul) FROM stdin;
5	Униформа БДУ	5500	/bdusuit.png	{{"Тип продукта","Униформа БДУ"},{Ткань,"ТС 65/35"},{Текстура,РИП-СТОП/САРЖА},{"Вес ткани","210-230 г/м2"},{"Текстура основной ткани","Триктожная хлопчатобумажная ткань"},{Цвет,Зеленый/Черный},{"Стойкость цвета","4-5 класс"}}	{S,M,L,XL,XXL}	bdusuit1669156384247
11	Очки баллистические	1100	/glasses.png	{{"Тип продукта",Очки},{Материал,"АБС, ТПУ, ПК"},{"Цвет рамы","Зеленый, черный, комуфляж"},{"Стойкость цвета","4-5 класс"}}	\N	glasses1669156510186
13	Спальный мешок	2500	/sleepbag.png	{{"Тип продукта","Спальный мешок"},{Структура,Соарер},{Масса,2000г.},{"Техничекие характеристики","(Д*Ш) 180*30"},{"Стойкость цвета","4-5 класс"}}	\N	bag1669156537822
1	Термобелье	3670	/termosuit1.png	{{"Тип продукта",Тремобелье},{Ткань,Полиэстер},{Текстура,Вязание},{"Вес ткани","160-180 г/м2"},{Цвет,Зеленый/Черный},{Стойкость,"4-5 класс"}}	{S,M,L,XL,XXL}	thermo11669155856846
2	Термобелье	2000	/termosuit2.png	{{"Тип продукта",Тремобелье},{Ткань,"65% нейлон, 25% полиэстер, 10% спандекс"},{Текстура,Вязание},{"Вес ткани",220г.},{Цвет,Зеленый/Черный},{Стойкость,"4-5 класс"}}	{S,M,L,XL,XXL}	thermo21669156196838
3	Форма полицейская	6000	/policesuit.png	{{"Тип продукта","Полицейская форма"},{"Ткань рукавов и брюк","ТС 65/35"},{Текстура,РИП-СТОП/САРЖА},{"Вес ткани","190-200 г/м2"},{Цвет,Зеленый/Черный},{"Стойкость цвета","4-5 класс"}}	{S,M,L,XL,XXL}	policeform1669156216778
4	Костюм лягушки	6700	/frogsuit.png	{{"Тип продукта","Костюм лягушки"},{"Ткань рукавов и брюк","ТС 65/35"},{Текстура,РИП-СТОП/САРЖА},{"Вес ткани","210-230 г/м2"},{"Текстура основной ткани","Триктожная хлопчатобумажная ткань"},{Цвет,Зеленый/Черный},{"Стойкость цвета","4-5 класс"}}	{S,M,L,XL,XXL}	frogsuit1669156363415
6	Униформа АКУ	5100	/akusuit.png	{{"Тип продукта","Униформа АКУ"},{Ткань,"ТС 65/35"},{Текстура,РИП-СТОП/САРЖА},{"Вес ткани","210-230 г/м2"},{"Текстура основной ткани","Триктожная хлопчатобумажная ткань"},{Цвет,Зеленый/Черный},{"Стойкость цвета","4-5 класс"}}	{S,M,L,XL,XXL}	akusuit1669156400177
7	Шапка флисовая	300	/beanie.png	{{"Тип продукта","Шапка флисовая"},{Ткань,Полиэстер},{Текстура,Вязание},{"Вес ткани","0,05г."},{Цвет,"Подбор цвета"},{"Стойкость цвета","4-5 класс"}}	{S,M,L,XL,XXL}	hat1669156421199
8	Носки зимние	200	/socks.png	{{"Тип продукта","Носки зимние"},{Ткань,Хлопок},{Текстура,Вязание},{"Вес ткани","0,18г."},{Цвет,"Подбор цвета"},{"Стойкость цвета","4-5 класс"}}	{S,M,L,XL,XXL}	socks1669156436235
9	Берцы, обувь зимняя	2500	/foots.png	{{"Тип продукта",Обувь},{Ткань,"Двухсторонний флис"},{"Вес ткани","0,4кг."},{Цвет,"Черный, зеленый, бежевый"},{"Стойкость цвета","4-5 класс"}}	{39,40,41,42,43,44,45,46}	shoes1669156469990
10	Тактическая сумка	750	/tacticalbag.png	{{"Тип продукта",Сумка},{Ткань,"Оксфорд 800D"},{Цвет,"Черный, камуфляж СР, песочный"},{"Стойкость цвета","4-5 класс"}}	\N	tactbag1669156493639
14	Мультитул	2200	/multitool.png	{{"Тип продукта",Мультитул},{"Стойкость цвета","4-5 класс"}}	\N	mulitool1669156563189
12	Балаклава	330	/balaklava.png	{{"Тип продукта",Балаклава},{Ткань,Полиэстер},{"Вес ткани","0,05г."},{Цвет,"Черный, армейский, коричневый"},{"Стойкость цвета","4-5 класс"}}	\N	balaclava1669156523938
15	Наколенники/Налокотники	700	/kneedefender.png	{{"Тип продукта","Зашитное снаряжение"},{Вес,"0,35кг."},{Материал,"Пластик, губка, ткань"},{Цвет,"Черный, зеленый, серый"},{"Защитные части","Локоть, колено"}}	\N	forleg11669156582908
16	Наколенники/Налокотники	700	/kneedefender2.png	{{"Тип продукта","Зашитное снаряжение"},{Вес,"0,35кг."},{Материал,"Пластик, губка, ткань"},{Цвет,"Черный, зеленый, серый"},{"Защитные части","Локоть, колено"}}	\N	forleg21669156598738
17	Перчатки тактические	600	/gloves.png	{{"Тип продукта",Перчатки},{Ткань,"Микрофайбер, неопрен, пластик"},{Текстура,Вязание},{"Вес ткани","0,180г."},{Цвет,"Подбор цвета"},{"Стойкость цвета","4-5 класс"}}	{S,M,L,XL,XXL}	tacticgloves1669156642057
\.


--
-- Data for Name: guard; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.guard (id, name, images, price, prim, extra_info, description, complectations, is_sertified, articul) FROM stdin;
3	Пуленепробиваемый шлем	{helmet3.png,helmet2-side.png}	15000	Есть отчет об испытаниях	\N	{{Материал,PE},{Размер,L},{Вес,1.45кг.},{"Пулнепробиваемый рейтинг","NIJ IIIA (0,44мм.)"},{Цвет,"Черный, армейский, зеленый, песочный"}}	\N	t	helmet31669246568517
4	Пуленепробиваемая вставная пластина	{plastine1.png}	10440	Есть отчет об испытаниях	{"Надписи и изображение возможно изменять на усмотрение заказчика."}	{{Производительность,III},{"Защитная зона","0,075м2"},{"Баллистический материал",PE+AL2O3},{"Материал корпуса","Яркий водонепроницаемый полиэстер"},{Размер,250*300мм.},{Вес,"ок. 2,35 +- 0,05кг/шт."}}	\N	t	plastine1669246582340
7	Пуленепробиваемая вставная пластина	{plastine1.png}	17400	Есть отчет об испытаниях	{"Надписи и изображение возможно изменять на усмотрение заказчика."}	{{Производительность,IV},{"Защитная зона","0,075м2"},{"Баллистический материал",PE+SIC},{"Материал корпуса","Яркий водонепроницаемый полиэстер"},{Размер,250*300мм.},{Вес,"ок. 2,45 +- 0,05кг/шт."}}	\N	t	plastine41669246634433
1	Пуленепробиваемый шлем М88	{helmet1.png,helmet1-side.png}	8200	Есть отчет об испытаниях	\N	{{Материал,Полиэтилен},{Размер,L},{Вес,1.4кг.},{"Пулнепробиваемый рейтинг","NIJ IIIA (0,44мм.)"},{Цвет,"Черный, армейский, зеленый, песочный"}}	\N	t	helmet11669246499337
2	Пуленепробиваемый шлем	{helmet2.png,helmet2-side.png}	13000	Есть отчет об испытаниях	\N	{{Материал,Полиэтилен},{Размер,L},{Вес,1.5кг.},{"Пулнепробиваемый рейтинг","NIJ IIIA (0,44мм.)"},{Цвет,"Черный, армейский, зеленый, песочный"}}	\N	t	helmet21669246555228
5	Пуленепробиваемая вставная пластина	{plastine1.png}	15000	Есть отчет об испытаниях	{"Надписи и изображение возможно изменять на усмотрение заказчика."}	{{Производительность,III},{"Защитная зона","0,075м2"},{"Баллистический материал",PE+SIC},{"Материал корпуса","Яркий водонепроницаемый полиэстер"},{Размер,250*300мм.},{Вес,"ок. 2,05 +- 0,05кг/шт."}}	\N	t	plastine21669246608117
6	Пуленепробиваемая вставная пластина	{plastine1.png}	12200	Есть отчет об испытаниях	{"Надписи и изображение возможно изменять на усмотрение заказчика."}	{{Производительность,IV},{"Защитная зона","0,075м2"},{"Баллистический материал",PE+AL2O3},{"Материал корпуса","Яркий водонепроницаемый полиэстер"},{Размер,250*300мм.},{Вес,"ок. 2,85 +- 0,05кг/шт."}}	\N	t	plastine31669246623657
8	Разгрузочный жилет	{uploadguard.png}	3000	Есть отчет об испытаниях	\N	{{Вес,1.1кг.},{Ткань,"Оксфорд 600D"},{Характеристика,"Быстросохнущий, дышащий водостойкий, износостойкий, ветрозащитний, влагоотводящий."}}	\N	t	upload1669246647663
10	Пуленепробиваемый жилет	{bulletguard2.png}	39000	Есть отчет об испытаниях	{"Варианты пуленепробиваемой пластины","1. Стандартная мягкая пуленепробиваемая панель IIIA.","2. Стандарт IIIA пуленепробиваемый + I/II стандартная противоударная мягкая панель.","3. Стандартная пуленепробиваемая жесткая пластина III/IV (250*300 мм/шт.).","4. Варианты 1 или 2 сочетаются с вариантом 3.","Жилет может быть оснащен как мягкими, так и жесткими пластинами.","Цена варьируется в зависимости от опций."}	{{Производительность,"IIIA III IV"},{"Защитное покрытие","Спереди, сзади."},{"Защитная зона","0,3-0,34м2"},{"Баллистический материал","Многослойный UHMW-PE (полиэтилен)"},{"Противотравматическая накладка","Изготовлена из поликарбоната (ПК) и высокой плотности."},{Подкладка,Съемная},{"Материал корпуса","Яркий водонепроницаемый нейлон."},{Размер,"L, XL, 2XL, 3XL"},{Вес,"ок. 3,5кг/шт."},{Цвет,"Белый, черный, OG, синий, по запросу."}}	\N	t	guard21669246677910
12	Пуленепробиваемый жилет	{bulletguard4.png}	35600	Есть отчет об испытаниях	{"Варианты пуленепробиваемой пластины","1. Стандартная мягкая пуленепробиваемая панель IIIA.","2. Стандарт IIIA пуленепробиваемый + I/II стандартная противоударная мягкая панель.","3. Стандартная пуленепробиваемая жесткая пластина III/IV (250*300 мм/шт.).","4. Варианты 1 или 2 сочетаются с вариантом 3.","Жилет может быть оснащен как мягкими, так и жесткими пластинами.","Цена варьируется в зависимости от опций."}	{{Производительность,IIIA},{"Защитное покрытие","Спереди, сзади."},{"Защитная зона","0,35-0,42м2"},{"Баллистический материал","Многослойный UHMW-PE (полиэтилен)"},{"Противотравматическая накладка","Изготовлена из поликарбоната (ПК) и высокой плотности."},{Подкладка,Съемная},{"Материал корпуса","Яркий водонепроницаемый нейлон."},{Размер,"L, XL, 2XL, 3XL"},{Вес,"ок. 3,65-4,5кг/шт."},{Цвет,"Белый, черный, OG, синий, по запросу."}}	\N	t	guard41669246698318
9	Пуленепробиваемый жилет	{bulletguard1.png}	70800	Есть отчет об испытаниях	{"Варианты пуленепробиваемой пластины","1. Стандартная мягкая пуленепробиваемая панель IIIA.","2. Стандарт IIIA пуленепробиваемый + I/II стандартная противоударная мягкая панель.","3. Стандартная пуленепробиваемая жесткая пластина III/IV (250*300 мм/шт.).","4. Варианты 1 или 2 сочетаются с вариантом 3.","Жилет может быть оснащен как мягкими, так и жесткими пластинами.","Цена варьируется в зависимости от опций."}	{{Производительность,IIIA},{"Защитное покрытие","Спереди, сзади, сбоку, на шее и в области живота."},{"Защитная зона","0,52-0,62м2"},{"Баллистический материал","Многослойный UHMW-PE (полиэтилен)"},{"Противотравматическая накладка","Изготовлена из поликарбоната (ПК) и высокой плотности."},{Подкладка,Съемная},{"Материал корпуса","Яркий водонепроницаемый нейлон."},{Размер,"XL, 2XL, 3XL"},{Вес,"ок. 2,65-7,25кг/шт."},{Цвет,"Белый, черный, OG, синий, по запросу."}}	\N	t	guard1669246664828
14	Пуленепробиваемый жилет	{bulletguard6.png}	25000	Есть отчет об испытаниях	{"Варианты пуленепробиваемой пластины","1. Стандартная мягкая пуленепробиваемая панель IIIA.","2. Стандарт IIIA пуленепробиваемый + I/II стандартная противоударная мягкая панель.","3. Стандартная пуленепробиваемая жесткая пластина III/IV (250*300 мм/шт.).","4. Варианты 1 или 2 сочетаются с вариантом 3.","Жилет может быть оснащен как мягкими, так и жесткими пластинами.","Цена варьируется в зависимости от опций."}	{{Производительность,"IIIA III IV"},{"Защитное покрытие","Спереди, сзади."},{"Защитная зона","0,3-0,34м2"},{"Баллистический материал","Многослойный UHMW-PE (полиэтилен)"},{"Противотравматическая накладка","Изготовлена из поликарбоната (ПК) и высокой плотности."},{Подкладка,Съемная},{"Материал корпуса","Яркий водонепроницаемый нейлон."},{Размер,"XL, 2XL, 3XL"},{Вес,"ок. 2,65кг/шт."},{Цвет,"Белый, черный, OG, синий, по запросу."}}	\N	t	guard61669246718372
15	Пуленепробиваемый жилет NIJ3A	{bulletguard7.png,bulletguard7-side.png}	45000	Есть отчет об испытаниях	{"Жилет может быть оснащен как мягкими, так и жесткими пластинами."}	{{Ткань,Оксфорд},{"Пуленепробиваемый материал",Пластина.},{"Класс защиты от пуль",NIJ3A},{Масса,3кг.}}	{"Возможные комплектации","Пуленепробиваемая стальная бронепластина 2,3 мм.","Пуленепробиваемая стальная бронепластина 4,5 мм (NIJIII).","Пуленепробиваемая стальная бронепластина  6,0 мм (NIJIII+).","Керамическая (+оксид алюминия) бронепластина (NIJIII).","Керамическая (+оксид алюминия) бронепластина (NIJIII+).","Бронепластины из полиэтилена высокой плотности.","Керамическая (+карбид кремния) бронепластина (NIJIII)."}	t	guard71669246726653
11	Пуленепробиваемый жилет	{bulletguard3.png}	38000	Есть отчет об испытаниях	{"Варианты пуленепробиваемой пластины","1. Стандартная мягкая пуленепробиваемая панель IIIA.","2. Стандарт IIIA пуленепробиваемый + I/II стандартная противоударная мягкая панель.","3. Стандартная пуленепробиваемая жесткая пластина III/IV (250*300 мм/шт.).","4. Варианты 1 или 2 сочетаются с вариантом 3.","Жилет может быть оснащен как мягкими, так и жесткими пластинами.","Цена варьируется в зависимости от опций."}	{{Производительность,IIIA},{"Защитное покрытие","Спереди, сзади, сбоку, на шее и в области живота."},{"Защитная зона","0,3-0,5м2"},{"Баллистический материал","Многослойный UHMW-PE (полиэтилен)"},{"Противотравматическая накладка","Изготовлена из поликарбоната (ПК) и высокой плотности."},{Подкладка,Съемная},{"Материал корпуса","Яркий водонепроницаемый нейлон."},{Размер,"XL, 2XL, 3XL"},{Вес,"ок. 2,65-7,25кг/шт."},{Цвет,"Белый, черный, OG, синий, по запросу."}}	\N	t	guard31669246685865
13	Пуленепробиваемый жилет	{bulletguard5.png}	40000	Есть отчет об испытаниях	{"Варианты пуленепробиваемой пластины","1. Стандартная мягкая пуленепробиваемая панель IIIA.","2. Стандарт IIIA пуленепробиваемый + I/II стандартная противоударная мягкая панель.","3. Стандартная пуленепробиваемая жесткая пластина III/IV (250*300 мм/шт.).","4. Варианты 1 или 2 сочетаются с вариантом 3.","Жилет может быть оснащен как мягкими, так и жесткими пластинами.","Цена варьируется в зависимости от опций."}	{{Производительность,IIIA},{"Защитное покрытие","Спереди, сзади."},{"Защитная зона","0,48-0,53м2"},{"Баллистический материал","Многослойный UHMW-PE (полиэтилен)"},{"Противотравматическая накладка","Изготовлена из поликарбоната (ПК) и высокой плотности."},{Подкладка,Съемная},{"Материал корпуса","Яркий водонепроницаемый нейлон."},{Размер,"XL, 2XL, 3XL"},{Вес,"ок. 4,65-5,5кг/шт."},{Цвет,"Белый, черный, OG, синий, по запросу."}}	\N	t	guard51669246707702
\.


--
-- Data for Name: medicine; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medicine (id, name, description, contents, price, image, articul) FROM stdin;
1	Аптечка	{{"Тип продукта",Аптечка},{"Вес ткани",2кг},{Размер,"20*15*13 см"},{Цвет,"Черный, армейский, коричневый"},{"Стойкость цвета","4-5 класс"}}	{"Многофункциональный топор-молот","Cапёрная лопата",Ручка,Нож,"Карманный фонарик (без батарейки) (1шт.)","Пряжка для бутылки","Инструмент для розжига","Карабины (2шт.)","Сигнальный свисток","Проволочная пила",Компас,"Инструмент для обвязывания",Жгут,"Противоскользящие перчатки",Мультитул,Стропа,Аптечка,"Ватная палочка (30шт.)","Приспособления для ловли рыбы","Продувательная труба","Флюоресцентные палочки (2шт.)",Ножницы,Пинцет,"Бинты бандажные (2шт.)","Булавки (20шт.)","Скотч медицинский","Кровоостанавливающий жгут","Пластырь (20шт.)","Спиртовая салфетка (10шт.)","Повидон-Йод (10шт.)","Марлевая салфетка","Косыночная повязка","Дождевик (2шт.)","Салфетка первой помощи","Аварийная палатака","Военная сумка"}	5200	/medical-kit.png	medkit1669156994550
2	Подсумок под аптечки	{{"Тип продукта","Сумка под аптечки"},{"Вес ткани","0,25кг"},{Ткань,"600D нейлон"},{Размер,15*21*11см},{Цвет,"Черный, красный, оранжевый"},{"Стойкость цвета","4-5 класс"}}	\N	600	/medical-subkit.png	medkit1669157008761
\.


--
-- Data for Name: shields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shields (id, name, description, price, images, annotation, extra_info, articul) FROM stdin;
1	Экран	{{Светопропускание,84%},{Вес,"Около 2,7кг/шт."},{"Прочность соединениня захвата","> 500N"},{"Прочность соединения ремня безопасности","> 500H"},{Размер,"1100мм * 600мм * 4мм"},{Feature,"Анти-бунт, анти-удар"},{Упаковка,"112см. * 58см. * 24см, 5пкс/кор"}}	3600	{shield1.png,shield1-back.png}	Экран с прокладкой из пены Eva одна ручка сделана из лямки, одна ручка сделана из металла, покрытого резиной.	\N	screen11669157078370
3	Экран	{{"Размер щита","90см. * 50см. * 25см."},{"Форма щита","Одинарная кривая (см. рисунок)"},{"Окно просмотра","Прямоугольник (7см. * 22см.)"},{"Материалы корпуса","Высокоэффективные полиэтиленовые волокна"},{"Оконные материалы","Пулененпробиваемое стекло высокой производительности"},{Вес,16кг.}}	146000	{shield3.png,shield3-back.png}	Экран изготовлен из 100% сверхвысокомолекулярного полиэтилена и соответствует уровню III + NJI. Этот неофициальный уровень охватывает традиционную производительность NIJ Level III для 6 ударов пулей. НАТО 7,62 * 51мм. (М80 Ball), а также признанную угрозу от AK-47 MSC 7,62 * 39мм. патрон, 5,56 * 45-55г. М193 и 5,56 * 45-62г федеральный. Связанный.	Двойной светодиод. Износостойкая защита краев. Надписи и изображения возможно изменять на усмотрение заказчика	screen31669157153047
5	Экран	{{"Размер щита","90см. * 60см. * 25см."},{"Форма щита","Одинарная кривая (см. рисунок)"},{"Окно просмотра","Прямоугольник (7см. * 22см.)"},{"Материалы корпуса","Высокоэффективные полиэтиленовые волокна"},{"Оконные материалы","Пулененпробиваемое стекло высокой производительности"},{Вес,16кг.}}	184000	{shield5.png,shield5-back.png}	Экран изготовлен из 100% сверхвысокомолекулярного полиэтилена и соответствует уровню III+ NIJ. Этот неофициальный уровень охватывает традиционную производительность NIJ Level III для 6 ударов пулей НАТО 7,62x 51мм. (M80 Ball), а также широко признанную угрозу от AK-47 MSC 7,62x 39мм. патрон, 5,56x 45-55г. M193 и 5,56x 45-62г. федеральный. Связанный. 	Двойной светодиодный индикатор. Износостойкая защита краев. Надписи и изображения возможно изменять на усмотрение заказчика	screen51669157186884
2	Экран	{{"Размер щита","90см. * 50см. * 25см."},{"Форма щита","Одинарная кривая (см. рисунок)"},{"Окно просмотра","Прямоугольник (7см. * 18см.)"},{"Материалы корпуса","Высокоэффективные полиэтиленовые волокна"},{"Оконные материалы","Пулененпробиваемое стекло высокой производительности"},{Вес,16кг.}}	156000	{shield2.png,shield2-back.png}	Экран изготовлен из 100% сверхвысокомолекулярного полиэтилена и соответствует уровню III + NJI. Этот неофициальный уровень охватывает традиционную производительность NIJ Level III для 6 ударов пулей. НАТО 7,62 * 51мм. (М80 Ball), а также признанную угрозу от AK-47 MSC 7,62 * 39мм. патрон, 5,56 * 45-55г. М193 и 5,56 * 45-62г федеральный. Связанный.	Двойной светодиод. Износостойкая защита краев. Надписи и изображения возможно изменять на усмотрение заказчика	screen21669157141452
4	Экран	{{"Размер щита","92,5см. * 60см. * 25см."},{"Форма щита","Одинарная кривая (см. рисунок)"},{"Окно просмотра","Прямоугольник (7см. * 22см.)"},{"Материалы корпуса","Высокоэффективные полиэтиленовые волокна"},{"Оконные материалы","Пулененпробиваемое стекло высокой производительности"},{Вес,25кг.},{Ручка,"(см. рисунок ниже)"}}	184000	{shield4.png,shield4-back.png}	Экран изготовлен из керамики UHMWPE + SIC и соответствует уровню IV NIJ. Этот неофициальный уровень охватывает традиционную производительность уровня IV NIJ для 6 ударов пули 7,62 x 51 мм NATO(M80 Ball), а также широко известную угрозу от AK47 MSC 7,62 x 39 мм, 5,56 x 45 55 г M193 и 5,56 x 45 62 г, 7,62 * 63 M2AP Федеральная облигация.	Двойной светодиодный индикатор и регистратор правоприменения на месте. Износостойкая защита краев. Надписи и изображения возможно изменять на усмотрение заказчика	screen41669157169055
7	Защита для рук	{{Материал,"Ткань Оксфорд 600D, ЭВА, нейлон."},{Размер,"Можно отрегулировать с помощью veclro"},{Вес,"Около 1кг./комлпект"},{Особенности,"Антипламенный, антистойкий"}}	2644	{handsafe.png,handsafe-back.png}	\N	\N	handguard11669157220179
8	Защита для ног	{{Материал,"Ткань Оксфорд 600D, ЭВА, нейлон."},{Размер,"Можно отрегулировать с помощью veclro"},{Вес,"Около 1,4кг./комлпект"},{Особенности,"Антипламенный, антистойкий"}}	3480	{legsafe.png,legsafe-back.png}	\N	\N	handguard21669157233337
9	Палка резиновая	{{Материал,ПП},{Вес,300г./шт.},{Длина,68см.}}	530	{billystick.png}	\N	\N	stick1669157253860
10	Пластиковые наручники	{{Материал,ПП},{Вес,20г./шт.}}	81	{handcuff.png}	\N	\N	handcuff1669157274179
11	Сфера защитная	{{Материал,"Корпус из поликарбоната + козырек из поликарбоната с металлическим покрытием. Прозрачный полкиарбонат."},{"Толщина козырька","Около 3мм."},{Вес,"1,78кг./шт."},{"Защита шеи","Ткань Оксфорд 600D"},{"Время доставки","25 дней после получения оплаты заказа"},{Упаковка,"84,5 * 81,5 * 35см. (1 коробка / 9 штук)"}}	4100	{helmet.png,helmet-back.png}	\N	\N	defsphere1669157291548
6	Экран	{{"Размер щита","70см. * 40см. * 25см."},{"Форма щита","Одинарная кривая (см. рисунок)"},{"Окно просмотра","Прямоугольник (7см. * 22см.)"},{"Материалы корпуса","Высокоэффективные полиэтиленовые волокна"},{"Оконные материалы","Пулененпробиваемое стекло высокой производительности"},{Вес,18кг.},{Ручка,"(см. рисунок ниже)"}}	122000	{shield6.png,shield6-back.png}	Экран изготовлен из керамики UHMWPE + AL2O3 и соответствует уровню IV NIJ. Этот неофициальный уровень охватывает традиционную производительность уровня IV NIJ для 6 ударов пули 7,62 x 51 мм NATO(M80 Ball), а также широко известную угрозу от AK-47 MSC 7,62 x 39мм., 5,56 x 45 55 г M193 и 5,56 x 45-62г., 7,62 * 63 M2AP Федеральная облигация.	Двойной светодиодный индикатор и регистратор правоприменения на месте. Износостойкая защита краев. Надписи и изображения возможно изменять на усмотрение заказчика	screen61669157201411
\.


--
-- Name: backpacks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.backpacks_id_seq', 10, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 5, true);


--
-- Name: clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clients_id_seq', 3, true);


--
-- Name: clothes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clothes_id_seq', 17, true);


--
-- Name: guard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.guard_id_seq', 15, true);


--
-- Name: medicine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.medicine_id_seq', 2, true);


--
-- Name: shields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shields_id_seq', 11, true);


--
-- Name: backpacks backpacks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backpacks
    ADD CONSTRAINT backpacks_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: clothes clothes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clothes
    ADD CONSTRAINT clothes_pkey PRIMARY KEY (id);


--
-- Name: guard guard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guard
    ADD CONSTRAINT guard_pkey PRIMARY KEY (id);


--
-- Name: medicine medicine_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicine
    ADD CONSTRAINT medicine_pkey PRIMARY KEY (id);


--
-- Name: shields shields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shields
    ADD CONSTRAINT shields_pkey PRIMARY KEY (id);


--
-- Name: TABLE categories; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.categories TO postgres;


--
-- PostgreSQL database dump complete
--

