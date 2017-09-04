-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- Dump data of "categories" -------------------------------
INSERT INTO `categories`(`id`,`name`,`sortable`,`parent_id`,`lft`,`rgt`,`depth`,`path`) VALUES ( '1', 'Категория-0', NULL, NULL, '1', '2', '0', 'category-0' );
-- ---------------------------------------------------------


-- Dump data of "categories_photos" ------------------------
INSERT INTO `categories_photos`(`photo_id`,`category_id`) VALUES ( '3', '1' );
-- ---------------------------------------------------------


-- Dump data of "categories_products" ----------------------
INSERT INTO `categories_products`(`category_id`,`product_id`) VALUES ( '1', '2' );
INSERT INTO `categories_products`(`category_id`,`product_id`) VALUES ( '1', '3' );
INSERT INTO `categories_products`(`category_id`,`product_id`) VALUES ( '1', '4' );
INSERT INTO `categories_products`(`category_id`,`product_id`) VALUES ( '1', '5' );
INSERT INTO `categories_products`(`category_id`,`product_id`) VALUES ( '1', '6' );
-- ---------------------------------------------------------


-- Dump data of "feedbacks" --------------------------------
-- ---------------------------------------------------------


-- Dump data of "galleries" --------------------------------
INSERT INTO `galleries`(`id`,`name`,`system_name`,`body`,`slider`) VALUES ( '1', 'Слайдер на главной', NULL, NULL, '1' );
-- ---------------------------------------------------------


-- Dump data of "galleries_pages" --------------------------
INSERT INTO `galleries_pages`(`gallery_id`,`page_id`) VALUES ( '1', '1' );
-- ---------------------------------------------------------


-- Dump data of "galleries_photos" -------------------------
INSERT INTO `galleries_photos`(`gallery_id`,`photo_id`) VALUES ( '1', '14' );
INSERT INTO `galleries_photos`(`gallery_id`,`photo_id`) VALUES ( '1', '15' );
INSERT INTO `galleries_photos`(`gallery_id`,`photo_id`) VALUES ( '1', '16' );
INSERT INTO `galleries_photos`(`gallery_id`,`photo_id`) VALUES ( '1', '17' );
INSERT INTO `galleries_photos`(`gallery_id`,`photo_id`) VALUES ( '1', '18' );
-- ---------------------------------------------------------


-- Dump data of "managers" ---------------------------------
INSERT INTO `managers`(`id`,`name`,`email`,`password_digest`,`remember_token`,`created_at`,`updated_at`) VALUES ( '1', 'admin', 'maxstbn@gmail.com', '$2a$10$cpqe1wfftBrgqm9oyiyTOubFQcBP9cd5e7haU8C.q.Y5fSKVH0dBm', '2ef27b3cddcf3d01f6b5443771c7e4610959c041', '2014-10-15 19:59:34', '2014-10-16 05:33:36' );
-- ---------------------------------------------------------


-- Dump data of "pages" ------------------------------------
INSERT INTO `pages`(`id`,`name`,`body`,`parent_id`,`lft`,`rgt`,`depth`,`path`,`feedback`,`menu`) VALUES ( '1', 'Направление деятельности', '<h2 style="text-align:center">Производство художественных панно и декоров (гидроабразивная резка керамогранита, натурального камня и металлов)</h2>

<p>АМИНКО GROUP предлагает своим клиентам резные панно и декоративные элементы собственного ПРОИЗВОДСТВА. Высокотехнологичные гидроабразивные станки, позволяют создавать необычной красоты художественные изделия из керамогранита и натурального камня, а также металла и ряда других материалов. Станок не допускает сколов в месте реза, т.к. работает на высокопрочном австралийском гранатовом песке. Швы между деталями получаются ровными, одинаковой ширины.<br />
Мы воплотим в камне Вашу даже самую смелую фантазию.</p>

<p><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/005/original/1.jpg"><img alt="" data-rich-file-id="5" src="/system/rich/rich_files/rich_files/000/000/005/thumb/1.jpg" /></a><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/007/original/3.jpg"><img alt="" data-rich-file-id="7" src="/system/rich/rich_files/rich_files/000/000/007/thumb/3.jpg" /></a><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/006/original/2.jpg"><img alt="" data-rich-file-id="6" src="/system/rich/rich_files/rich_files/000/000/006/thumb/2.jpg" /></a><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/009/original/5.jpg"><img alt="" data-rich-file-id="9" src="/system/rich/rich_files/rich_files/000/000/009/thumb/5.jpg" /></a><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/008/original/4.jpg"><img alt="" data-rich-file-id="8" src="/system/rich/rich_files/rich_files/000/000/008/thumb/4.jpg" /></a></p>

<hr />
<h2 style="text-align:center">Доставка грузов из Китая (логистические и брокерские услуги)</h2>

<p>Наша копания предоставляет полный комплекс услуг, который не ограничивается исключительно транспортно-экспедиторскими услугами. Благодаря большим партнёрским связям с производителями продукции мы можем предложить нашим клиентам товары из Китая от производителя. Это значит, что мы поможем вам:</p>

<ul>
	<li>найти подходящую продукцию;</li>
	<li>подобрать надёжных производителей;</li>
	<li>согласовать оптимальные цены;</li>
	<li>оформить документацию;</li>
	<li>доставить от производителя к заказчику;</li>
	<li>предоставить услуги переводчика;</li>
	<li>хранить Ваш груз на нашем собственном складе</li>
</ul>

<p>Способы доставки товаров, заказных в Китае, осуществляются как индивидуальным, так и комбинированным способом. Наши специалисты учитывают все особенности перемещения грузов по стране, а также особенности прохождения таможенного контроля. Если для вас приоритетным направлением являются закупки товаров оптом из Китая, наиболее оптимальным способом доставки будет мультимодальный. В зависимости от места вывоза продукции и пункта доставки могут быть задействованы такие виды транспорта как: наземный, воздушный, морской. Если вы завозите оптом из Китая малогабаритную продукцию небольшими партиями, для нас это также не будет проблемой. Благодаря разветвлённой сети складских помещений ваши товары будут доставлены в точные сроки.</p>

<p><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/010/original/11.jpg"><img alt="" data-rich-file-id="10" src="/system/rich/rich_files/rich_files/000/000/010/thumb/11.jpg" /></a><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/011/original/22.jpg"><img alt="" data-rich-file-id="11" src="/system/rich/rich_files/rich_files/000/000/011/thumb/22.jpg" /></a><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/012/original/33.jpg"><img alt="" data-rich-file-id="12" src="/system/rich/rich_files/rich_files/000/000/012/thumb/33.jpg" /></a><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/013/original/44.jpg"><img alt="" data-rich-file-id="13" src="/system/rich/rich_files/rich_files/000/000/013/thumb/44.jpg" /></a><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/014/original/55.jpg"><img alt="" data-rich-file-id="14" src="/system/rich/rich_files/rich_files/000/000/014/thumb/55.jpg" /></a></p>

<hr />
<h2 style="text-align:center">Оптовые продажи плитки и мозаики. Компания VILLA CERAMICA</h2>

<p>Мы работаем с торговыми организациями из Москвы, Московской области и регионами России.</p>

<p>Наша деятельность направлена на обеспечение нашим партнёрам &ndash; специализированным салонам-магазинам - удобных и комфортных условий работы с керамической плиткой. Специалистами отдела оптовых продаж достаточно долго изучался рынок отделочных материалов, итогом их анализа стал ассортимент коллекций, представленный как на экспозициях наших выставочных площадей и шоу-румов, так и широкой дилерской сети.</p>

<p><strong>АМИНКО GROUP</strong> обладает правом эксклюзивного представления на территории Российской Федерации нового бренда керамической плитки, мозаики и керамогранита &ndash; <strong>&laquo;VILLA CERAMICA&raquo;</strong>.</p>

<p>Отличительными особенностями продукции <strong>&laquo;VILLA CERAMICA&raquo;</strong> являются:</p>

<ul>
	<li><strong>Вся облицовочная плитка производится на белой глине и в 99% - ректифицирована.</strong> Она имеет обрезанные под углом 90&deg; кромки - это делается для достижения точных размеров. Подобная плитка позволяет делать бесшовную укладку (напомним, что таковой считается укладка с шириной шва от 0 до 2 мм) &ndash; что говорит о высочайшем качестве продукции. Редкие фабрики Италии, Португалии и Испании могут себе позволить подобное качество.</li>
	<li><strong>Большинство декоративных вставок к облицовочной плитке продаются не поштучно</strong>, как у испанских и итальянских производителей, а кратно квадратным метрам &ndash; что заметно упрощает реализацию коллекций с их использованием, так как многих потребителей отталкивает именно высокая стоимость штучных декоративных элементов.</li>
	<li><strong>Качественная упаковка штучных декоративных элементов.</strong> Вы можете быть уверены, что к Вам придёт заказ для Вашего клиента целым и невредимым, так как все бордюры, карандаши, бусинки и прочие элементы упаковываются в боксы из пенопласта. Что по сравнению с картонными коробками на порядок удобнее для хранения и транспортировки непосредственно до конечного покупателя.</li>
	<li><strong>Современные и, самое главное коммерческие, дизайны коллекций</strong> &ndash; результат творческой работы итальянских дизайнеров и технологов с китайскими производителями.</li>
	<li><strong>Широкая линейка размеров облицовочной плитки:</strong> 300*450; 240*660; 270*730; 300*600; 350*750; 400*800.</li>
	<li><strong>Большинство коллекций гармонично &laquo;обыграны&raquo; эксклюзивной мозаикой.</strong> Но при этом они ориентированы не только на санузлы, но и на гостиные, прихожие, кухни и студии.</li>
	<li><strong>Качественный &laquo;европейский&raquo; мерчендайзинг.</strong> Современная презентация продукции позволит нашим партнёрам эффективно использовать свои выставочные площади за счёт уникальных дизайнов технических панелей, реалистичных интерьеров и современного оформления.</li>
</ul>

<p><strong>Сайт:</strong> <a href="http://dm-style.ru">http://dm-style.ru</a></p>

<p><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/015/original/1.jpg"><img alt="" data-rich-file-id="15" src="/system/rich/rich_files/rich_files/000/000/015/thumb/1.jpg" /></a><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/016/original/2.jpg"><img alt="" data-rich-file-id="16" src="/system/rich/rich_files/rich_files/000/000/016/thumb/2.jpg" /></a><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/017/original/3.jpg"><img alt="" data-rich-file-id="17" src="/system/rich/rich_files/rich_files/000/000/017/thumb/3.jpg" /></a><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/018/original/4.jpg"><img alt="" data-rich-file-id="18" src="/system/rich/rich_files/rich_files/000/000/018/thumb/4.jpg" /></a><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/019/original/5.jpg"><img alt="" data-rich-file-id="19" src="/system/rich/rich_files/rich_files/000/000/019/thumb/5.jpg" /></a></p>

<hr />
<h2 style="text-align:center">Розничная сеть салонов по продаже плитки, мозаики, мебели и светотехники</h2>

<p style="text-align:center"><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/020/original/santemax.jpg"><img alt="" data-rich-file-id="20" height="116" src="/system/rich/rich_files/rich_files/000/000/020/original/santemax.jpg" width="256" /></a></p>

<p>АМИНКО GROUP существующая с 2004 года под брендом SANTEMAX, предлагает Вам изысканные коллекции керамической плитки, керамогранита, мозаики, а также светотехники и мебели от ведущих производителей Турции, Польши, Китая, Португалии, Испании и Италии.</p>

<p>Ассортимент наших салонов составляет продукция крупнейших производителей, ориентированных на уникальный дизайн и качество. АМИНКО GROUP уделяет особое внимание проектировке и оформлению своих выставочных залов, чтобы как можно шире раскрыть возможности современной индустрии керамической плитки.</p>

<p>Наша продукция представлена в ряде шоу-румов и выставочных площадей на территории Москвы, Санкт-Петербурга и Новосибирска.</p>

<p>Флагманский салон нашей компании расположен в известном столичном торгово-выставочном комплексе &quot;ЭКСПОСТРОЙ&quot;, где под экспозиции с высококачественными коллекциями мозаик, керамогранита и керамической плитки отведено свыше 500 м2. Шоу-рум на Нахимовском поражает обилием представленных в нем экспозиционных стендов от самых известных торговых марок. Здесь вы всегда сможете найти любую интересующую вас продукцию по самым демократичным ценам. Мы стремимся создать максимально комфортную атмосферу для наших клиентов.</p>

<p>АМИНКО GROUP очень требовательно относится к соотношению цены и качества, закупаемой продукции. Самые крупные строительные компании, специализированные магазины строительных материалов и частные лица, однажды став нашими клиентами, при необходимости новых закупок снова и снова обращаются к нам. Это является основным свидетельством профессионализма и качественной работы всех сотрудников нашей компании.</p>

<p>&nbsp;<strong>Сайт: </strong><a href="http://santemax.ru">http://santemax.ru</a></p>

<p><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/022/original/2.jpg"><img alt="" data-rich-file-id="22" src="/system/rich/rich_files/rich_files/000/000/022/thumb/2.jpg" /></a><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/023/original/3.jpg"><img alt="" data-rich-file-id="23" src="/system/rich/rich_files/rich_files/000/000/023/thumb/3.jpg" /></a><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/024/original/4.jpg"><img alt="" data-rich-file-id="24" src="/system/rich/rich_files/rich_files/000/000/024/thumb/4.jpg" /></a><a class="insert-img" href="/system/rich/rich_files/rich_files/000/000/005/original/1.jpg"><img alt="" data-rich-file-id="5" src="/system/rich/rich_files/rich_files/000/000/005/thumb/1.jpg" /></a></p>
', NULL, '1', '2', '0', 'root', NULL, '1' );
INSERT INTO `pages`(`id`,`name`,`body`,`parent_id`,`lft`,`rgt`,`depth`,`path`,`feedback`,`menu`) VALUES ( '2', 'Контакты', '<p><strong>Главный офис Компании АМИНКО<br />
Адрес: </strong>: Москва, Нахимовский проспект, 24, ТВЦ &quot;Экспострой&quot;, офис 18<br />
<strong>Телефон: +7 </strong>(495) 779 10 23<br />
<strong>E-mail:</strong> <a href="http://office@santemax.ru">office@santemax.ru</a></p>

<p><strong>Розничная сеть по продажам плитки, мебели и светотехники: Салон SANTEMAX (Экспострой)</strong><br />
<strong>Адрес: </strong>Москва, Нахимовский проспект, 24, ТВЦ &quot;Экспострой&quot;, 3 павильон, цокольный этаж, стенд 514<br />
<strong>Телефон:</strong> +7 (495) 779 10 97; +7 (903) 734 69 49<br />
<strong>E-mail:</strong> <a href="http://santemax_ekspostroy@mail.ru"> santemax_ekspostroy@mail.ru</a><br />
<strong>Сайт:</strong> <a href="http://www.santemax.ru">www.santemax.ru</a></p>

<p><strong>Салон SANTEMAX (Каширский Двор)</strong><br />
<strong>Адрес: </strong>Москва, Каширское шоссе, 19, корпус 2, ТК &quot;Каширский Двор-1&quot;, 2 этаж, стенд 2-11, 2-40<br />
<strong>Телефон:</strong> +7 (962) 955 88 00<br />
<strong>E-mail: </strong>s<a href="http://santemax_k@mail.ru">antemax_k@mail.ru</a><br />
<strong>Сайт: </strong><a href="http://www.santemax.ru">www.santemax.ru</a></p>

<p><strong>Салон ПЛИТКАМАКС</strong>:<br />
<strong>Адрес: </strong>Москва, Нахимосвский проспект, 28, корпус 1<br />
<strong>Телефоны:</strong> +7 (495) 999 78 07; +7 (499) 124 14 01; +7 (968) 808 11 99<br />
<strong>E-mail: </strong><a href="http://santemax_28@mail.ru">santemax_28@mail.ru</a><br />
<strong>Сайт: </strong><a href="http://www.plitkamax.ru/new">www.plitkamax.ru/new</a></p>

<p><strong>Оптовые продажи плитки: Главный офис Компании DM-Style</strong><br />
<strong>Адрес: </strong>Москва, Нахимовский проспект, 24, ТВЦ &quot;Экспострой&quot;, офис 18<br />
<strong>Телефон: </strong>+7 (495) 668 11 76<br />
<strong>E-mail: </strong><a href="http://info@dm-style.ru">info@dm-style.ru</a><br />
<strong>Сайт: </strong><a href="http://www.dm-style.ru">www.dm-style.ru</a></p>

<p><strong>Контакты в Санкт-Петербурге</strong>:<br />
<strong>E-mail: </strong><a href="http://santemaxspb@yandex.ru">santemaxspb@yandex.ru</a><br />
<strong>E-mail: </strong><a href="http://santemaxspb@mail.ru">santemaxspb@mail.ru</a></p>

<p><strong>Контакты в Новосибирске</strong>:<br />
<strong>Телефон: </strong>+7 (383) 230 34 27<br />
<strong>E-mail: </strong><a href="http://santemaxnsk@mail.ru">santemaxnsk@mail.ru</a></p>

<p><strong>Контакты в Китае</strong>:<br />
<strong>Телефон: </strong>+8 (613) 425 996 344<br />
<strong>E-mail: </strong><a href="http://santemax_ramiz@hotmail.com">santemax_ramiz@hotmail.com</a></p>

<h2>Свяжитесь с нами:</h2>
', NULL, '5', '6', '0', 'contacts', '1', '1' );
INSERT INTO `pages`(`id`,`name`,`body`,`parent_id`,`lft`,`rgt`,`depth`,`path`,`feedback`,`menu`) VALUES ( '3', 'Обратная связь', '', NULL, '7', '8', '0', 'feedback', '1', '0' );
INSERT INTO `pages`(`id`,`name`,`body`,`parent_id`,`lft`,`rgt`,`depth`,`path`,`feedback`,`menu`) VALUES ( '4', 'Партнеры', '<p>раздел в разработке</p>
', NULL, '3', '4', '0', 'partneryi', NULL, '1' );
-- ---------------------------------------------------------


-- Dump data of "photos" -----------------------------------
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '1', '0a27ec09508ecb335e7e7c269c0843ee.jpeg', NULL, NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '2', '53581.jpg', NULL, NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '3', NULL, NULL, NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '4', '0a27ec09508ecb335e7e7c269c0843ee.jpeg', NULL, NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '5', '53581.jpg', NULL, NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '6', '0a27ec09508ecb335e7e7c269c0843ee.jpeg', NULL, NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '7', '53581.jpg', NULL, NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '8', '0a27ec09508ecb335e7e7c269c0843ee.jpeg', NULL, NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '9', '53581.jpg', NULL, NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '10', '0a27ec09508ecb335e7e7c269c0843ee.jpeg', NULL, NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '11', '53581.jpg', NULL, NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '12', '0a27ec09508ecb335e7e7c269c0843ee.jpeg', NULL, NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '13', '53581.jpg', NULL, NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '14', '1.jpg', 'Панно для дома и общественных помещений', NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '15', '2.jpg', 'Керамическая плитка и керамогранит оптом и в розницу', NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '16', '3.jpg', 'Керамическая плитка ведущих фабрик европы', NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '17', '4.jpg', 'Мебель в классическом стиле', NULL, NULL );
INSERT INTO `photos`(`id`,`photo`,`name`,`body`,`root`) VALUES ( '18', '5.jpg', 'Интерьерное освещение. Люстры', NULL, NULL );
-- ---------------------------------------------------------


-- Dump data of "photos_products" --------------------------
INSERT INTO `photos_products`(`photo_id`,`product_id`) VALUES ( '1', '1' );
INSERT INTO `photos_products`(`photo_id`,`product_id`) VALUES ( '2', '1' );
INSERT INTO `photos_products`(`photo_id`,`product_id`) VALUES ( '4', '2' );
INSERT INTO `photos_products`(`photo_id`,`product_id`) VALUES ( '5', '2' );
INSERT INTO `photos_products`(`photo_id`,`product_id`) VALUES ( '6', '3' );
INSERT INTO `photos_products`(`photo_id`,`product_id`) VALUES ( '7', '3' );
INSERT INTO `photos_products`(`photo_id`,`product_id`) VALUES ( '8', '4' );
INSERT INTO `photos_products`(`photo_id`,`product_id`) VALUES ( '9', '4' );
INSERT INTO `photos_products`(`photo_id`,`product_id`) VALUES ( '10', '5' );
INSERT INTO `photos_products`(`photo_id`,`product_id`) VALUES ( '11', '5' );
INSERT INTO `photos_products`(`photo_id`,`product_id`) VALUES ( '12', '6' );
INSERT INTO `photos_products`(`photo_id`,`product_id`) VALUES ( '13', '6' );
-- ---------------------------------------------------------


-- Dump data of "products" ---------------------------------
INSERT INTO `products`(`id`,`name`,`body`,`price`,`sale`,`art`,`created_at`,`updated_at`) VALUES ( '1', 'Тестовый продукт-0', 'Напольная плитка является стильным решением для желающих облагородить свое жилье с помощью изысканных отделочных материалов. Основными достоинствами керамической плитки являются прочность, долговечность и эстетичность. Дизайнерские находки воплощены в сотнях коллекций напольной плитки, осталось лишь найти ту, которая подойдет Вам.', '33999', NULL, NULL, '2014-10-15 19:59:34', '2014-10-15 19:59:34' );
INSERT INTO `products`(`id`,`name`,`body`,`price`,`sale`,`art`,`created_at`,`updated_at`) VALUES ( '2', 'Тестовый продукт-0-0', 'Напольная плитка является стильным решением для желающих облагородить свое жилье с помощью изысканных отделочных материалов. Основными достоинствами керамической плитки являются прочность, долговечность и эстетичность. Дизайнерские находки воплощены в сотнях коллекций напольной плитки, осталось лишь найти ту, которая подойдет Вам.', '33999', NULL, NULL, '2014-10-15 19:59:40', '2014-10-15 19:59:40' );
INSERT INTO `products`(`id`,`name`,`body`,`price`,`sale`,`art`,`created_at`,`updated_at`) VALUES ( '3', 'Тестовый продукт-0-1', 'Напольная плитка является стильным решением для желающих облагородить свое жилье с помощью изысканных отделочных материалов. Основными достоинствами керамической плитки являются прочность, долговечность и эстетичность. Дизайнерские находки воплощены в сотнях коллекций напольной плитки, осталось лишь найти ту, которая подойдет Вам.', '33999', NULL, NULL, '2014-10-15 19:59:43', '2014-10-15 19:59:43' );
INSERT INTO `products`(`id`,`name`,`body`,`price`,`sale`,`art`,`created_at`,`updated_at`) VALUES ( '4', 'Тестовый продукт-0-2', 'Напольная плитка является стильным решением для желающих облагородить свое жилье с помощью изысканных отделочных материалов. Основными достоинствами керамической плитки являются прочность, долговечность и эстетичность. Дизайнерские находки воплощены в сотнях коллекций напольной плитки, осталось лишь найти ту, которая подойдет Вам.', '33999', NULL, NULL, '2014-10-15 19:59:48', '2014-10-15 19:59:48' );
INSERT INTO `products`(`id`,`name`,`body`,`price`,`sale`,`art`,`created_at`,`updated_at`) VALUES ( '5', 'Тестовый продукт-0-3', 'Напольная плитка является стильным решением для желающих облагородить свое жилье с помощью изысканных отделочных материалов. Основными достоинствами керамической плитки являются прочность, долговечность и эстетичность. Дизайнерские находки воплощены в сотнях коллекций напольной плитки, осталось лишь найти ту, которая подойдет Вам.', '33999', NULL, NULL, '2014-10-15 19:59:51', '2014-10-15 19:59:51' );
INSERT INTO `products`(`id`,`name`,`body`,`price`,`sale`,`art`,`created_at`,`updated_at`) VALUES ( '6', 'Тестовый продукт-0-4', 'Напольная плитка является стильным решением для желающих облагородить свое жилье с помощью изысканных отделочных материалов. Основными достоинствами керамической плитки являются прочность, долговечность и эстетичность. Дизайнерские находки воплощены в сотнях коллекций напольной плитки, осталось лишь найти ту, которая подойдет Вам.', '33999', NULL, NULL, '2014-10-15 19:59:55', '2014-10-15 19:59:55' );
-- ---------------------------------------------------------


-- Dump data of "products_properties" ----------------------
-- ---------------------------------------------------------


-- Dump data of "products_values" --------------------------
-- ---------------------------------------------------------


-- Dump data of "properties" -------------------------------
-- ---------------------------------------------------------


-- Dump data of "rich_rich_files" --------------------------
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '5', '2014-10-16 05:39:08', '2014-10-16 05:39:08', '1.jpg', 'image/jpeg', '122268', '2014-10-16 05:39:08', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/005/thumb/1.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/005/rich_thumb/1.jpg","original":"/system/rich/rich_files/rich_files/000/000/005/original/1.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '6', '2014-10-16 05:39:09', '2014-10-16 05:39:09', '2.jpg', 'image/jpeg', '151821', '2014-10-16 05:39:08', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/006/thumb/2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/006/rich_thumb/2.jpg","original":"/system/rich/rich_files/rich_files/000/000/006/original/2.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '7', '2014-10-16 05:39:09', '2014-10-16 05:39:09', '3.jpg', 'image/jpeg', '122458', '2014-10-16 05:39:09', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/007/thumb/3.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/007/rich_thumb/3.jpg","original":"/system/rich/rich_files/rich_files/000/000/007/original/3.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '8', '2014-10-16 05:39:10', '2014-10-16 05:39:10', '4.jpg', 'image/jpeg', '116710', '2014-10-16 05:39:09', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/008/thumb/4.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/008/rich_thumb/4.jpg","original":"/system/rich/rich_files/rich_files/000/000/008/original/4.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '9', '2014-10-16 05:39:10', '2014-10-16 05:39:10', '5.jpg', 'image/jpeg', '136903', '2014-10-16 05:39:10', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/009/thumb/5.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/009/rich_thumb/5.jpg","original":"/system/rich/rich_files/rich_files/000/000/009/original/5.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '10', '2014-10-16 05:43:21', '2014-10-16 05:43:21', '11.jpg', 'image/jpeg', '52190', '2014-10-16 05:43:21', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/010/thumb/11.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/010/rich_thumb/11.jpg","original":"/system/rich/rich_files/rich_files/000/000/010/original/11.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '11', '2014-10-16 05:43:32', '2014-10-16 05:43:32', '22.jpg', 'image/jpeg', '75402', '2014-10-16 05:43:32', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/011/thumb/22.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/011/rich_thumb/22.jpg","original":"/system/rich/rich_files/rich_files/000/000/011/original/22.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '12', '2014-10-16 05:43:38', '2014-10-16 05:43:38', '33.jpg', 'image/jpeg', '107954', '2014-10-16 05:43:38', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/012/thumb/33.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/012/rich_thumb/33.jpg","original":"/system/rich/rich_files/rich_files/000/000/012/original/33.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '13', '2014-10-16 05:43:45', '2014-10-16 05:43:45', '44.jpg', 'image/jpeg', '114085', '2014-10-16 05:43:45', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/013/thumb/44.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/013/rich_thumb/44.jpg","original":"/system/rich/rich_files/rich_files/000/000/013/original/44.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '14', '2014-10-16 05:43:51', '2014-10-16 05:43:51', '55.jpg', 'image/jpeg', '111828', '2014-10-16 05:43:50', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/014/thumb/55.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/014/rich_thumb/55.jpg","original":"/system/rich/rich_files/rich_files/000/000/014/original/55.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '15', '2014-10-16 05:51:35', '2014-10-16 05:51:35', '1.jpg', 'image/jpeg', '95548', '2014-10-16 05:51:35', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/015/thumb/1.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/015/rich_thumb/1.jpg","original":"/system/rich/rich_files/rich_files/000/000/015/original/1.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '16', '2014-10-16 05:51:36', '2014-10-16 05:51:36', '2.jpg', 'image/jpeg', '104583', '2014-10-16 05:51:36', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/016/thumb/2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/016/rich_thumb/2.jpg","original":"/system/rich/rich_files/rich_files/000/000/016/original/2.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '17', '2014-10-16 05:51:36', '2014-10-16 05:51:36', '3.jpg', 'image/jpeg', '116055', '2014-10-16 05:51:36', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/017/thumb/3.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/017/rich_thumb/3.jpg","original":"/system/rich/rich_files/rich_files/000/000/017/original/3.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '18', '2014-10-16 05:51:37', '2014-10-16 05:51:37', '4.jpg', 'image/jpeg', '39737', '2014-10-16 05:51:37', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/018/thumb/4.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/018/rich_thumb/4.jpg","original":"/system/rich/rich_files/rich_files/000/000/018/original/4.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '19', '2014-10-16 05:51:37', '2014-10-16 05:51:37', '5.jpg', 'image/jpeg', '147376', '2014-10-16 05:51:37', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/019/thumb/5.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/019/rich_thumb/5.jpg","original":"/system/rich/rich_files/rich_files/000/000/019/original/5.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '20', '2014-10-16 05:52:56', '2014-10-16 05:52:56', 'santemax.jpg', 'image/jpeg', '19182', '2014-10-16 05:52:55', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/020/thumb/santemax.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/020/rich_thumb/santemax.jpg","original":"/system/rich/rich_files/rich_files/000/000/020/original/santemax.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '21', '2014-10-16 05:55:49', '2014-10-16 05:55:49', '1.jpg', 'image/jpeg', '122268', '2014-10-16 05:55:49', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/021/thumb/1.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/021/rich_thumb/1.jpg","original":"/system/rich/rich_files/rich_files/000/000/021/original/1.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '22', '2014-10-16 05:55:50', '2014-10-16 05:55:50', '2.jpg', 'image/jpeg', '149871', '2014-10-16 05:55:49', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/022/thumb/2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/022/rich_thumb/2.jpg","original":"/system/rich/rich_files/rich_files/000/000/022/original/2.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '23', '2014-10-16 05:55:50', '2014-10-16 05:55:50', '3.jpg', 'image/jpeg', '188607', '2014-10-16 05:55:50', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/023/thumb/3.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/023/rich_thumb/3.jpg","original":"/system/rich/rich_files/rich_files/000/000/023/original/3.jpg"}', 'image' );
INSERT INTO `rich_rich_files`(`id`,`created_at`,`updated_at`,`rich_file_file_name`,`rich_file_content_type`,`rich_file_file_size`,`rich_file_updated_at`,`owner_type`,`owner_id`,`uri_cache`,`simplified_type`) VALUES ( '24', '2014-10-16 05:55:51', '2014-10-16 05:55:51', '4.jpg', 'image/jpeg', '205380', '2014-10-16 05:55:50', NULL, NULL, '{"thumb":"/system/rich/rich_files/rich_files/000/000/024/thumb/4.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/024/rich_thumb/4.jpg","original":"/system/rich/rich_files/rich_files/000/000/024/original/4.jpg"}', 'image' );
-- ---------------------------------------------------------


-- Dump data of "schema_migrations" ------------------------
INSERT INTO `schema_migrations`(`version`) VALUES ( '20140829213217' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20140830140747' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20140830215018' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20140830220650' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20140901175701' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20140904200155' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20140904200156' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20140921062115' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20140924173641' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20140924174231' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20140927110329' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20140928071620' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20141006172002' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20141006172133' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20141006174331' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20141011073656' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20141011104636' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20141011104637' );
INSERT INTO `schema_migrations`(`version`) VALUES ( '20141011104638' );
-- ---------------------------------------------------------


-- Dump data of "values" -----------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


