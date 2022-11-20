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
-- Name: backpacks; Type: TABLE; Schema: public; Owner: egorbokov
--

CREATE TABLE public.backpacks (
    id integer NOT NULL,
    name character varying(60),
    image character varying(40),
    sizes integer[]
);


ALTER TABLE public.backpacks OWNER TO egorbokov;

--
-- Name: backpacks_id_seq; Type: SEQUENCE; Schema: public; Owner: egorbokov
--

CREATE SEQUENCE public.backpacks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backpacks_id_seq OWNER TO egorbokov;

--
-- Name: backpacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: egorbokov
--

ALTER SEQUENCE public.backpacks_id_seq OWNED BY public.backpacks.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: egorbokov
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(30),
    link character varying(30),
    image character varying(60)
);


ALTER TABLE public.categories OWNER TO egorbokov;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: egorbokov
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO egorbokov;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: egorbokov
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: clothes; Type: TABLE; Schema: public; Owner: egorbokov
--

CREATE TABLE public.clothes (
    id integer NOT NULL,
    name character varying(60),
    price integer,
    image character varying(60),
    description text[],
    sizes text[]
);


ALTER TABLE public.clothes OWNER TO egorbokov;

--
-- Name: clothes_id_seq; Type: SEQUENCE; Schema: public; Owner: egorbokov
--

CREATE SEQUENCE public.clothes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clothes_id_seq OWNER TO egorbokov;

--
-- Name: clothes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: egorbokov
--

ALTER SEQUENCE public.clothes_id_seq OWNED BY public.clothes.id;


--
-- Name: guard; Type: TABLE; Schema: public; Owner: egorbokov
--

CREATE TABLE public.guard (
    id integer NOT NULL,
    name character varying(70),
    images character varying(50)[],
    description text[],
    price integer,
    sertificate boolean,
    extra_info character varying(300),
    annotation character varying(70),
    extra_complectation text
);


ALTER TABLE public.guard OWNER TO egorbokov;

--
-- Name: guard_id_seq; Type: SEQUENCE; Schema: public; Owner: egorbokov
--

CREATE SEQUENCE public.guard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guard_id_seq OWNER TO egorbokov;

--
-- Name: guard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: egorbokov
--

ALTER SEQUENCE public.guard_id_seq OWNED BY public.guard.id;


--
-- Name: medicine; Type: TABLE; Schema: public; Owner: egorbokov
--

CREATE TABLE public.medicine (
    id integer NOT NULL,
    name character varying(30),
    description text[],
    contents text[],
    price integer,
    image character varying(100)
);


ALTER TABLE public.medicine OWNER TO egorbokov;

--
-- Name: medicine_id_seq; Type: SEQUENCE; Schema: public; Owner: egorbokov
--

CREATE SEQUENCE public.medicine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medicine_id_seq OWNER TO egorbokov;

--
-- Name: medicine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: egorbokov
--

ALTER SEQUENCE public.medicine_id_seq OWNED BY public.medicine.id;


--
-- Name: shields; Type: TABLE; Schema: public; Owner: egorbokov
--

CREATE TABLE public.shields (
    id integer NOT NULL,
    name character varying(50),
    description text[],
    price integer,
    images character varying(40)[],
    annotation text,
    extra_info text
);


ALTER TABLE public.shields OWNER TO egorbokov;

--
-- Name: shields_id_seq; Type: SEQUENCE; Schema: public; Owner: egorbokov
--

CREATE SEQUENCE public.shields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shields_id_seq OWNER TO egorbokov;

--
-- Name: shields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: egorbokov
--

ALTER SEQUENCE public.shields_id_seq OWNED BY public.shields.id;


--
-- Name: backpacks id; Type: DEFAULT; Schema: public; Owner: egorbokov
--

ALTER TABLE ONLY public.backpacks ALTER COLUMN id SET DEFAULT nextval('public.backpacks_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: egorbokov
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: clothes id; Type: DEFAULT; Schema: public; Owner: egorbokov
--

ALTER TABLE ONLY public.clothes ALTER COLUMN id SET DEFAULT nextval('public.clothes_id_seq'::regclass);


--
-- Name: guard id; Type: DEFAULT; Schema: public; Owner: egorbokov
--

ALTER TABLE ONLY public.guard ALTER COLUMN id SET DEFAULT nextval('public.guard_id_seq'::regclass);


--
-- Name: medicine id; Type: DEFAULT; Schema: public; Owner: egorbokov
--

ALTER TABLE ONLY public.medicine ALTER COLUMN id SET DEFAULT nextval('public.medicine_id_seq'::regclass);


--
-- Name: shields id; Type: DEFAULT; Schema: public; Owner: egorbokov
--

ALTER TABLE ONLY public.shields ALTER COLUMN id SET DEFAULT nextval('public.shields_id_seq'::regclass);


--
-- Data for Name: backpacks; Type: TABLE DATA; Schema: public; Owner: egorbokov
--

COPY public.backpacks (id, name, image, sizes) FROM stdin;
1	Рюкзак	/backpack1.png	{50,75,800,100,120}
2	Рюкзак	/backpack2.png	{50,75,800,100,120}
3	Рюкзак	/backpack3.png	{50,75,800,100,120}
4	Рюкзак	/backpack4.png	{50,75,800,100,120}
5	Рюкзак	/backpack5.png	{50,75,800,100,120}
6	Рюкзак	/backpack6.png	{50,75,800,100,120}
7	Рюкзак	/backpack7.png	{50,75,800,100,120}
8	Рюкзак	/backpack8.png	{50,75,800,100,120}
9	Рюкзак	/backpack9.png	{50,75,800,100,120}
10	Рюкзак	/backpack10.png	{50,75,800,100,120}
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: egorbokov
--

COPY public.categories (id, name, link, image) FROM stdin;
3	Аптечки	/medical-kits	/kit.svg
4	Одежда	/clothes	/uniform.svg
5	Щиты и прочее	/shields-and-others	/shield.svg
1	Рюкзаки	/backpacks	/backpack.svg
2	Бронежилеты и шлемы	/armors	/bodyarmor.svg
\.


--
-- Data for Name: clothes; Type: TABLE DATA; Schema: public; Owner: egorbokov
--

COPY public.clothes (id, name, price, image, description, sizes) FROM stdin;
1	Термобелье	3670	/termosuit1.png	{{"Тип продукта",Тремобелье},{Ткань,Полиэстер},{Текстура,Вязание},{"Вес ткани","160-180 г/м2"},{Цвет,Зеленый/Черный},{Стойкость,"4-5 класс"}}	{S,M,L,XL,XXL}
2	Термобелье	2000	/termosuit2.png	{{"Тип продукта",Тремобелье},{Ткань,"65% нейлон, 25% полиэстер, 10% спандекс"},{Текстура,Вязание},{"Вес ткани",220г.},{Цвет,Зеленый/Черный},{Стойкость,"4-5 класс"}}	{S,M,L,XL,XXL}
3	Форма полицейская	6000	/policesuit.png	{{"Тип продукта","Полицейская форма"},{"Ткань рукавов и брюк","ТС 65/35"},{Текстура,РИП-СТОП/САРЖА},{"Вес ткани","190-200 г/м2"},{Цвет,Зеленый/Черный},{"Стойкость цвета","4-5 класс"}}	{S,M,L,XL,XXL}
4	Костюм лягушки	6700	/frogsuit.png	{{"Тип продукта","Костюм лягушки"},{"Ткань рукавов и брюк","ТС 65/35"},{Текстура,РИП-СТОП/САРЖА},{"Вес ткани","210-230 г/м2"},{"Текстура основной ткани","Триктожная хлопчатобумажная ткань"},{Цвет,Зеленый/Черный},{"Стойкость цвета","4-5 класс"}}	{S,M,L,XL,XXL}
5	Униформа БДУ	5500	/bdusuit.png	{{"Тип продукта","Униформа БДУ"},{Ткань,"ТС 65/35"},{Текстура,РИП-СТОП/САРЖА},{"Вес ткани","210-230 г/м2"},{"Текстура основной ткани","Триктожная хлопчатобумажная ткань"},{Цвет,Зеленый/Черный},{"Стойкость цвета","4-5 класс"}}	{S,M,L,XL,XXL}
6	Униформа АКУ	5100	/akusuit.png	{{"Тип продукта","Униформа АКУ"},{Ткань,"ТС 65/35"},{Текстура,РИП-СТОП/САРЖА},{"Вес ткани","210-230 г/м2"},{"Текстура основной ткани","Триктожная хлопчатобумажная ткань"},{Цвет,Зеленый/Черный},{"Стойкость цвета","4-5 класс"}}	{S,M,L,XL,XXL}
7	Шапка флисовая	300	/beanie.png	{{"Тип продукта","Шапка флисовая"},{Ткань,Полиэстер},{Текстура,Вязание},{"Вес ткани","0,05г."},{Цвет,"Подбор цвета"},{"Стойкость цвета","4-5 класс"}}	{S,M,L,XL,XXL}
8	Носки зимние	200	/socks.png	{{"Тип продукта","Носки зимние"},{Ткань,Хлопок},{Текстура,Вязание},{"Вес ткани","0,18г."},{Цвет,"Подбор цвета"},{"Стойкость цвета","4-5 класс"}}	{S,M,L,XL,XXL}
11	Очки баллистические	1100	/glasses.png	{{"Тип продукта",Очки},{Материал,"АБС, ТПУ, ПК"},{"Цвет рамы","Зеленый, черный, комуфляж"},{"Стойкость цвета","4-5 класс"}}	\N
9	Берцы, обувь зимняя	2500	/foots.png	{{"Тип продукта",Обувь},{Ткань,"Двухсторонний флис"},{"Вес ткани","0,4кг."},{Цвет,"Черный, зеленый, бежевый"},{"Стойкость цвета","4-5 класс"}}	{39,40,41,42,43,44,45,46}
10	Тактическая сумка	750	/tacticalbag.png	{{"Тип продукта",Сумка},{Ткань,"Оксфорд 800D"},{Цвет,"Черный, камуфляж СР, песочный"},{"Стойкость цвета","4-5 класс"}}	\N
12	Балаклава	330	/balaklava.png	{{"Тип продукта",Балаклава},{Ткань,Полиэстер},{"Вес ткани","0,05г."},{Цвет,"Черный, армейский, коричневый"},{"Стойкость цвета","4-5 класс"}}	\N
13	Спальный мешок	2500	/sleepbag.png	{{"Тип продукта","Спальный мешок"},{Структура,Соарер},{Масса,2000г.},{"Техничекие характеристики","(Д*Ш) 180*30"},{"Стойкость цвета","4-5 класс"}}	\N
14	Мультитул	2200	/multitool.png	{{"Тип продукта",Мультитул},{"Стойкость цвета","4-5 класс"}}	\N
15	Наколенники/Налокотники	700	/kneedefender.png	{{"Тип продукта","Зашитное снаряжение"},{Вес,"0,35кг."},{Материал,"Пластик, губка, ткань"},{Цвет,"Черный, зеленый, серый"},{"Защитные части","Локоть, колено"}}	\N
16	Наколенники/Налокотники	700	/kneedefender2.png	{{"Тип продукта","Зашитное снаряжение"},{Вес,"0,35кг."},{Материал,"Пластик, губка, ткань"},{Цвет,"Черный, зеленый, серый"},{"Защитные части","Локоть, колено"}}	\N
17	Перчатки тактические	700	/gloves.png	{{"Тип продукта",Перчатки},{Ткань,"Микрофайбер, неопрен, пластик"},{Текстура,Вязание},{"Вес ткани","0,180г."},{Цвет,"Подбор цвета"},{"Стойкость цвета","4-5 класс"}}	{S,M,L,XL,XXL}
\.


--
-- Data for Name: guard; Type: TABLE DATA; Schema: public; Owner: egorbokov
--

COPY public.guard (id, name, images, description, price, sertificate, extra_info, annotation, extra_complectation) FROM stdin;
2	Пуленепробиваемый шлем	{helemt2.png,helmet2-side.png}	{{Материал,Полиэтилен},{Размер,L},{Вес,"1,5кг."},{"Пуленепробиваемый рейтинг","NIJ IIIA (0,44мм.)"},{Цвет,"Черный, армейский, зеленый, песочный"}}	13000	t	\N	Есть отчет об испытаниях	\N
1	Пуленепробиваемый шлем М88	{helemt1.png,helmet1-side.png}	{{Материал,Полиэстер},{Размер,L},{Вес,"1,4кг."},{"Пуленепробиваемый рейтинг","NIJ IIIA (0,44мм.)"},{Цвет,"Черный, армейский, зеленый, песочный"}}	8200	t	\N	Есть отчет об испытаниях	\N
3	Пуленепробиваемый шлем	{helemt2.png,helmet2-side.png}	{{Материал,РЕ},{Размер,L},{Вес,"1,45кг."},{"Пуленепробиваемый рейтинг","NIJ IIIA (0,44мм.)"},{Цвет,"Черный, армейский, зеленый, песочный"}}	15000	t	\N	Есть отчет об испытаниях	\N
4	Пуленепробиваемая вставная пластина 	{plastine1.png,plastine1-side.png}	{{Производительность,III},{"Защитная зона","0,075m2"},{"Баллистический материал",PE+AL2O3},{"Материал корпуса","Яркий водонепроницаемый полиэстер"},{Размер,250*300мм.},{Вес,"ок. 2,35+- 0,05кг/шт."}}	10440	t	Надписи и изображения возможно изменять на усмотрение заказчика.	Есть отчет об испытаниях	\N
5	Пуленепробиваемая вставная пластина 	{plastine1.png,plastine1-side.png}	{{Производительность,III},{"Защитная зона","0,075m2"},{"Баллистический материал",PE+SIC},{"Материал корпуса","Яркий водонепроницаемый полиэстер"},{Размер,250*300мм.},{Вес,"ок. 2,05+- 0,05кг/шт."}}	15000	t	Надписи и изображения возможно изменять на усмотрение заказчика.	Есть отчет об испытаниях	\N
6	Пуленепробиваемая вставная пластина 	{plastine1.png,plastine1-side.png}	{{Производительность,IV},{"Защитная зона","0,075m2"},{"Баллистический материал",PE+AL2O3},{"Материал корпуса","Яркий водонепроницаемый полиэстер"},{Размер,250*300мм.},{Вес,"ок. 2,85+- 0,05кг/шт."}}	12200	f	Надписи и изображения возможно изменять на усмотрение заказчика.	Есть отчет об испытаниях	\N
7	Пуленепробиваемая вставная пластина 	{plastine1.png,plastine1-side.png}	{{Производительность,IV},{"Защитная зона","0,075m2"},{"Баллистический материал",PE+SIC},{"Материал корпуса","Яркий водонепроницаемый полиэстер"},{Размер,250*300мм.},{Вес,"ок. 2,45+- 0,05кг/шт."}}	17400	f	Надписи и изображения возможно изменять на усмотрение заказчика.	Есть отчет об испытаниях	\N
8	Разгрузочный жилет	{bodyguard1.png}	\N	3000	t	\N	Есть отчет об испытаниях	\N
9	Пуленепробиваемый жилет	{bodyguard2.png}	{{Производительность,IIIA},{"Защитное покрытие","спереди, сзади, сбоку, на шее и в области живота"},{"Защитная зона","0.52-0,62m2"},{"Баллистический материал","Многослойный UHMW-PE (полиэлителн)"},{"Противотравматическая накладка","Изготовлена из поликарбоната (ПК) и высокой плотности"},{Подкладка,Съемная},{"Материал корпуса","Яркий водонепроницаемый нейлон"},{Резмер,"XL, 2XL, 3XL"},{Вес,"ок. 2,65-7,25г/шт."},{Цвет,"Белый, черный, OG, синий, по запросу"}}	70800	t	Варианты пуленепробиваемой пластины: \n    1. Стандартная мягкая пуленепробиваемая панель IIIA	Есть отчет об испытаниях	\N
\.


--
-- Data for Name: medicine; Type: TABLE DATA; Schema: public; Owner: egorbokov
--

COPY public.medicine (id, name, description, contents, price, image) FROM stdin;
1	Аптечка	{{"Тип продукта",Аптечка},{"Вес ткани",2кг},{Размер,"20*15*13 см"},{Цвет,"Черный, армейский, коричневый"},{"Стойкость цвета","4-5 класс"}}	{"Многофункциональный топор-молот","Cапёрная лопата",Ручка,Нож,"Карманный фонарик (без батарейки) (1шт.)","Пряжка для бутылки","Инструмент для розжига","Карабины (2шт.)","Сигнальный свисток","Проволочная пила",Компас,"Инструмент для обвязывания",Жгут,"Противоскользящие перчатки",Мультитул,Стропа,Аптечка,"Ватная палочка (30шт.)","Приспособления для ловли рыбы","Продувательная труба","Флюоресцентные палочки (2шт.)",Ножницы,Пинцет,"Бинты бандажные (2шт.)","Булавки (20шт.)","Скотч медицинский","Кровоостанавливающий жгут","Пластырь (20шт.)","Спиртовая салфетка (10шт.)","Повидон-Йод (10шт.)","Марлевая салфетка","Косыночная повязка","Дождевик (2шт.)","Салфетка первой помощи","Аварийная палатака","Военная сумка"}	5200	/medical-kit.png
2	Подсумок под аптечки	{{"Тип продукта","Сумка под аптечки"},{"Вес ткани","0,25кг"},{Ткань,"600D нейлон"},{Размер,15*21*11см},{Цвет,"Черный, красный, оранжевый"},{"Стойкость цвета","4-5 класс"}}	\N	700	/medical-subkit.png
\.


--
-- Data for Name: shields; Type: TABLE DATA; Schema: public; Owner: egorbokov
--

COPY public.shields (id, name, description, price, images, annotation, extra_info) FROM stdin;
1	Экран	{{Светопропускание,84%},{Вес,"Около 2,7кг/шт."},{"Прочность соединениня захвата","> 500N"},{"Прочность соединения ремня безопасности","> 500H"},{Размер,"1100мм * 600мм * 4мм"},{Feature,"Анти-бунт, анти-удар"},{Упаковка,"112см. * 58см. * 24см, 5пкс/кор"}}	3600	{shield1.png,shield1-back.png}	Экран с прокладкой из пены Eva одна ручка сделана из лямки, одна ручка сделана из металла, покрытого резиной.	\N
2	Экран	{{"Размер щита","90см. * 50см. * 25см."},{"Форма щита","Одинарная кривая (см. рисунок)"},{"Окно просмотра","Прямоугольник (7см. * 18см.)"},{"Материалы корпуса","Высокоэффективные полиэтиленовые волокна"},{"Оконные материалы","Пулененпробиваемое стекло высокой производительности"},{Вес,16кг.}}	156000	{shield2.png,shield2-back.png}	Экран изготовлен из 100% сверхвысокомолекулярного полиэтилена и соответствует уровню III + NJI. Этот неофициальный уровень охватывает традиционную производительность NIJ Level III для 6 ударов пулей. НАТО 7,62 * 51мм. (М80 Ball), а также признанную угрозу от AK-47 MSC 7,62 * 39мм. патрон, 5,56 * 45-55г. М193 и 5,56 * 45-62г федеральный. Связанный.	Двойной светодиод. Износостойкая защита краев. Надписи и изображения возможно изменять на усмотрение заказчика
3	Экран	{{"Размер щита","90см. * 50см. * 25см."},{"Форма щита","Одинарная кривая (см. рисунок)"},{"Окно просмотра","Прямоугольник (7см. * 22см.)"},{"Материалы корпуса","Высокоэффективные полиэтиленовые волокна"},{"Оконные материалы","Пулененпробиваемое стекло высокой производительности"},{Вес,16кг.}}	146000	{shield3.png,shield3-back.png}	Экран изготовлен из 100% сверхвысокомолекулярного полиэтилена и соответствует уровню III + NJI. Этот неофициальный уровень охватывает традиционную производительность NIJ Level III для 6 ударов пулей. НАТО 7,62 * 51мм. (М80 Ball), а также признанную угрозу от AK-47 MSC 7,62 * 39мм. патрон, 5,56 * 45-55г. М193 и 5,56 * 45-62г федеральный. Связанный.	Двойной светодиод. Износостойкая защита краев. Надписи и изображения возможно изменять на усмотрение заказчика
4	Экран	{{"Размер щита","92,5см. * 60см. * 25см."},{"Форма щита","Одинарная кривая (см. рисунок)"},{"Окно просмотра","Прямоугольник (7см. * 22см.)"},{"Материалы корпуса","Высокоэффективные полиэтиленовые волокна"},{"Оконные материалы","Пулененпробиваемое стекло высокой производительности"},{Вес,25кг.},{Ручка,"(см. рисунок ниже)"}}	184000	{shield4.png,shield4-back.png}	Экран изготовлен из керамики UHMWPE + SIC и соответствует уровню IV NIJ. Этот неофициальный уровень охватывает традиционную производительность уровня IV NIJ для 6 ударов пули 7,62 x 51 мм NATO(M80 Ball), а также широко известную угрозу от AK47 MSC 7,62 x 39 мм, 5,56 x 45 55 г M193 и 5,56 x 45 62 г, 7,62 * 63 M2AP Федеральная облигация.	Двойной светодиодный индикатор и регистратор правоприменения на месте. Износостойкая защита краев. Надписи и изображения возможно изменять на усмотрение заказчика
5	Экран	{{"Размер щита","90см. * 60см. * 25см."},{"Форма щита","Одинарная кривая (см. рисунок)"},{"Окно просмотра","Прямоугольник (7см. * 22см.)"},{"Материалы корпуса","Высокоэффективные полиэтиленовые волокна"},{"Оконные материалы","Пулененпробиваемое стекло высокой производительности"},{Вес,16кг.}}	184000	{shield5.png,shield5-back.png}	Экран изготовлен из 100% сверхвысокомолекулярного полиэтилена и соответствует уровню III+ NIJ. Этот неофициальный уровень охватывает традиционную производительность NIJ Level III для 6 ударов пулей НАТО 7,62x 51мм. (M80 Ball), а также широко признанную угрозу от AK-47 MSC 7,62x 39мм. патрон, 5,56x 45-55г. M193 и 5,56x 45-62г. федеральный. Связанный. 	Двойной светодиодный индикатор. Износостойкая защита краев. Надписи и изображения возможно изменять на усмотрение заказчика
6	Экран	{{"Размер щита","70см. * 40см. * 25см."},{"Форма щита","Одинарная кривая (см. рисунок)"},{"Окно просмотра","Прямоугольник (7см. * 22см.)"},{"Материалы корпуса","Высокоэффективные полиэтиленовые волокна"},{"Оконные материалы","Пулененпробиваемое стекло высокой производительности"},{Вес,18кг.},{Ручка,"(см. рисунок ниже)"}}	122000	{shield6.png,shield6-back.png}	Экран изготовлен из керамики UHMWPE + AL2O3 и соответствует уровню IV NIJ. Этот неофициальный уровень охватывает традиционную производительность уровня IV NIJ для 6 ударов пули 7,62 x 51 мм NATO(M80 Ball), а также широко известную угрозу от AK-47 MSC 7,62 x 39мм., 5,56 x 45 55 г M193 и 5,56 x 45-62г., 7,62 * 63 M2AP Федеральная облигация.	Двойной светодиодный индикатор и регистратор правоприменения на месте. Износостойкая защита краев. Надписи и изображения возможно изменять на усмотрение заказчика
7	Защита для рук	{{Материал,"Ткань Оксфорд 600D, ЭВА, нейлон."},{Размер,"Можно отрегулировать с помощью veclro"},{Вес,"Около 1кг./комлпект"},{Особенности,"Антипламенный, антистойкий"}}	2644	{handsafe.png,handsafe-back.png}	\N	\N
8	Защита для ног	{{Материал,"Ткань Оксфорд 600D, ЭВА, нейлон."},{Размер,"Можно отрегулировать с помощью veclro"},{Вес,"Около 1,4кг./комлпект"},{Особенности,"Антипламенный, антистойкий"}}	3480	{legsafe.png,legsafe-back.png}	\N	\N
9	Палка резиновая	{{Материал,ПП},{Вес,300г./шт.},{Длина,68см.}}	530	{billystick.png}	\N	\N
10	Пластиковые наручники	{{Материал,ПП},{Вес,20г./шт.}}	81	{handcuff.png}	\N	\N
11	Сфера защитная	{{Материал,"Корпус из поликарбоната + козырек из поликарбоната с металлическим покрытием. Прозрачный полкиарбонат."},{"Толщина козырька","Около 3мм."},{Вес,"1,78кг./шт."},{"Защита шеи","Ткань Оксфорд 600D"},{"Время доставки","25 дней после получения оплаты заказа"},{Упаковка,"84,5 * 81,5 * 35см. (1 коробка / 9 штук)"}}	4100	{helmet.png,helmet-back.png}	\N	\N
\.


--
-- Name: backpacks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: egorbokov
--

SELECT pg_catalog.setval('public.backpacks_id_seq', 10, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: egorbokov
--

SELECT pg_catalog.setval('public.categories_id_seq', 5, true);


--
-- Name: clothes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: egorbokov
--

SELECT pg_catalog.setval('public.clothes_id_seq', 17, true);


--
-- Name: guard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: egorbokov
--

SELECT pg_catalog.setval('public.guard_id_seq', 9, true);


--
-- Name: medicine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: egorbokov
--

SELECT pg_catalog.setval('public.medicine_id_seq', 2, true);


--
-- Name: shields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: egorbokov
--

SELECT pg_catalog.setval('public.shields_id_seq', 11, true);


--
-- Name: backpacks backpacks_pkey; Type: CONSTRAINT; Schema: public; Owner: egorbokov
--

ALTER TABLE ONLY public.backpacks
    ADD CONSTRAINT backpacks_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: egorbokov
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: clothes clothes_pkey; Type: CONSTRAINT; Schema: public; Owner: egorbokov
--

ALTER TABLE ONLY public.clothes
    ADD CONSTRAINT clothes_pkey PRIMARY KEY (id);


--
-- Name: guard guard_pkey; Type: CONSTRAINT; Schema: public; Owner: egorbokov
--

ALTER TABLE ONLY public.guard
    ADD CONSTRAINT guard_pkey PRIMARY KEY (id);


--
-- Name: medicine medicine_pkey; Type: CONSTRAINT; Schema: public; Owner: egorbokov
--

ALTER TABLE ONLY public.medicine
    ADD CONSTRAINT medicine_pkey PRIMARY KEY (id);


--
-- Name: shields shields_pkey; Type: CONSTRAINT; Schema: public; Owner: egorbokov
--

ALTER TABLE ONLY public.shields
    ADD CONSTRAINT shields_pkey PRIMARY KEY (id);


--
-- Name: TABLE categories; Type: ACL; Schema: public; Owner: egorbokov
--

GRANT ALL ON TABLE public.categories TO api_user;


--
-- PostgreSQL database dump complete
--

