create table categories
(
    tag             varchar(1000) not null
        constraint categories_pkey
            primary key,
    countofproducts integer,
    description     varchar(1000),
    name            varchar(1000) not null
);

alter table categories
    owner to master;

create table products
(
    id           bigint           not null
        constraint products_pkey
            primary key,
    description  varchar(1000)     not null,
    name         varchar(1000)     not null,
    price        double precision not null,
    rating       integer          not null,
    category_tag varchar(1000)
        constraint fk8b7b275uxvous7wwcaf8slajs
            references categories
);

alter table products
    owner to master;

create table users
(
    id         bigint       not null
        constraint users_pkey
            primary key,
    address    varchar(1000),
    email      varchar(1000),
    login      varchar(1000) not null,
    name       varchar(1000) not null,
    password   varchar(1000) not null,
    patronymic varchar(1000),
    phone      varchar(1000),
    surname    varchar(1000) not null
);

alter table users
    owner to master;

create table carts
(
    user_id    bigint not null
        constraint fkb5o626f86h46m4s7ms6ginnop
            references users,
    product_id bigint not null
        constraint fkmd2ap4oxo3wvgkf4fnaye532i
            references products
);

alter table carts
    owner to master;

create table favorite_lists
(
    user_id    bigint not null
        constraint fk9lpfmkjj8x0sicirsyhhp48ke
            references users,
    product_id bigint not null
        constraint fkiopt6igcp7l9ca9vgixxnba4q
            references products
);

alter table favorite_lists
    owner to master;


INSERT INTO public.categories (tag, countofproducts, description, name) VALUES ('coffee_zernovoi', 15, 'Растет ли кофе в Италии? Конечно нет… Откуда же тогда этот устойчивый фразеологизм: «Итальянский кофе»? Кофе проникает на европейский континент именно через Италию. В начале XVII века его активно начали завозить и торговать им венецианские купцы. Довольно быстро напиток завоевал сердца самих итальянцев. Этот напиток, наверное, как нельзя лучше ложится на темперамент жителей Апеннинского полуострова. И как бы то ни было, итальянцы открыли особую страницу кофейной культуры. Придумали лучшие в мире кофемашины, дозаторы, кофейники, кофемолки, чашечки, ложечки и совершенно новый, неповторимый вкус напитка. Они создали тот самый итальянский кофе! И как сама Италия, разнообразен и многогранен итальянский кофе. Стремительный и деликатный кофе северных областей, благоухающий специями и слегка горчащим вкусом кофе юга страны.', 'Зерновой кофе');

INSERT INTO public.categories (tag, countofproducts, description, name) VALUES ('tea', 12, 'Чай - это напиток с богатым культурным наследием и древнейшей историей, которая насчитывает не одно тысячелетие. В более широком современном понимании чаем может называться напиток, приготовленный не только из листьев и почек чайных кустов, но и из любого растительного сырья, при условии, что оно было предварительно собрано и подготовлено к завариванию.', 'Чай');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (12, 'В состав входит Columbia Supremo - один из самых вкусовых кофейных сортов. Его характеризуют ярко выраженная лимонная кислинка, сладость с оттенками какао и  нейтральное послевкусие. Один из лучших в мире сортов Арабики, выращенный на склонах Анд на высоте 1000-1800 м над уровнем моря. Благодаря широкому применению ручного труда при сборе и обработке, этот кофе обладает высочайшим качеством.', 'Зерновой кофе Alta Roma Platino 1 кг', 1090, 5, 'coffee_zernovoi');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (14, 'Lavazza Qualità Rossa представляет собой уникальную смесь робусты и арабики, обладающей гладким, хорошо округленным ароматом. Универсальная смесь, великолепная с молоком или без, создана для приготовления превосходного кофе с взбитыми сливками и латте.', 'Зерновой кофе Lavazza Qualita Rossa 0.5 кг', 495, 5, 'coffee_zernovoi');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (21, 'Бодрящий, тонизирующий напиток, несущий силу горных трав, собранных в предгорьях Алтая. Повышает работоспособность при повышенных умственных и физических нагрузках. Пригоден для ежедневного употребления без ограничений.', 'Чай Di Maestri Черный монастырский сбор 80 г', 790, 5, 'tea');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (22, 'Прекрасный травяной напиток, несущий массу полезных витаминов – дар чистой природы Алтайских гор. Пригоден для ежедневного употребления без ограничений. Дарит сбалансированный, чуть терпковатый вкус, отличный букет ароматов. Пригоден для ежедневного употребления без ограничений.', 'Чай Di Maestri Травяной монастырский сбор 80 г', 790, 5, 'tea');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (23, 'Замечательный зеленый чай, скрученный в форме жемчужин, ароматизирован цветами чайного жасмина. Благодаря жасмину обладает согревающим действием, хорош в сырую погоду. Дарит оригинальный вкус качественного зеленого чая и нежный аромат жасмина. Способ заваривани: Заваривать водой, доведенной до кипения и немного остуженной (t~ 80 С), из соотношения 2 г чая на 100 мл воды. Настоять 1-2 минуты и разлить по чашкам. Можно заваривать несколько раз, постепенно увеличивая время настаивания.', 'Чай китайский Di Maestri Жасминовые жемчужины дракона 50 г', 690, 5, 'tea');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (24, 'В переводе c китайского — Железная Бодхисаттва Милосердия. Это наиболее известный и знаменитый улун, родом с юга провинции Фуцзянь, уезд Аньси. На этой территории его выращивали монахи начиная с времен правления династии Тан (VII—IX вв.).
Те Гуань Инь — это крупнолистовой, полу-ферментированный улун. В Китае его относят к сине-зеленым или бирюзовым чаям. Те Гуань Инь занимает положение между зеленым и красным (в России — черным) чаем. Для его производства используют более зрелые чайные листья, чем для зеленого чая, а слабая по сравнению с черным чаем ферментация позволяет сохранить витамины и танин, а так же придает ему уникальный вкус и ярко-выраженный пряно-фруктовый аромат.
Цена чая может сильно отличаться, в зависимости от времени сбора и сортности. Весенний сбор составляет 50% от годового, соответственно купить такой те гуань инь гораздо проще и стоит он дешевле, осенний сбор составляет лишь 15% и заканчивается на рынке гораздо быстрее, отражаясь и на цене.', 'Чай китайский DiMaestri Те Гуань Инь 50 г', 490, 5, 'tea');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (25, 'Один из знаменитых чаёв Китая – утёсный улун Да Хун Пао или Большой Красный Халат – получил это имя благодаря своим чудесным свойствам и потрясающему аромату. Сейчас входит в десятку лучших сортов чая в Китае, да и во всём мире.
Большой Красный Халат на вкус сладкий, с лёгкой кислинкой, с ароматами фруктов и тропических цветов. Настой красивого янтарно-красного цвета. Пустая чашка после него пахнет выпечкой и молодым мёдом. Действие Да Хун Пао мощное: он сильно бодрит, снимает усталость, освежает ум, убирает суетливость, повышает сосредоточенность и терпение.', 'Чай китайский Di Maestri Да Хун Пао Большой красный халат 50 г', 490, 5, 'tea');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (26, 'Пуэр – это разновидность чая, который производится из листьев многолетних диких деревьев, располагающихся на юго-востоке Китая, а также в тропических странах Мьянме, Вьетнаме, Лаосе, на востоке Индии. Листьям и побегам характерен незначительный пушок. Отличить нужные для производства пуэра деревья можно с помощью почек и листов, они значительно больше стандарта. Помимо этого им свойственен особый состав, влияющий на вкус и аромат чая, его стойкость. Ценность пуэра возрастает в связи с его труднодоступностью.', 'Чай китайский Di Maestri Шу Пуэр 50 г', 490, 5, 'tea');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (2, 'Свежеобжаренная эспрессо-смесь с независимым сицилийским характером.
Богатый нюансами аромат с преобладающими тонами специй и шоколада, вкус, отличающийся умеренной терпкостью, с шоколадно-ореховыми нотками и цитрусовыми обертонами. Послевкусие продолжительное, с оттенками абрикоса и миндаля.
В составе смеси арабика из Колумбии и Гватемалы (80%) и индонезийская робуста (20%).
Срок годности 1,5 года с даты упаковки (дату упаковки смотрите на коробке).', 'Кофе зерновой Di Maestri Сорт Sicilia (Сицилия) 250 г', 440, 5, 'coffee_zernovoi');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (15, 'Арабика для этого кофе растет в ливневых лесах Перу, Колумбии, Гондурас. Зерна собираются вручную. Смесь Тьерра, была сделана мастерами Lavazza как отзыв на призывы природы. Зов Земли, дающей зерна, зов стихий дающие характер, зов солнца согревающей лучами, зов обдувающего и охладжающего ветра. А также ответ на призыв мастеров своего дела - сообщества фермеров, из Перу, Гондураса, Колумбии, производящих такой кофе, который получает признание и призы. Tierra - 100% качество гарантированное сертификатом Rainforest Alliance &trade,: отборные зерна лучшего происхождения с выраженным интенсивным ароматом для уникальных блендов, которые отвечают самым высоким стандартам качества с точки зрения сырья, обжига и упаковки.
Происхождение: кофе с небольших плантаций или конкретных районов выращивания.
Великолепный бленд из сладких и ароматных зерен 100% мытой арабики, выращенной на плантациях в соответствии с требованиями альянса Rainforest Alliance CertifiedTM. Вкус: сбалансированный. Происхождение: 100% зерна арабики из Центральной и Южной Америки, аромат и интенсивный вкус которых гармонично сочетается с цветочным ароматом и нежной кислинкой кофе из Южной и Центральной Америки. Композиция: 100% Aрабика
Основные ноты: сухофрукты и цветы', 'Зерновой кофе Lavazza Tierra 1 кг', 1350, 5, 'coffee_zernovoi');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (3, 'Свежеобжаренный кофе da Vinci от бренда Di Maestri - это вкус творчества, вдохновения и успеха.
Вкус, примечательный мягкими карамельными тонами с деликатными нотками пряностей и какао. Долгое послевкусие примечательно тёплыми шоколадно-бисквитными тонами.
Эспрессо-смесь da Vinci состоит из сортов арабики, произрастающей на плантациях Бразилии, Колумбии и Гватемалы. Бленд да Винчи предназначен для приготовления в автоматических кофемашинах. Впрочем, Вы сможете по достоинству оценить этот кофе, приготовив его во френч-прессе или сварив в джезве.
Срок годности 1,5 года с даты упаковки (дату упаковки смотрите на коробке).', 'Кофе зерновой Di Maestri Сорт da Vinci (да Винчи) 1000 г', 1590, 5, 'coffee_zernovoi');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (6, 'Европейцы пристрастились к кофе благодаря предприимчивым венецианским купцам, в самом конце XVI века привезшим ароматные зёрна из Египта.
Североитальянские традиции обжарки положены в основу Di Maestri Venezia. Бленд с венецианским колоритом раскрывается мягким сливочным вкусом со сладко-кисловатыми оттенками и медовым послевкусием.
Свежеобжаренная эспрессо-смесь, на 100% состоящая из арабики (регионы произрастания - Бразилия, Гватемала, Эфиопия), порадует своим вкусом как владельцев зерновых кофемашин, так и ценителей кофе по-восточному.
Срок годности 1,5 года с даты упаковки (дату упаковки смотрите на коробке).', 'Кофе зерновой Di Maestri Сорт Venezia (Венеция) 1000 г', 1690, 5, 'coffee_zernovoi');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (13, 'Кофе свежей обжарки Легион от Di Maestri - это сбалансированный букет и плотный вкус с карамельно-ореховыми нотками и продолжительным послевкусием, где основная нота шоколада эффектно сочетается с цукатно-цитрусовым оттенком.
Бленд Legion состоит из бразильской и гватемальской арабики (70%) и индонезийской робусты (30%). Вкус кофе Легион превосходно раскрывается как в классическом эспрессо, так и в различных вариантах кофе с молоком.
Срок годности 1,5 года с даты упаковки (дату упаковки смотрите на коробке).', 'Кофе зерновой Di Maestri Сорт Legion (Легион) 250 г', 410, 5, 'coffee_zernovoi');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (27, 'Няй сян молочный улун - это среднеферментированный тайваньский улун с приятным молочным ароматом. Най сян признается одним из самых популярных за пределами Китая. Его насыщенный сливочно-карамельный аромат привлекает новизной и, вместе с тем, не отпугивает излишней необычностью. Най сян известен широкой публике как молочный улун.', 'Чай китайский Di Maestri Най Сян Молочный улун 100 г', 690, 5, 'tea');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (5, 'Европейцы пристрастились к кофе благодаря предприимчивым венецианским купцам, в самом конце XVI века привезшим ароматные зёрна из Египта.
Североитальянские традиции обжарки положены в основу Di Maestri Venezia. Бленд с венецианским колоритом раскрывается мягким сливочным вкусом со сладко-кисловатыми оттенками и медовым послевкусием.
Свежеобжаренная эспрессо-смесь, на 100% состоящая из арабики (регионы произрастания - Бразилия, Гватемала, Эфиопия), порадует своим вкусом как владельцев зерновых кофемашин, так и ценителей кофе по-восточному.
Срок годности 1,5 года с даты упаковки (дату упаковки смотрите на коробке).', 'Кофе зерновой Di Maestri Сорт Venezia (Венеция) 250 г', 490, 5, 'coffee_zernovoi');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (1, 'Классификация нашего кофе насчитывает десять разных профилей в зависимости от аромата, насыщенности и вкуса. Каждый профиль является результатом нашего мастерства смешивания и обжарки кофе, которое дает различную интенсивность:
5-7: сбалансированный кофе с богатым ароматом.
Qualità Oro: купаж из отборных сортов сладкой 100% арабики
Смесь с интенсивным вкусом и ароматом для гураманов. Подходит для любого способа приготовления.', 'Зерновой кофе Lavazza Qualita Oro 1 кг', 905, 5, 'coffee_zernovoi');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (4, 'Основательный насыщенный вкус кофе "Колизей" создаёт неповторимую атмосферу уютной римской кофейни с видом на прославленный амфитеатр.
В букете "Колизея" свежесть, свойственная арабике (содержание - 60%), уравновешивается сдержанной терпкостью робусты (40%).Сбалансированный терпко-сладкий вкус этого бленда дополняется карамельно-медовым послевкусием.
Свежеобжаренная эспрессо-смесь Colosseo идеально подходит как для автоматических кофемашин, так и для вендинговых аппаратов.
Срок годности 1,5 года с даты упаковки (дату упаковки смотрите на коробке).', 'Кофе зерновой Di Maestri Сорт Colosseo (Колизей) 1000 г', 1290, 5, 'coffee_zernovoi');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (11, 'Крепкая смесь итальянской обжарки для эспрессо. Зерна из Бразилии и Центральной Америки. Вкус плотный и насыщенный. Обжарка темная
Кофе с добавлением алкоголя – отличный способ согреться в холодную погоду. А еще это прекрасный аккомпанемент к десерту, который поможет раскрыть его вкус. Во многих культурах принято выпивать порцию алкоголя после сытного обеда (так называемый диджестив), так почему бы не совместить его с чашкой ароматного крепкого кофе?
Пожалуй, самым популярным кофейно-алкогольным напитком является латте или американо с добавлением «Бэйлиса». Густая сливочная текстура, мягкий и сладкий вкус ликера отлично подходят для завершения трапезы в паре с кусочком шоколадного торта. А в выходной день такой напиток можно выпить даже на завтрак, особенно если он поздний.', 'Зерновой кофе Paulig Espresso Originale 1 кг', 1099, 5, 'coffee_zernovoi');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (8, 'Свежеобжаренная эспрессо-смесь с независимым сицилийским характером.
Богатый нюансами аромат с преобладающими тонами специй и шоколада, вкус, отличающийся умеренной терпкостью, с преобладающими шоколадно-ореховыми нотками и цитрусовыми обертонами. Послевкусие продолжительное, с оттенками абрикоса и миндаля.
В составе смеси арабика из Колумбии и Гватемалы (80%) и индонезийская робуста (20%).
Срок годности 1,5 года с даты упаковки (дату упаковки смотрите на коробке).', 'Кофе зерновой Di Maestri Сорт Sicilia (Сицилия) 1000 г', 1490, 5, 'coffee_zernovoi');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (10, 'Свежеобжаренный кофе da Vinci от бренда Di Maestri - это вкус творчества, вдохновения и успеха.
Вкус, примечательный мягкими карамельными тонами с деликатными нотками пряностей и какао. Долгое послевкусие примечательно тёплыми шоколадно-бисквитными тонами.
Эспрессо-смесь da Vinci состоит из сортов арабики, произрастающей на плантациях Бразилии, Колумбии и Гватемалы. Бленд да Винчи предназначен для приготовления в автоматических кофемашинах. Впрочем, Вы сможете по достоинству оценить этот кофе, приготовив его во френч-прессе или сварив в джезве.
Срок годности 1,5 года с даты упаковки (дату упаковки смотрите на коробке).', 'Кофе зерновой Di Maestri Сорт da Vinci (да Винчи) 250 г', 470, 5, 'coffee_zernovoi');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (9, 'Один из самых популярных брендов. Отлично сбалансированная смесь из зерен арабики. Вкус мягкий, бархатистый, аромат полный и насыщенный, пенка-крема небольшая
PAULIG ARABICA
Paulig Arabica – это прекрасно сбалансированная смесь тщательно отобранных кофейных зерен из Южной и Центральной Америки. Все богатство аромата медленно созревающих зерен из Центральной Америки в сочетании со сладкими нотами и бархатистым вкусом бразильских сортов гарантируют Вам наслаждение. 100% Арабика.', 'Зерновой кофе Paulig Arabica 1 кг', 600, 5, 'coffee_zernovoi');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (7, 'Основательный насыщенный вкус кофе "Колизей" создаёт неповторимую атмосферу уютной римской кофейни с видом на прославленный амфитеатр.
В букете "Колизея" свежесть, свойственная арабике (содержание - 60%), уравновешивается сдержанной терпкостью робусты (40%).Сбалансированный терпко-сладкий вкус этого бленда дополняется карамельно-медовым послевкусием.
Свежеобжаренная эспрессо-смесь Colosseo идеально подходит как для автоматических кофемашин, так и для вендинговых аппаратов.
Срок годности 1,5 года с даты упаковки (дату упаковки смотрите на коробке).', 'Кофе зерновой Di Maestri Сорт Colosseo (Колизей) 250 г', 390, 5, 'coffee_zernovoi');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (16, 'Один из самых знаменитых китайских чаев. Производится в регионе Аньси. Обладает богатейшим изысканным букетом ароматов и уникальным ярким и устойчивым вкусом. Несет гармонизирующее воздействие. Этот чай по праву можно называть «королевой» улунов.
Заваривать водой, доведенной до кипения (t~95C) из соотношения 2 г чая на 100 мл воды. Настоять 1-2 минуты и разлить по чашкам. Можно заваривать несколько раз, постепенно увеличивая время настаивания.', 'Чай Di Maestri Deluxe Железная Бодхисаттва Гуаньинь 50 г', 990, 5, 'tea');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (17, 'Целебный сбор - замечательный дуэт "русского чая" и "монгольского чая", так называют в народе иван-чай и бадан. Напиток дарит насыщенный, терпковатый вкус, характерный для бадана, "таежный" аромат. Цвет настоя - темно-янтарный. Воздействие напитка актуально для всех: хорошо очищает организм, выводя не нужные жиры и шлаки, а также служит отличным средством для защиты капилляров.
Состав: Иван-чай, бадан
Заваривать водой, доведенной до кипения (t~95C) из соотношения 2 г чая на 100 мл воды. Настоять 1-2 минуты и разлить по чашкам. Можно заваривать несколько раз, постепенно увеличивая время настаивания.', 'Чай Di Maestri Целебный сбор 80 г', 790, 5, 'tea');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (18, 'Настоящий русский чай, полученный при обработке листа кипрея, собранного в предгорьях Алтая.
Чай обладает оригинальным выраженным вкусом, приятным сладким ароматом с фруктовыми тонами.
Пригоден для ежедневного употребления без ограничений.При заваривании Иван-чая мы получаем профилактический напиток от многих видов заболеваний, встречающихся в нашем мире. Напиток обладает противовоспалительным, жаропонижающим, противоопухолевым, обволакивающим, болеутоляющим, стабилизирующим давление, противосудорожным и кровоостанавливающим действием.
Содержит большое количество витамина С.
Заваривать водой, доведенной до кипения (t~95C) из соотношения 2 г чая на 100 мл воды. Настоять 1-2 минуты и разлить по чашкам. Можно заваривать несколько раз, постепенно увеличивая время настаивания.', 'Чай Di Maestri Иван-чай 80 г', 590, 5, 'tea');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (19, 'Чай на основе крупнолистового Ассама, с добавлением имбиря и цедры апельсина.Согревает и тонизирует. Необычный насыщенный вкус и яркий аромат не оставят вас равнодушным и обязательно поднимут настроение!
Состав: чай Ассам, имбирь, цедра апельсина.
Заваривать водой, доведенной до кипения (t~95C) из соотношения 2 г чая на 100 мл воды. Настоять 1-2 минуты и разлить по чашкам. Можно заваривать несколько раз, постепенно увеличивая время настаивания.', 'Чай Di Maestri Ассам "Оранжевое настроение" 100 г', 790, 5, 'tea');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (20, 'Обладает нежным вкусом и приятным мятным ароматом. Мягко успокаивает и охлаждает организм. Этот удивительный чай - уникальное природное средство для очищения организма от шлаков, является своеобразной кладовой витаминов и микроэлементов. Мята обладает множеством полезных для организма свойств. Этот чай подарит Вам не только полную гамму вкусовых ощущений, но и поможет вашему здоровью.
Состав: чайный лист, мята. Сбор: пр. Чжецзян, Китай.
Заваривать водой, доведенной до кипения (t~95C) из соотношения 2 г чая на 100 мл воды. Настоять 1-2 минуты и разлить по чашкам. Можно заваривать несколько раз, постепенно увеличивая время настаивания.', 'Чай китайский Di Maestri Зеленый чай с мятой 100 г
', 490, 5, 'tea');

INSERT INTO public.products (id, description, name, price, rating, category_tag) VALUES (6, 'Обладает нежным вкусом и приятным мятным ароматом. Мягко успокаивает и охлаждает организм. Этот удивительный чай - уникальное природное средство для очищения.', 'Чай китайский Di Maestri Зеленый чай с мятой 100 г', 490, 5, 'green_tea');