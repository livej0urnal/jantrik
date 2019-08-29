-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 28 2019 г., 19:21
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `jantrik`
--

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `id` int(10) NOT NULL,
  `posted` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(10) NOT NULL,
  `recent` enum('0','1') DEFAULT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`id`, `posted`, `image`, `category`, `recent`, `img`) VALUES
(1, '2019-08-22', '/img/blog/1.jpg', 1, '1', '/img/blog/details.jpg'),
(2, '2019-08-14', '/img/blog/2.jpg', 2, '1', '/img/blog/details.jpg'),
(3, '2019-08-14', '/img/blog/3.jpg', 1, '0', '/img/blog/details.jpg'),
(4, '2019-08-14', '/img/blog/4.jpg', 1, '0', '/img/blog/details.jpg'),
(5, '2019-08-14', '/img/blog/5.jpg', 1, '0', '/img/blog/details.jpg'),
(6, '2019-08-14', '/img/blog/6.jpg', 1, '0', '/img/blog/details.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `article_lang`
--

CREATE TABLE `article_lang` (
  `id` int(10) NOT NULL,
  `articles_id` int(10) NOT NULL,
  `lang_id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seotitle` varchar(255) NOT NULL,
  `seodescription` text NOT NULL,
  `short` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `article_lang`
--

INSERT INTO `article_lang` (`id`, `articles_id`, `lang_id`, `title`, `seotitle`, `seodescription`, `short`, `content`) VALUES
(1, 1, 1, 'What is a SPA application?', 'What is SPA in web development? Who needs to use SPA?', '<p>What is SPA in web development? Who needs to use SPA?</p>\r\n', '<p>What is SPA in web development? Who needs to use SPA?</p>\r\n', '<p>In this article, we will answer the following questions: what is SPA in web development? Who needs to use SPA? And also, consider examples of SPA applications. <!-- P--></p>\r\n\r\n<h3>What is SPA in web development? <!-- h3--></h3>\r\n\r\n<p>Single page application (SPA) &amp; ndash; relatively new beast come from google. One-page application, that is, an application that uses just one html page. This solution allows you to avoid reloading a whole page of a web document. In SPA, a specific area for active information is implemented, and all other parts of the document are not reloaded when updating information. Thus, it is possible to reduce the load on the server by apache requests. Typically, this technology uses ajax technology. That is, all requests to the server or database go through ajax requests. <!-- P--></p>\r\n\r\n<p>Js frameworks can also be used: angular, vue. But in this case you need to use the Node.js server. This implementation is not suitable for 30% of known hosting sites in runet. Mostly for such applications I use VDS or cloud hosting. <!-- P--></p>\r\n\r\n<p>An advantage of the implementation on js frames is speed, extensibility and a large number of programmers who are able to support such projects. <!-- p--></p>\r\n\r\n<p>In the case of building a SPA application, thanks to the PHP (python) + ajax bundle, there is a huge minus &amp; mdash; This is the weight of the application and its extensibility. Typically, this stack is used by backend programmers who unfortunately are dinosaurs and are not able to get acquainted with new js frames. <!-- P--></p>\r\n\r\n<h3>Who needs to use SPA? <!-- h3--></h3>\r\n\r\n<p>The most logical use of the SPA &amp; ndash; This is a CRM system on the web. This stack will not allow much load on the server and allows you to implement a similar solution on localhost using some system integrator already forgotten by everyone. The essence of this solution is as follows: provide stable power, open ports and install Node.js server. <!-- P--></p>\r\n\r\n<p>But, in this case it&rsquo;s more logical to use cloud hosting and share the API. That will not only use your application from any Internet access point, but also implement, for example, a mobile application for certain employees. <!-- P--></p>\r\n\r\n<h3>SPA application examples <!-- h3--></h3>\r\n\r\n<p>As for the last question &amp; ndash; examples. That they are always in sight. These are almost all versions of google services that are older than 2016 (latest updates). All other examples can be found everywhere among the solutions on the web. <!-- P--></p>\r\n'),
(2, 1, 2, 'Что такое SPA приложение?', 'Что такое SPA в веб-разработке? Кому необходимо использовать SPA?', '<p>Что такое SPA в веб-разработке? Кому необходимо использовать SPA?</p>\r\n', '<p>Что такое SPA в веб-разработке? Кому необходимо использовать SPA?</p>\r\n', '<p>В данной статье мы ответим на следующие вопросы: что такое SPA в веб-разработке? Кому необходимо использовать SPA? А также, рассмотрим примеры SPA приложений.</p>\r\n\r\n<h3>Что такое SPA в веб-разработке?</h3>\r\n\r\n<p>Single page application (SPA) &ndash; относительно новый зверь родом из Google. Одностраничное приложение, то есть приложение, использующее всего лишь одну html страничку. Данное решение позволяет избегать перезагрузки целой страницы веб-документа. В SPA реализована определенная область под активную информацию, а все остальные части документа при обновлении информации не перезагружаются. Таким образом есть возможность снизить нагрузку на сервер по запросам apache. Обычно для данной технологии используют технологию ajax. То есть все запросы к серверу или бд идут посредством ajax-запросов.</p>\r\n\r\n<p>Так же могут использоваться Js-фреймворки: angular, vue. Но в этом случае необходимо использовать Node.js сервер. Данная реализация не подходит под 30% известных хостингов в рунете. В основном для таких приложений использую VDS или облачный хостинг.</p>\r\n\r\n<p>Плюсом реализации на js фреймах является быстродействие, расширяемость и большое количество программистов, которые в состоянии выполнить поддержку такого рода проектов.</p>\r\n\r\n<p>В случае же построения SPA приложения благодаря связки PHP (python) + ajax имеется огромный минус &mdash; это вес приложения и его возможности расширения. Обычно такой стек используют backend программисты которые к своему сожалению являются динозаврами и не в состоянии знакомиться с новыми js фреймами.</p>\r\n\r\n<h3>Кому необходимо использовать SPA?</h3>\r\n\r\n<p>Самое логичное использование SPA &ndash; это CRM система в веб. Данный стек позволит не сильно нагружать сервер и позволяет реализовать подобное решение на localhost, используя какой-то уже забытый всеми системник. Суть данного решения заключается в следующем: обеспечить стабильное питание, открытые порты и установить Node.js сервер.</p>\r\n\r\n<p>Но, в этом случае логичнее использовать облачный хостинг и расшарить API. Что позволит не только пользоваться вашим приложением с любой точки доступа в интернет, но и реализовать, к примеру, мобильное приложение для определенных сотрудников.</p>\r\n\r\n<h3>Примеры SPA приложений</h3>\r\n\r\n<p>Что же касается последнего вопроса &ndash; примеров, они всегда у нас на виду. Это (почти) все версии google сервисов которые старше 2016 года (последние обновления). Все остальные примеры можно встретить повсеместно среди решений в вебе.</p>\r\n'),
(3, 2, 1, 'Cross-Site Scenario Attack Prevention', 'What is an intersite scenario attack? Ways to prevent cross-site scripting attacks', '<p>Today we will answer the common question of customers, which is gaining popularity every day. What is an intersite scenario attack? And let&#39;s look at ways to prevent cross-site scripted attacks.</p>\r\n', '<p>Examples of intersite scenario attack</p>\r\n', '<p>Today we will answer the common question of customers, which is gaining popularity every day. What is an intersite scenario attack? And let&#39;s look at ways to prevent cross-site scripted attacks.</p>\r\n\r\n<h2>What is an intersite scenario attack?</h2>\r\n\r\n<p>A cross-site scripting attack is the injection of malicious code into a web page that will be secretly executed on the user&#39;s computer. The specificity of the intersite scenario attack is that with the help of the embedded code segment you can get access to the session or authorized user data. With the subsequent access to manage the data of this user.</p>\r\n\r\n<h3>Examples of intersite scenario attack</h3>\r\n\r\n<p>Suppose we need to give the opportunity to comment on a blog or article, without worrying that the JS or Html code contained in the comment will create problems. We cannot restrict user input, because with this form, he must freely express his thoughts about the article. But, we can remove the possibility of inserting sections with HTML + JS because, in fact, no one except the attackers will need to insert parts of the code into the comment. We could create a check for the availability of these sites and just not allow them to be published. But think about how many conditions we would have to use. Heaps of!</p>\r\n\r\n<h3>Ways to prevent cross-site scripting attacks</h3>\r\n\r\n<p>How to prevent cross-site scripted attack? The standard PHP method comes to the rescue. With the help of the htmlentities () function we will be able to film the sections of the malicious insert. More information about this feature can be found in the PHP documentation.<br />\r\nIn standard PHP methods, there are a couple of functions with which you can screen HTML. The simplest is htmlspecialchars () - it emits four characters (&lt;&gt; &ldquo;and &amp;). But it is the htmlentities () function that converts any characters that have an equivalent HTML entity. There is one caveat, when converting, this function is wielded by the UTF-8 character set, so we will get a section of ordinary characters instead of inserting malicious code. Thus, we will be able to limit the introduction of malicious code sections in the comments of our blog. But do not forget that this is only one of the possible cross-site attacks of the &ldquo;code injection&rdquo; type. There are still DDOS attacks, <a href=\"https://myprojects.info/en/article/12\">in this article</a> we tried to explain how to check the server site for vulnerabilities.</p>\r\n'),
(4, 2, 2, 'Предотвращение межсайтовых сценарных атак', 'Что такое межсайтовая сценарная атака? Пути предотвращения межсайтовых сценарных атак', '<p>Сегодня мы ответим на распространенный вопрос клиентов, который с каждым днем набирает популярность. Что такое межсайтовая сценарная атака? И разберем пути предотвращения межсайтовых сценарных атак.</p>\r\n', '<p>Примеры межсайтовой сценарной атаки</p>\r\n', '<p>Сегодня мы ответим на распространенный вопрос клиентов, который с каждым днем набирает популярность. Что такое межсайтовая сценарная атака? И разберем пути предотвращения межсайтовых сценарных атак.</p>\r\n\r\n<h2>Что такое межсайтовая сценарная атака?</h2>\r\n\r\n<p>Межсайтовая сценарная атака &ndash; это внедрение в веб-страницу вредоносного кода, который будет скрытно выполнен на компьютере пользователя. Специфика межсайтовой сценарной атаки заключается в том, что с помощью внедренного участка кода можно получить доступ к сессии либо авторизованных данных пользователя. С последующим доступом на управление данными этого пользователя.</p>\r\n\r\n<h3>Примеры межсайтовой сценарной атаки</h3>\r\n\r\n<p>Допустим, нам необходимо дать возможность комментирования блога или статьи, не беспокоясь о том, что содержащийся в комментарии код JS или Html создаст проблемы. Мы не можем ограничить ввод данных пользователю, потому что с помощью этой формы он должен свободно выражать свои мысли по поводу статьи. Но, мы можем убрать возможность вставки участков с HTML + JS ведь по сути никому кроме злоумышленников не понадобится вставлять в комментарий участки кода. Мы могли бы создать проверку на наличие данных участков и просто не допускать их на публикацию. Но, задумайтесь сколько условий пришлось бы нам использовать. Уйму!</p>\r\n\r\n<h3>Пути предотвращения межсайтовых сценарных атак</h3>\r\n\r\n<p>Как предотвратить межсайтовую сценарную атаку? На помощь приходит стандартный метод PHP. С помощью функции htmlentities() мы сможем экранизировать участки вредоносной вставки. Более подробно о данной функции можно найти в документации PHP.<br />\r\nВ стандартных методах PHP существует пару функций с помощью которых можно экранизировать HTML. Простейшая это htmlspecialchars() &ndash; экранизирует четыре символа (&lt; &gt; &ldquo; и &amp;) . Но именно функция htmlentities ( ) преобразует любые символы, которые имеют эквивалент сущности HTML. Имеется один нюанс, при преобразовании данная функция орудует набором символов UTF-8 , поэтому мы получим вместо вставки вредоносного кода участок из обычных символов. Таким образом мы сможем ограничить внедрение вредоносных участков кода в комментарии нашего блога. Но не стоит забывать о том что это лишь одна из возможных межсайтовых атак разновидности &laquo;внедрение кода&raquo;. Существует еще DDOS-атаки, <a href=\"https://myprojects.info/ru/article/12\">в этой статье</a> мы постарались объяснить, как проверить на уязвимость серверную сайта.</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(5, 3, 1, 'Load testing site', 'Load and benchmarking testing site: analysis and elimination of errors', '<p>On a fictional example, we will consider with you a situation in which we will show that the load testing of a site is extremely necessary for an average and highly developing business.</p>\r\n', '<p>Analysis and elimination of errors</p>\r\n', '<p>Each site (hosting) has its own resource - the maximum possible load that it can withstand, after which it will be lost or put in 404 error. Load testing site - a tidbit not only testers or site developers. But also intruders who are profitable, take you out of the competitive niche and send the site to the knockout. On a fictional example, we will consider with you a situation in which we will show that the load testing of a site is extremely necessary for an average and highly developing business.<br />\r\n&nbsp;<br />\r\nImagine a person who has gone from outdated sales methods and is moving a little to Internet resources. For example, he sells women&#39;s accessories (jewelry). And at one moment, calculating the rental price and analyzing the income, he recalls that his friend once told him that now you can do all this in an online store and not pay rent, etc. And everything is so good with a friend: profit, increase in sales, growth. But there is a huge &quot;BUT&quot;. We forgot to say that this friend is selling clothes. And the type of clothing is so unique that it has only a few foreign competitors. It turns out that he spends for example: $ 200 (hosting + domain) + $ 300 (programmer&rsquo;s services) = $ 500 / year. And he has an average profit of 4-5000 $ / year. Elegant is not it?<br />\r\nAnd our character acts just like his friend. He buys a hosting and orders the creation of a site, forgetting to analyze the Internet market by its subject. He pays SEO optimizers and now his site is in the top 10 in the field. What happens next? It is simply squeezed. How? Vulnerability CMS, layout or hosting. In principle, anything even a module or plug-in on its site can lead to a load on the site and subsequently the server. His site leaves a minimum of 404 error, and when resuming his work using reboot. The server again goes into the same error (state). I will not further develop this fictional story and follow the further actions of our character just because there are two ways out:</p>\r\n\r\n<ul>\r\n	<li>tidy up the hosting resource (server) security issues</li>\r\n	<li>give up</li>\r\n</ul>\r\n\r\n<h2>Load testing site - error analysis</h2>\r\n\r\n<p>Let us proceed better to the analysis of errors and the construction of an algorithm to prevent such problems.</p>\r\n\r\n<ol>\r\n	<li>Analyze your customer and competitors. Find out the approximate load on competitors&#39; sites. What equipment is needed for the site? if the competitive niche is 200-300 visitors per day (as much as possible), the usual hosting with php memory limit 256-512 mb + apache is enough; if you need to use dedicated (virtual) hosting, go to the next item (in case of the first question, the second item can also be completed).</li>\r\n	<li>Selection of equipment or server har (hosting). For this question you can contact us. The programmer will conduct the necessary checks and provide you with a one-time consultation with an explanation of all the details (price: 500 UAH).</li>\r\n	<li>Testing hosting (server). In the event that you do not order, but make out and collect your server, the algorithm of actions will be different. But in the end, it is still necessary to conduct testing. To do this, look for a resource like Loadimpact, test it and get this result: the site can withstand a load of 50 users. In the event that the load is needed 300+ users go to the search for other resources.</li>\r\n</ol>\r\n\r\n<h3>Load testing site - the elimination of error 404</h3>\r\n\r\n<p>Load testing of the site, on this service here BrowseMob takes longer. But we get the final result, which will say that the server can withstand more than 1000+ users simultaneously. Since our article is about site load testing, we will talk about testing using Apache or PHP technologies.<br />\r\nThe algorithm described above is suitable for servers, sites and applications. It is necessary to understand it, because despite the fact that it is you testing, the load still falls on the server hardware. Let&#39;s go back to testing.</p>\r\n\r\n<h3>Load and benchmarking: what&#39;s the difference?</h3>\r\n\r\n<p>There is load and reference testing and it is important to understand the difference between them. Load testing is aimed at disabling the application or site. And benchmarking is aimed at clarifying how many requests per minute or second a server can perform.<br />\r\nWe will speak on the example of PHP as it is in principle the main language of WEB development after JS (javascript). PHP itself is quite fast in terms of speed of requests and responses. But people often forget that to the response time of PHP itself, you can freely add the speed (response) of the hardware itself. Therefore, it is very important to know the critical point at which your equipment (server) will fail or go into error. Wielding knowledge on this issue is always possible, you can estimate when you need to add equipment or to distribute the load by placing and dividing into a couple or more servers.</p>\r\n\r\n<p>Also, later, you can identify the weaknesses of the platform or application and fix them. There is an excellent open-source program Siege (recommendation) that can be configured to read a large number of URLs from the configuration file and regressive testing (defendant) or a random read from the URL list.<br />\r\n&nbsp;<br />\r\nThus you can simulate the actual use of the site and the load on it. Knowing the vulnerability in your site or application, you can solve the issue of security and load site. And since the program is absolutely free, you can use it by constantly finding and correcting the shortcomings of your site or server.<br />\r\n&nbsp;<br />\r\nWhat is the conclusion? Of course, for each person the load testing of the site will seem unnecessarily expensive in money or time. But forewarned is forearmed! You can order from us more detailed advice on security issues or testing of your sites, as well as the performance of the necessary work.</p>\r\n'),
(6, 3, 2, 'Нагрузочное тестирование сайта', 'Нагрузочное и эталонное тестирование сайта: анализ и устранение ошибок', '<p>На вымышленном примере, мы рассмотрим с вами ситуацию, в которой покажем, что нагрузочное тестирование сайта крайне необходимо среднему и высоко развивающемуся бизнесу.</p>\r\n', '<div>Анализ и устранение ошибок</div>\r\n', '<div>У каждого сайта (хостинга) есть свой ресурс - максимальная возможная нагрузка, которую он сможет выдержат, после чего будет утерян или положен в 404 ошибку. Нагрузочное тестирование сайта &ndash; лакомый кусочек не только тестировщиков или разработчиков сайтов. Но и злоумышленников, которым выгодно, вывести Вас из конкурентной ниши и отправить сайт в нокаут. На вымышленном примере, мы рассмотрим с вами ситуацию, в которой покажем, что нагрузочное тестирование сайта крайне необходимо среднему и высоко развивающемуся бизнесу.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Представьте себе человека, который ушел от устарелых методов продаж и по чуть-чуть переходит к интернет-ресурсам. К примеру, он занимается продажей женских аксессуаров (бижутерии). И вот в один момент подсчитывая цену аренды и анализируя доход, он вспоминает, что его друг однажды поведал ему о том что сейчас можно все это делать в интернет-магазине и не платить за аренду и т.д. И вот все так хорошо у друга: прибыль, увеличение объема продаж, рост. Но есть огромное &quot;НО&quot;. Мы забыли сказать, что этот друг занимается продажей одежды. И тип одежды настолько уникален, что у него всего лишь несколько заграничных конкурентов. Получается, что он тратит к примеру: 200$ (хостинг + домен) + 300$ (услуги программиста) = 500$/год. А прибыли у него в среднем 4-5000$/год. Шикарно не правда ли?</div>\r\n\r\n<div>И вот наш персонаж действует так же, как и его друг. Он покупает хостинг и заказывает создание сайта, забывая проанализировать интернет рынок по своей тематике. Он платит SEO оптимизаторам и вот уже его сайт в ТОП 10 в области. Что происходит дальше? Его просто выжимают. Как? Уязвимости CMS, вёрстки или хостинга. В принципе, чего угодно даже модуля или плагина на его сайте может привести к нагрузке сайта и впоследствии сервера. Его сайт уходит минимально в 404 ошибку, и при возобновлении своей работы с помощью reboot. Сервер снова уходит в туже ошибку (состояние). Я не буду дальше развивать данную вымышленную историю и следить за дальнейшими действиями нашего персонажа лишь потому, что выхода два:</div>\r\n\r\n<ul>\r\n	<li>привести в порядок вопросы безопасности ресурса хостинга (сервера)</li>\r\n	<li>отказаться от данной затеи</li>\r\n</ul>\r\n\r\n<h2>Нагрузочное тестирование сайта - анализ ошибок</h2>\r\n\r\n<div>Перейдем лучше к анализу ошибок и построению алгоритма предотвращения подобных проблем.</div>\r\n\r\n<ol>\r\n	<li>Проанализируйте своего потребителя и конкурентов. Узнайте приблизительную нагрузку на сайты конкурентов. Какое оборудование необходимо для сайта? в случае если конкурентная ниша это 200-300 посетителей в день (максимально) достаточно обычного хостинга с лимитом php memory limit 256-512 mb+apache; если необходимо использовать выделенный (виртуальный) хостинг переходим к следующему пункту (в случае и первого вопроса второй пункт тоже можно выполнить).</li>\r\n	<li>Подбор оборудования или хар-к сервера (хостинга). По данному вопросу вы можете обратиться к нам. Программист проведет необходимую проверку и предоставит вам разовую консультацию с объяснением всех деталей (цена: 500 грн).</li>\r\n	<li>Тестирование хостинга (сервера). В том случае если Вы не заказываете, а оформляете и собираете свой сервер, алгоритм действий будет другой. Но в конечном итоге все равно необходимо провести тестирование. Для этого ищем ресурс по типу Loadimpact, тестируем и получаем такой результат: сайт выдерживает нагрузку в 50 пользователей. В том случае если нагрузка нужна 300+ пользователей переходим к поиску других ресурсов.</li>\r\n</ol>\r\n\r\n<h3>Нагрузочное тестирование сайта - устранение ошибки 404</h3>\r\n\r\n<div>Нагрузочное тестирование сайта, на вот этом сервисе BrowseMob проводится дольше. Но мы получаем конечный результат, в котором будет говорится о том, что сервер может выдержать более 1000+ пользователей одновременно. Так как статья наша о нагрузочном тестировании сайта мы будем говорить о тестировании с помощью технологий Apache или PHP.</div>\r\n\r\n<div>Алгоритм описанный выше подходит для серверов, сайтов и приложений. Его необходимо понимать, потому как несмотря на то, что именно вы тестируете, нагрузка все равно ложится на серверное оборудование. Вернемся к тестированию.</div>\r\n\r\n<h3>Нагрузочное и эталонное тестирование: в чем разница?</h3>\r\n\r\n<div>Существует нагрузочное и эталонное тестирование и важно понимать разницу между ними. Нагрузочное тестирование направлено на вывод из строя приложения или сайта. А эталонное тестирование направленно на уточнение сколько запросов в минуту или секунду может выполнить сервер.</div>\r\n\r\n<div>Мы будем говорить на примере PHP так как это в принципе основной язык WEB разработки после JS (javascript). Сам по себе PHP довольно быстрый в плане выполнения скорости запросов и ответов. Но зачастую все забывают о том, что к времени ответа самого PHP свободно можно добавить скорость работы (ответа) самого оборудования. Поэтому очень важно знать критическую точку, при которой ваше оборудование (сервер) выйдет из строя или уйдет в ошибки. Орудуя знаниями по этому вопросу всегда, можно оценить, когда понадобится добавить оборудование или же распределить нагрузку с помощью размещения и разделения на пару или больше серверов. Так же, в последствии, можно выявить слабости платформы или приложения и исправить их. Существует прекрасная программа с открытым исходным кодом Siege (рекомендация) которую можно настроить для чтения большого кол-ва URL из конфигурационного файла и регрессивного тестирования (подследственного) или рандом чтение из списка URL.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Таким образом можно смоделировать реальное использование сайта и нагрузку на него. Зная уязвимое место на вашем сайте или приложении, можно решить вопрос с безопасностью и нагрузкой сайта. И так как программа абсолютно бесплатна её можно использовать, постоянно находя и исправляя недостатки своего сайта или сервера.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Какой же вывод? Конечно же для каждого человека нагрузочное тестирование сайта будет казаться неоправданно затратным по деньгам или времени. Но, предупрежден значит вооружен! Более подробную консультацию по вопросам безопасности или тестированию Ваших сайтов, а также выполнению необходимых работ вы можете заказать у нас.</div>\r\n'),
(7, 4, 1, 'Burnout syndrome for programmers', 'Burnout Syndrome: How can a programmer avoid depression? Why do programmers burn out emotionally?', '<p>Burnout syndrome is familiar to almost every programmer. What is happening to us? Where did the incentive, which was at the beginning, go? These brothers are our eternal destiny - burnout, fatigue, stress.&nbsp;</p>\r\n', '<p>How to avoid depression?</p>\r\n', '<p>And again, closing our eyes once again in an attempt to fall asleep, we watch cartoons in the form of our work and projects. And just before bedtime, the time comes for maximum workability and finding a solution directly for all the tasks that were encountered in the work. And so I want to get up, and again return to solving problems, forgetting about sleep. After weeks of fruitful work, in which we burned down many times, we find that our project has become meaningless. How so? It was an innovation! A familiar situation, right?</p>\r\n\r\n<h2>Burnout Syndrome: How can a programmer avoid depression?</h2>\r\n\r\n<p>Burnout syndrome is familiar to almost every programmer. What is happening to us? Where did the incentive, which was at the beginning, go? These brothers are our eternal destiny - burnout, fatigue, stress. And what does it all interchangeably. That is, stress = burnout, fatigue = stress, burnout = fatigue. And this is a vicious circle, which runs our tired, burned out programmer.</p>\r\n\r\n<h3>Why do programmers burn out emotionally?</h3>\r\n\r\n<p>What is going on? We don&rsquo;t do anything like that. Everyone saw the Japanese who spend more than 15-18 hours a day at work and live like this for more than 20 years. Looking at them, you begin to dream about how good it would be to work this way yourself. In this mode, many cool projects could be implemented. Reach new heights in knowledge and application. Of course, each of my friends is truly envious of the industriousness of some peoples. And having worked for more than 5 years in the IT field, with joy and sadness in their eyes, they are changing their work to a lackey.<br />\r\nOn the Internet, we found many articles on combating the emotional burnout of programmers. Oh, how many &ldquo;important&rdquo; tips there were to deal with stress and fatigue. Sometimes many copywriters tritely copied from each other articles in parts and combined. Let&rsquo;s take a look at these tips.</p>\r\n\r\n<h3>How to be a programmer when burnout?</h3>\r\n\r\n<p>&bull; do things you like;<br />\r\n&bull; do physical exercises;<br />\r\n&bull; do breathing exercises;<br />\r\n&bull; communicate with people.<br />\r\nIt seems that for copywriters all programmers, just fat and pimple sociopaths who are banal even from a chair do not get up. What is actually useful from the above?</p>\r\n\r\n<h3>How can a programmer avoid burnout?</h3>\r\n\r\n<p>On the personal experience of our programmers, we came up with one actually practical and useful advice.<br />\r\n&nbsp;<br />\r\n<strong>Physical exercise</strong><br />\r\nBut what plan? After all, if you think about it, we move every day: a hike from the table to the kitchen, shop and wc. It turns out that exercises are already present. But it turns out not quite so. How to get out of this situation? Gym? Running or maybe something else? It is necessary to do something that will be unusual for you. After all, many people already go to the gym and go for walks, so for them this is not working advice. You need to change the situation! And get out of your comfort zone.<br />\r\n&nbsp;<br />\r\nSuppose if you already do the exercises and go to the gym and you still have constant stress. Try replacing a trip on transport to work for a walk! And you will get an amazing result for you. If you are used to using the garbage chute, try going out and throwing garbage in the garbage bins. Often they are located at a distance from apartment buildings / Therefore, you will immediately do two useful things: take out the garbage from the house and take a walk. And vice versa, if you do not attend the gym, go! At least once a week on weekends. It will be a change of scenery for you. You will get a lot of moral pleasure replacing the usual things with new ones.</p>\r\n\r\n<h3>Burnout Syndrome among Programmers</h3>\r\n\r\n<p>Upon reflection, we understand that stress is either tiredness from the ordinary fluidity of our lives. Which leads to burnout or a nervous breakdown. As for the rest of the tips about which we wrote above:<br />\r\n1. We are already doing business that we like. After all, if it were not so. Then the &ldquo;Free Cashier&rdquo; would have sounded from our lips for a long time.<br />\r\n2. Breathing exercises are applicable both to prevent stress, and in the midst of passions. Proper breathing helps control stress. After all, if we burn out, and then practice at least a dozen breathing exercises, then this will not lead us to a new enthusiasm in work. &ldquo;They don&rsquo;t wave their fists after the battle,&rdquo; as they say.<br />\r\n3. Communicate with people. The advice is controversial since programmers and other freelancers are constantly interacting with society. We go to the store, communicate with the staff. We go out the door, communicate in a minibus and so on. We communicate with clients, work colleagues, friends and just network users (forums, blogs). Yes, maybe this is not the kind of communication that was meant, but in any case it is interaction with society. If you are an avid homebody, then you should think about this moment.<br />\r\n&nbsp;<br />\r\nIn the end, I would like to wish each programmer to successfully avoid emotional burnout in our hard profession. Well, if you are currently depressed and depressed.&nbsp;In your situation, apply the long-known Six P formula to your situation: &ldquo;Proper Prior Planning Prevents Poor Performance.&rdquo; Have a good rest and start planning your work. We wish you success!</p>\r\n'),
(8, 4, 2, 'Синдром эмоционального выгорания у программистов', 'Синдром выгорания: как программисту избежать депрессии? Как быть программисту при выгорании?', '<p>Синдром эмоционального выгорания знаком почти каждому программисту. Что же с нами случается? Куда же делся стимул, который был вначале? Это братцы наш вечный удел &ndash; выгорание, усталость, стресс.</p>\r\n', '<p>Как&nbsp;избежать депрессии?</p>\r\n', '<div>И снова, в очередной раз закрывая глаза в попытке заснуть, смотрим мультики в виде нашей работы и проектов. И вот именно перед сном приходит время максимальной трудоспособности и нахождения решения прям для всех задач, с которыми столкнулись в работе. И так хочется встать, и снова вернуться к решению задач забыв про сон. Спустя же недели плодотворной работы, в которой мы множество раз сгорели дотла, мы обнаруживаем что наш проект стал бессмысленным. Как же так? Это же была инновация! Знакомая ситуация, правда?</div>\r\n\r\n<h2>Синдром выгорания: как программисту избежать депрессии?</h2>\r\n\r\n<div>Синдром эмоционального выгорания знаком почти каждому программисту. Что же с нами случается? Куда же делся стимул, который был вначале? Это братцы наш вечный удел &ndash; выгорание, усталость, стресс. И при чем это все взаимозаменяемо. То есть стресс = выгоранию, усталость = стрессу, выгорание = усталость. И это замкнутый круг, по которому бегает наш уставший, выгоревший программист.</div>\r\n\r\n<h3>Почему программисты эмоционально выгорают?</h3>\r\n\r\n<div>Что же происходит? Мы ведь ничего такого не делаем. Все видели японцев, которые проводят на работе более 15-18 часов в день и живут так более 20 лет. Смотря на них, начинаешь мечтать о том, как бы было хорошо самому так работать. В таком режиме можно было бы осуществить множество крутых проектов. Достигнуть новых вершин в знании и применении. Безусловно каждый из моих знакомых поистине завидует трудолюбию некоторых народов. А сами проработав более 5 лет в IT сфере с радостью и печалью на глазах меняют свою работу на лакейскую.</div>\r\n\r\n<div>В интернете мы нашли множество статей по борьбе с эмоциональным выгоранием программистов. Ох, сколько там было &laquo;важных&raquo; советов о борьбе со стрессом и усталостью. Порой многие копирайтеры банально копировали друг у друга статьи по частям и соединяли. Давайте же посмотрим на эти советы.</div>\r\n\r\n<h3>Как быть программисту при выгорании?</h3>\r\n\r\n<div>&bull; занимайтесь делом, которое Вам нравится;</div>\r\n\r\n<div>&bull; делайте физические упражнения;</div>\r\n\r\n<div>&bull; делайте дыхательные упражнения;</div>\r\n\r\n<div>&bull; общайтесь с людьми.</div>\r\n\r\n<div>Кажется, что для копирайтеров все программисты, просто жирные и прыщавые социопаты которые банально даже со стула не встают. Что же на самом деле полезно из выше сказанного?</div>\r\n\r\n<h3>Как программисту избежать выгорания?</h3>\r\n\r\n<div>На личном опыте наших программистов, мы вывели один в действительности практичный и полезный совет.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>Физические нагрузки</strong></div>\r\n\r\n<div>Но какого плана? Ведь если поразмыслить, мы и так каждый день двигаемся: поход от стола до кухни, магазина и wc. Получается, что упражнения и так присутствуют. Но выходит не совсем так. Как же выйти из данной ситуации? Спортзал? Бег или может что-то другое? Необходимо делать то, что будет необычным для Тебя. Ведь множество людей и так посещают спортзал и выходит на прогулки, так что для них это не рабочий совет. Вам же необходимо сменить обстановку! И выйти из зоны комфорта.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Допустим если вы и так делаете упражнения и ходите в спортзал и у Вас все равно постоянный стресс. Попробуйте заменить поездку на транспорте до работы на прогулку! И вы получите удивительный для Вас результат. Если Вы привыкли пользоваться мусоропроводом, попробуйте выходить на улицу и выбрасывать мусор в мусорные баки. Зачастую они расположены на расстоянии от жилых домов/ Поэтому вы сразу сделаете две полезные вещи: вынесете мусор из дома и прогуляетесь. И наоборот если Вы не посещаете спортзал &ndash; сходите! Хотя бы раз в неделю на выходных. Это будет сменой обстановки для Вас. Вы получите массу морального удовольствия заменяя привычные вещи на новые.</div>\r\n\r\n<h3>Синдром эмоционального выгорания у программистов</h3>\r\n\r\n<div>Поразмыслив, мы понимаем, что стресс &ndash; это либо усталость от обыденной текучести нашей жизни. Которое приводит к выгоранию или нервному срыву. Что же касается остальных советов, о которых мы писали выше:</div>\r\n\r\n<div>1. Мы и так занимаемся делом, которое нравится. Ведь если бы это было не так. Тогда бы давно &laquo;Свободная касса&raquo; звучало с наших уст.</div>\r\n\r\n<div>2. Дыхательные упражнения применимы как для предотвращения стресса, так и в самый разгар страстей. Правильное дыхание помогает контролировать напряжение. Ведь если мы выгорим, а потом попрактикуем хоть десяток дыхательных упражнений, то к новому энтузиазму в работе это нас не приведет. &laquo;После боя кулаками не машут&raquo; как говорится.</div>\r\n\r\n<div>3. Общаться с людьми. Совет спорный так как у программистов и других фрилансеров идет постоянное взаимодействие с социумом. Мы идем в магазин, общаемся с персоналом. Выходим за дверь, общаемся в маршрутке и так далее. Мы общаемся с клиентами, коллегами по работе, друзьями и просто пользователями сети (форумы, блоги). Да возможно это вовсе не то общение, о котором имелось ввиду, но в любом случае это взаимодействие с социумом. Если же вы заядлый домосед, тогда Вам стоит задуматься над этим моментом.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Напоследок хотелось бы пожелать каждому программисту успешно избегать эмоционального выгорания в нашей нелегкой профессии. Ну, а если вы на данный момент оказались в депрессии и подавленном состоянии. Примените в своей ситуации всем давно известную формулу &laquo;Шести П&raquo;: &laquo;Правильное Предварительное Планирование Препятствует Падению Производительности&raquo;. Хорошо отдохните и приступайте к планированию своей работы. Желаем успехов!</div>\r\n'),
(9, 5, 1, 'Site maintenance and support', 'Site maintenance and support', '<p>Today we will devote our attention to one of the most important and popular issues among owners of Internet resources. Is website maintenance and support necessary?</p>\r\n', '<p>Each site has its own needs (like a living organism)</p>\r\n', '<p>Today we will devote our attention to one of the most important and popular issues among owners of Internet resources. Is website maintenance and support necessary? Let&#39;s think about why this question arises.</p>\r\n\r\n<h2>Site Maintenance and Support</h2>\r\n\r\n<p>Everyone understands that any undertaking must be supported and developed. Then it will pay off and bring a stable, desired profit. But many site owners are sometimes confused and believe that if they have a small online store, then it does not need technical support. Or even worse, the opinion that the created site is already a completed project that does not need development. Why is this a fallacy?</p>\r\n\r\n<h3>Why is site maintenance necessary?</h3>\r\n\r\n<p>Let&#39;s start with the most obvious: there is not a single platform (CMS) that was created with the calculation of the maximum number of goods up to 100 pieces. Each platform needs timely updates. Constant monitoring of not only updates, but also the stable operation of the site is required. From the minimum amount of the above arguments in defense of the need for maintenance of EACH site, we can make the following conclusion: Each site has its own needs (like a living organism). In addition, it is safe to say that absolutely every project of any web studio or developer has its own bugs and errors!</p>\r\n\r\n<h3>What is site maintenance and support?</h3>\r\n\r\n<p>We will not be discussing SEO support and site optimization right now. Although the work on SEO optimization on the site should never stop, because competitors appear daily and you always need to keep your site in the &ldquo;form&rdquo; among search results. But now we&rsquo;ll talk about the need: monitoring stability, timely updating and correction of detected bugs and errors. Let&#39;s go in order.</p>\r\n\r\n<h3>What does control of site stability mean?</h3>\r\n\r\n<p>The stability of the project includes the availability of the site, stress testing of dynamic elements (on schedule) and, of course, stability in the delivery of information to users. Is a separate person needed to check site availability? Not. To do this, it is enough to have constant access and additionally connect metrics and analytics that can notify you of the inaccessibility of a domain or hosting.</p>\r\n\r\n<p>As for load testing and the issuance of complete information for the user. Every day our site will gain weight. What does the &quot;weight&quot; in this sentence have literal meaning - this is the amount of information on the drives. That is why it is necessary to draw up a schedule and test on the principle of load testing all forms, buttons, orders and, of course, payment options on the site. After all, the cause of weight gain can be, for example, a platform update that not only reveals a project bug, but can also perform incorrect caching. Regarding the delivery of information to the user, we are talking primarily about adaptation for mobile devices, as well as the fulfillment of the Google Pagespeed and W3C validator conditions. These resources influence the attitude of search engines to your site. Therefore, just like load testing, these actions must be carried out with a certain frequency. One of the options for determining the frequency is a schedule.</p>\r\n\r\n<p><strong>Timely site update</strong></p>\r\n\r\n<p>Many Open Source (CMS) projects have the ability to be updated automatically. Using these updates, platform developers block access to detected errors in their work. It is very important to monitor the implementation of these platform updates, because this issue is related to the security of your site or project! But this is just one of the facets of work on this item.</p>\r\n\r\n<p>Often, developers do their work with crutches that affect the platform itself. Typically, such &quot;programmers&quot; prohibit system updates so that their work is not lost in vain. Indeed, with the update of their work can fly off. Therefore, it is necessary to identify these errors in the work of programmers at the stage of load testing.</p>\r\n\r\n<p>It is also very important to constantly work on a project. Release updates if necessary. Usually the employees of our studio draw up a schedule of updates and improvements for sites that we have on maintenance. This is very convenient for each client, because you can clearly see the work of programmers and know in what time frame the necessary work will be completed.</p>\r\n\r\n<p>There are many more additional services that are performed as agreed or by the client. All this is discussed when ordering technical support for the site. For example, moving to another platform, implementing caching or compression of boot files, controlling DDOS attacks and preventing them.</p>\r\n\r\n<p>As a conclusion, let&#39;s look at the risks of omitting site maintenance. Hackers use known bugs or errors in the project to crack the site. Such actions lead to loss of access to the site and not stability. The load on hosting is growing every day due to the lack of technical work and site control. Plus, the daily moral aging of the project. Behind this are many other nuances that adversely affect your site.</p>\r\n\r\n<p>We have provided all the disadvantages that follow the omission and neglect of site maintenance. You decide!</p>\r\n'),
(10, 5, 2, 'Техническое обслуживание и поддержка сайта', 'Зачем необходимо техническое обслуживание и поддержка сайта?', '<p>Сегодня мы уделим наше внимание одному из самых важных и популярных вопросов среди владельцев интернет ресурсов. Нужно ли техническое обслуживание и поддержка сайта?</p>\r\n', '<p>У каждого сайта есть свои потребности, как у живого организма</p>\r\n', '<p>Сегодня мы уделим наше внимание одному из самых важных и популярных вопросов среди владельцев интернет ресурсов. Нужно ли техническое обслуживание и поддержка сайта? Давайте подумаем почему возникает данный вопрос.</p>\r\n\r\n<h2>Техническое обслуживание и поддержка сайта</h2>\r\n\r\n<p>Каждый человек понимает, что любое начинание необходимо поддерживать и развивать. Тогда оно окупится и принесет стабильную, желаемую прибыль. Но многие владельцы сайтов порой входят в заблуждение и считают, что если у них маленький интернет-магазин, то в технической поддержке он не нуждается. Или того хуже мнение о том, что созданный сайт &ndash; уже завершенный проект, который не нуждается в развитии. Почему это заблуждение?</p>\r\n\r\n<h3>Зачем необходимо техническое обслуживание сайта?</h3>\r\n\r\n<p>Давайте начнем с самого очевидного: нет ни одной платформы (CMS) которая создавалась с расчётом максимального кол-ва товаров до 100 штук. Каждой платформе необходимо своевременное обновление. Необходим постоянный контроль не только обновлений, но и стабильной работы сайта. Из минимального количества приведенных выше аргументов в защиту необходимости технического обслуживания КАЖДОГО сайта, можно сделать такое умозаключение: У каждого сайта есть свои потребности (как у живого организма). К тому же, можно с уверенностью заявить о том, что абсолютно каждый проект любой веб-студии или разработчика имеет свои баги и ошибки!</p>\r\n\r\n<h3>Что такое техническое обслуживание и поддержка сайта?</h3>\r\n\r\n<p>Мы не будем сейчас вести дискуссии о SEO поддержке и оптимизации сайта. Хотя работы касательно оптимизации SEO на сайте вообще никогда не должны прекращаться, потому что конкуренты появляются ежедневно и всегда нужно держать свой сайт в &laquo;форме&raquo; среди поисковой выдачи. Но сейчас мы поговорим о необходимости: контроля стабильности работы, своевременном обновлении и исправлении обнаруженных багов и ошибок. Давайте по порядку.</p>\r\n\r\n<h3>Что означает контроль стабильности работы сайта?</h3>\r\n\r\n<p>Стабильность работы проекта включает в себя доступность сайта, <a href=\"https://myprojects.info/ru/article/12\">нагрузочное тестирование</a> динамических элементов (по графику) и конечно же стабильность в выдаче информации для пользователей. Необходим ли отдельный человек для проверки доступности сайта? Нет. Для этого достаточно иметь постоянный доступ и дополнительно подключить метрику и аналитику которые смогут оповестить Вас о недоступности домена или хостинга.</p>\r\n\r\n<p>Что же касается нагрузочного тестирования и выдачи полной информации для пользователя. С каждым днём наш сайт будет набирать свой вес. При чем &laquo;вес&raquo; в этом предложении имеет буквальное значение &ndash; это объем информации на накопители. Именно поэтому необходимо составить график и тестировать по принципу нагрузочного тестирования все формы, кнопки, заказы и конечно же возможности оплаты на сайте. Ведь причиной набора веса может стать, к примеру обновление платформы, которое не только раскроет баг проекта, но и может выполнить неправильно кэширование. По части выдачи информации пользователю, мы говорим в первую очередь об адаптации под мобильные устройства, а также выполнение условий <a href=\"https://developers.google.com/speed/pagespeed/insights/?hl=RU\">Google Pagespeed</a> и <a href=\"https://validator.w3.org/\">W3C validator</a>. Эти ресурсы влияют на отношение поисковых систем к Вашему сайту. Поэтому так же, как и нагрузочное тестирование эти действия необходимо проводить с определенной периодичностью. Один из вариантов определения периодичности &ndash; составление графика.</p>\r\n\r\n<p><strong>Своевременное обновление сайта</strong></p>\r\n\r\n<p>Многие Open Source (CMS) проекты имеют возможность обновляться в автоматическом режиме. С помощью данных обновлений, разработчики платформы закрывают доступ к обнаруженным ошибкам в их работе. Очень важно следить за проведением данных обновлений платформы, потому что это вопрос касается безопасности Вашего сайта или проекта! Но это всего лишь одна из граней работ над данным пунктом.</p>\r\n\r\n<p>Часто разработчики выполняют свою работу с помощью &laquo;костылей&raquo; которые влияют на саму платформу.&nbsp;Обычно такие &laquo;программисты&raquo; запрещают обновления системы для того, чтобы их работа не пропала зря. Ведь с обновлением их труды могут слететь. Поэтому необходимо выявлять данные погрешности в работе программистов еще на этапе нагрузочного тестирования.</p>\r\n\r\n<p>Так же очень важно постоянно работать над проектом. Выпускать обновления если это необходимо. Обычно работники нашей студии составляют график обновлений и доработок для сайтов, которые находятся у нас на техническом обслуживании. Это очень удобно для каждого клиента, ведь можно видеть наглядно работу программистов и знать в какие сроки будут выполнены необходимые работы.</p>\r\n\r\n<p>Существует еще множество дополнительных услуг, которые выполняются по согласованию или же желанию клиента. Все это обсуждается при заказе технической поддержки сайта. Например, перевод на другую платформу, реализация кэширования или сжатия загрузочных файлов, <a href=\"https://myprojects.info/ru/article/11\">контроль DDOS-атак и их предотвращение</a>.</p>\r\n\r\n<p>Как заключение давайте рассмотрим риски при упущении технического обслуживания сайта. Хакеры используют известные баги или ошибки в проекте, чтобы взломать сайт. Такие действия приводят к потере доступа к сайту и не стабильности работы. Нагрузка на хостинг с каждым днем растёт из-за отсутствия технических работ и контроля сайта. Плюс, ежедневное моральное старение проекта. За этим скрыты многие другие нюансы, которые пагубно влияют на ваш сайт.</p>\r\n\r\n<p>Мы предоставили все минусы, которые следуют за упущением и игнорированием технического обслуживания сайта. Решать Вам!</p>\r\n');
INSERT INTO `article_lang` (`id`, `articles_id`, `lang_id`, `title`, `seotitle`, `seodescription`, `short`, `content`) VALUES
(11, 6, 1, 'Quality website - avoid costly mistakes.', 'What does a quality site mean? 3 rules for a quality site code', '<p>In this article, we will provide answers to such questions: what does a quality site mean, what are the requirements for the site?</p>\r\n', '<p>3 rules for a quality site code</p>\r\n', '<p>In this article, we will provide answers to such questions: what does a quality site mean, what are the requirements for the site? Who in the first place can say about the quality of your site?</p>\r\n\r\n<p>To answer these questions, you and I need to move a little to the background of all sites. We will return to the time when Html, the standardized web page markup language, was first applied. The world first saw the version of Html 0.9, but it was not so long ago in 1866. It is worth noting that this language was approved as a standard in 1995. That is, the following conclusion can be drawn from this: Html, like all other languages, has its own syntax rules, general rules, etc.</p>\r\n\r\n<h3>3 rules for a quality site code</h3>\r\n\r\n<ol>\r\n	<li>High-quality sites are those in which all the rules of the language in which it is created are observed. An exception may be those moments when sections of code of a different version are used for functionality (now very often in Html they use Html5). But despite this, the code must be correct.</li>\r\n	<li>The code must comply with <a href=\"https://validator.w3.org/\">w3c</a> validity conditions. But there is one more condition of a quality site, in case of non-observance of this point, this will affect not only the conscience of the programmer, but also the convenience of the user.</li>\r\n	<li>The site should be cross-browser (excluding ancient versions of browsers) and adaptive. This rule is very important! Because it affects both the development of the site and the promotion (now this is a mandatory requirement of search engines).</li>\r\n</ol>\r\n\r\n<p>Now I would like to talk about the rule, which is only inside our team! The site should be convenient! If it has dynamic and other sections that will need to be changed by the user himself (there are actually a lot of them). ALL of this must be realized!</p>\r\n\r\n<h2>What does a quality site mean?</h2>\r\n\r\n<p>This is a convenient, technically correctly written site, with the possibility of quality promotion in search engines and its development. And of course, this is the site that is convenient not only for the administration, but also for every ordinary user. After all, it is for them that a high-quality website is created!</p>\r\n'),
(12, 6, 2, 'Качественный сайт - избежание дорогостоящих ошибок.', 'Что означает качественный сайт? 3 правила для качественного кода сайта', '<p>В этой стать мы предоставим ответы на такие вопросы: что означает качественный сайт, какие есть требования к сайту?&nbsp;</p>\r\n', '<p>3 правила для качественного кода сайта</p>\r\n', '<p>В этой стать мы предоставим ответы на такие вопросы: что означает качественный сайт, какие есть требования к сайту? Кто в первую очередь может сказать о качественности Вашего сайта?</p>\r\n\r\n<p>Для ответа на эти вопросы нам с Вами необходимо переместиться немного в предысторию всех сайтов. Мы вернемся к тому времени, когда был впервые применен Html - стандартизированный язык разметки веб-страницы. Впервые мир увидел версию Html 0.9, а было это не так уж и давно в 1866 году. Стоить заметить, что одобренный как стандарт этот язык был в 1995 году. То есть из этого можно сделать следующее умозаключение: Html, как и все остальные языки имеет свои правила синтаксиса, общие правила и т.д.</p>\r\n\r\n<h3>3 правила для качественного кода сайта</h3>\r\n\r\n<ol>\r\n	<li>Качественные сайты это те в которых соблюдены все правила языка, на котором он создан. Исключением могут быть те моменты, когда для функциональности используются участки кода другой версии (сейчас очень часто в Html используют Html5). Но несмотря на это, код должен быть правильным.</li>\r\n	<li>Код должен соответствовать условиям валидности <a href=\"https://validator.w3.org/\">w3c</a>. Но есть еще одно условие качественного сайта, в случае несоблюдения этого момента, это коснется не только совести программиста, но и удобства пользователя.</li>\r\n	<li>Сайт должен быть кроссбраузерным (исключая древние версии браузеров) и адаптивным. Это правило очень важно! Потому что оно влияете как на развитие сайта так и на продвижение (сейчас это обязательное требование поисковых систем).</li>\r\n</ol>\r\n\r\n<p>Теперь хотелось бы рассказать о правиле, которое только внутри нашей команды! Сайт должен быть удобным! Если в нем есть динамические и другие участки, которые необходимо будет менять самому пользователю (их на самом деле большое множество). ВСЕ это должно быть реализовано!</p>\r\n\r\n<h2>Что означает качественный сайт?</h2>\r\n\r\n<p>Это удобный, технически правильно написанный сайт, с возможностью качественного продвижения в поисковых системах и его развития. И конечно же это тот сайт, который удобный не только администрации, но и каждому рядовому пользователю. Ведь именно для них и создается качественный сайт!</p>\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

CREATE TABLE `banners` (
  `id` int(10) NOT NULL,
  `img` varchar(255) NOT NULL,
  `img_eng` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` (`id`, `img`, `img_eng`, `link`) VALUES
(1, '/img/banner/9.jpg', '/img/banner/9.jpg', '#'),
(2, '/img/banner/10.jpg', '/img/banner/10.jpg', '#'),
(3, '/img/banner/tab-banner.jpg', '/img/banner/tab-banner.jpg', '#'),
(4, '/img/banner/1.png', '/img/banner/1.png', '#'),
(5, '/img/banner/2.png', '/img/banner/2.png', '#');

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE `brands` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `logo` varchar(255) NOT NULL,
  `title_eng` varchar(255) NOT NULL,
  `description_eng` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`id`, `title`, `description`, `logo`, `title_eng`, `description_eng`) VALUES
(1, 'goldengrid', 'goldengrid', '/img/brand/1.png', 'goldengrid', 'goldengrid'),
(2, 'Real estate', 'Real estate', '/img/brand/2.png', 'Real estate', 'Real estate'),
(3, 'Hipster', 'Hipster', '/img/brand/3.png', 'Hipster', 'Hipster'),
(4, 'Mara', 'Mara', '/img/brand/4.png', 'Mara', 'Mara'),
(5, 'Baliresort', 'Baliresort', '/img/brand/5.png', 'Baliresort', 'Baliresort');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_eng` varchar(255) NOT NULL,
  `seotitle` varchar(255) NOT NULL,
  `seotitle_eng` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `description_eng` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`, `title_eng`, `seotitle`, `seotitle_eng`, `description`, `description_eng`) VALUES
(1, 'Инструменты', 'Tools', 'Инструменты', 'Tools', 'Инструменты', 'Tools'),
(2, 'Другое', 'Other', 'Другое', 'Other', 'Другое', 'Other');

-- --------------------------------------------------------

--
-- Структура таблицы `image_products`
--

CREATE TABLE `image_products` (
  `id` int(10) NOT NULL,
  `products_id` int(10) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `image_products`
--

INSERT INTO `image_products` (`id`, `products_id`, `img`) VALUES
(1, 1, '/img/products/1.jpg'),
(2, 2, '/img/products/2.jpg'),
(3, 3, '/img/products/3.jpg'),
(4, 4, '/img/products/4.jpg'),
(5, 5, '/img/products/5.jpg'),
(6, 6, '/img/products/6.jpg'),
(7, 7, '/img/products/7.jpg'),
(8, 8, '/img/products/8.jpg'),
(9, 9, '/img/products/9.jpg'),
(10, 10, '/img/products/9.jpg'),
(11, 11, '/img/products/2.jpg'),
(12, 12, '/img/products/3.jpg'),
(13, 13, '/img/products/4.jpg'),
(14, 14, '/img/products/1.jpg'),
(15, 15, '/img/products/2.jpg'),
(16, 15, '/img/products/5.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `lang`
--

CREATE TABLE `lang` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `local` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `default` smallint(6) NOT NULL DEFAULT '0',
  `date_update` int(11) NOT NULL,
  `date_create` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lang`
--

INSERT INTO `lang` (`id`, `url`, `local`, `name`, `default`, `date_update`, `date_create`) VALUES
(1, 'en', 'en', 'English', 1, 1566648611, 1566648611),
(2, 'ru', 'ru', 'Русский', 0, 1566648611, 1566648611);

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1566979376),
('m190828_080151_create_user_table', 1566979377);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(10) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `created_at`, `updated_at`, `qty`, `sum`, `status`, `name`, `email`, `phone`, `address`, `user_id`) VALUES
(1, '2019-08-28 17:50:29', '2019-08-28 17:50:29', 5, 2500, '0', 'Игорь', 'admin@myprojects.info', '+38098866638', 'Kremenchug', NULL),
(2, '2019-08-28 17:50:42', '2019-08-28 17:50:42', 5, 2500, '0', 'Игорь', 'admin@myprojects.info', '+38098866638', 'Kremenchug', NULL),
(3, '2019-08-28 17:51:28', '2019-08-28 17:51:28', 1, 400, '0', 'Игорь', 'admin@myprojects.info', '+38098866638', 'Kremenchug', NULL),
(4, '2019-08-28 17:51:58', '2019-08-28 17:51:58', 1, 250, '0', 'Игорь', 'admin@myprojects.info', '+38098866638', 'Kremenchug', NULL),
(5, '2019-08-28 17:54:10', '2019-08-28 17:54:10', 1, 400, '0', 'Игорь', 'admin@myprojects.info', '+38098866638', 'Kremenchug', NULL),
(6, '2019-08-28 17:54:36', '2019-08-28 17:54:36', 1, 400, '0', 'Игорь', 'admin@myprojects.info', '+38098866638', 'Kremenchug', NULL),
(7, '2019-08-28 17:58:07', '2019-08-28 17:58:07', 1, 500, '0', 'Игорь', 'admin@myprojects.info', '+38098866638', 'Kremenchug', 14),
(8, '2019-08-28 18:03:33', '2019-08-28 18:03:33', 6, 1850, '0', 'Игорь', 'admin@myprojects.info', '+38098866638', 'Kremenchug', 14),
(9, '2019-08-28 18:45:56', '2019-08-28 18:45:56', 1, 500, '0', 'Игорь', 'anubis3009@gmail.com', '+38098866638', 'Kremenchug', 10),
(10, '2019-08-28 18:46:09', '2019-08-28 18:46:09', 2, 750, '0', 'Игорь', 'admin@myprojects.info', '+38098866638', 'Kremenchug', 10),
(11, '2019-08-28 18:46:23', '2019-08-28 18:46:23', 2, 700, '0', 'Игорь', 'admin@myprojects.info', '+38098866638', 'Kremenchug', 10),
(12, '2019-08-28 19:12:44', '2019-08-28 19:12:44', 1, 300, '0', 'Игорь', 'admin@myprojects.info', '+38098866638', 'Kremenchug', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `price`, `qty_item`, `sum_item`) VALUES
(60, 2, 4, 'Products Name', 500, 5, 2500),
(61, 3, 2, 'Products Name', 400, 1, 400),
(62, 4, 3, 'Products Name', 250, 1, 250),
(63, 5, 14, 'Products Name', 400, 1, 400),
(64, 6, 14, 'Products Name', 400, 1, 400),
(65, 7, 4, 'Products Name', 500, 1, 500),
(66, 8, 15, 'Products Name', 250, 1, 250),
(67, 8, 3, 'Products Name', 250, 2, 500),
(68, 8, 6, 'Products Name', 400, 1, 400),
(69, 8, 2, 'Products Name', 400, 1, 400),
(70, 8, 13, 'Products Name', 300, 1, 300),
(71, 9, 4, 'Products Name', 500, 1, 500),
(72, 10, 7, 'Products Name', 250, 1, 250),
(73, 10, 12, 'Products Name', 500, 1, 500),
(74, 11, 2, 'Products Name', 400, 1, 400),
(75, 11, 5, 'Products Name', 300, 1, 300),
(76, 12, 1, 'Products Name Ihor', 300, 1, 300);

-- --------------------------------------------------------

--
-- Структура таблицы `policy`
--

CREATE TABLE `policy` (
  `id` int(10) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `title_eng` varchar(255) NOT NULL,
  `description_eng` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `policy`
--

INSERT INTO `policy` (`id`, `icon`, `title`, `description`, `title_eng`, `description_eng`) VALUES
(1, '/img/icon/1.png', 'FREE DELIVERY', 'Free shipping on all order', 'БЕСПЛАТНАЯ ДОСТАВКА', 'Бесплатная доставка на весь заказ'),
(2, '/img/icon/2.png', 'ONLINE SUPPORT 24/7', 'Support online 24 hours', 'ОНЛАЙН ПОДДЕРЖКА 24/7', 'Поддержка онлайн 24 часа'),
(3, '/img/icon/3.png', 'MONEY RETURN', 'Back guarantee under 7 days', 'ВОЗВРАТ ДЕНЕГ', 'Гарантия возврата до 7 дней'),
(4, '/img/icon/4.png', 'MEMBER DISCOUNT', 'Onevery order over $30.00', 'СКИДКА ЧЛЕНА\r\n', 'Один заказ свыше $ 30,00\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `rankid` int(10) NOT NULL,
  `brandid` int(10) NOT NULL,
  `top` enum('0','1') DEFAULT NULL,
  `seller` enum('0','1') DEFAULT NULL,
  `featured` enum('0','1') DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `in_stock` int(10) DEFAULT NULL,
  `last_price` varchar(255) DEFAULT NULL,
  `sale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `rankid`, `brandid`, `top`, `seller`, `featured`, `price`, `in_stock`, `last_price`, `sale`) VALUES
(1, 1, 1, '0', '0', '0', '300', 5, '350', '20%'),
(2, 1, 1, '1', '1', '1', '400', 30, '', ''),
(3, 2, 1, '1', '0', '1', '250', 10, '250', '40%'),
(4, 2, 1, '0', '1', '0', '500', 20, NULL, ''),
(5, 1, 1, '0', '0', '0', '300', 5, '350', '20%'),
(6, 1, 1, '1', '1', '1', '400', 30, '', ''),
(7, 2, 1, '0', '0', '1', '250', 10, '250', ''),
(8, 2, 1, '0', '1', '0', '500', 20, NULL, '50%'),
(9, 1, 1, '0', '0', '0', '300', 5, '350', '20%'),
(10, 1, 1, '1', '1', '1', '400', 30, '350', ''),
(11, 2, 1, '0', '0', '1', '250', 10, '250', ''),
(12, 2, 1, '0', '1', '0', '500', 20, NULL, NULL),
(13, 1, 1, '0', '0', '0', '300', 5, '350', '20%'),
(14, 1, 1, '1', '1', '1', '400', 30, '', ''),
(15, 2, 1, '0', '0', '1', '250', NULL, '250', '');

-- --------------------------------------------------------

--
-- Структура таблицы `products_lang`
--

CREATE TABLE `products_lang` (
  `id` int(10) NOT NULL,
  `products_id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seotitle` varchar(255) NOT NULL,
  `seodescription` text NOT NULL,
  `short` text NOT NULL,
  `details` text NOT NULL,
  `lang_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products_lang`
--

INSERT INTO `products_lang` (`id`, `products_id`, `title`, `seotitle`, `seodescription`, `short`, `details`, `lang_id`) VALUES
(1, 1, 'Products Name Ihor', 'Products Name', 'Products Name', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.\r\n\r\nSlip pocket on front.\r\nContrast piping.\r\nDurable nylon construction.', 1),
(2, 2, 'Products Name', 'Products Name', 'Products Name', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.\r\n\r\nSlip pocket on front.\r\nContrast piping.\r\nDurable nylon construction.', 1),
(3, 3, 'Products Name', 'Products Name', 'Products Name', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.\r\n\r\nSlip pocket on front.\r\nContrast piping.\r\nDurable nylon construction.', 1),
(4, 4, 'Products Name', 'Products Name', 'Products Name', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.\r\n\r\nSlip pocket on front.\r\nContrast piping.\r\nDurable nylon construction.', 1),
(5, 5, 'Products Name', 'Products Name', 'Products Name', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.\r\n\r\nSlip pocket on front.\r\nContrast piping.\r\nDurable nylon construction.', 1),
(6, 6, 'Products Name', 'Products Name', 'Products Name', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.\r\n\r\nSlip pocket on front.\r\nContrast piping.\r\nDurable nylon construction.', 1),
(7, 7, 'Products Name', 'Products Name', 'Products Name', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.\r\n\r\nSlip pocket on front.\r\nContrast piping.\r\nDurable nylon construction.', 1),
(8, 8, 'Products Name', 'Products Name', 'Products Name', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.\r\n\r\nSlip pocket on front.\r\nContrast piping.\r\nDurable nylon construction.', 1),
(9, 9, 'Products Name', 'Products Name', 'Products Name', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.\r\n\r\nSlip pocket on front.\r\nContrast piping.\r\nDurable nylon construction.', 1),
(10, 10, 'Products Name', 'Products Name', 'Products Name', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.\r\n\r\nSlip pocket on front.\r\nContrast piping.\r\nDurable nylon construction.', 1),
(11, 11, 'Products Name', 'Products Name', 'Products Name', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.\r\n\r\nSlip pocket on front.\r\nContrast piping.\r\nDurable nylon construction.', 1),
(12, 12, 'Products Name', 'Products Name', 'Products Name', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.\r\n\r\nSlip pocket on front.\r\nContrast piping.\r\nDurable nylon construction.', 1),
(13, 13, 'Products Name', 'Products Name', 'Products Name', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.\r\n\r\nSlip pocket on front.\r\nContrast piping.\r\nDurable nylon construction.', 1),
(14, 14, 'Products Name', 'Products Name', 'Products Name', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.\r\n\r\nSlip pocket on front.\r\nContrast piping.\r\nDurable nylon construction.', 1),
(15, 15, 'Products Name', 'Products Name', 'Products Name', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.', 'Everything you need for a trip to the gym will fit inside this surprisingly spacious Products Name Here. Stock it with a water bottle, change of clothes, pair of shoes, and even a few beauty products. Fits inside a locker and zips shut for security.\r\n\r\nSlip pocket on front.\r\nContrast piping.\r\nDurable nylon construction.', 1),
(16, 1, 'Название продукта', 'Название продукта', 'Название продукта', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 2),
(17, 2, 'Название продукта', 'Название продукта', 'Название продукта', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 2),
(18, 3, 'Название продукта', 'Название продукта', 'Название продукта', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 2),
(19, 4, 'Название продукта', 'Название продукта', 'Название продукта', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 2),
(20, 5, 'Название продукта', 'Название продукта', 'Название продукта', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 2),
(21, 6, 'Название продукта', 'Название продукта', 'Название продукта', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 2),
(22, 7, 'Название продукта', 'Название продукта', 'Название продукта', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 2),
(23, 8, 'Название продукта', 'Название продукта', 'Название продукта', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 2),
(24, 9, 'Название продукта', 'Название продукта', 'Название продукта', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 2),
(25, 10, 'Название продукта', 'Название продукта', 'Название продукта', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 2),
(26, 11, 'Название продукта', 'Название продукта', 'Название продукта', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 2),
(27, 12, 'Название продукта', 'Название продукта', 'Название продукта', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 2),
(28, 13, 'Название продукта', 'Название продукта', 'Название продукта', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 2),
(29, 14, 'Название продукта', 'Название продукта', 'Название продукта', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 2),
(30, 15, 'Название продукта', 'Название продукта', 'Название продукта', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 'Все, что вам нужно для поездки в спортзал, поместится в этом удивительно просторном названии продуктов. Заполните его бутылкой с водой, сменой одежды, парой обуви и даже несколькими косметическими средствами. Устанавливается в шкафчике и застегивается на молнию для безопасности.\r\n\r\nКарман на передней панели.\r\nКонтрастная окантовка.\r\nПрочная нейлоновая конструкция.', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `ranks`
--

CREATE TABLE `ranks` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seotitle` varchar(255) NOT NULL,
  `seodescription` text,
  `title_eng` varchar(255) NOT NULL,
  `seotitle_eng` varchar(255) NOT NULL,
  `seodescription_eng` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ranks`
--

INSERT INTO `ranks` (`id`, `title`, `seotitle`, `seodescription`, `title_eng`, `seotitle_eng`, `seodescription_eng`) VALUES
(1, 'Электро инструменты', 'Электро инструменты', 'Электро инструменты', 'Electrical', 'Electrical', 'Electrical'),
(2, 'Электро-механический инструмент', 'Электро-механический инструмент', 'Электро-механический инструмент', 'Electrical-mechanics tools', 'Electrical-mechanics tools', 'Electrical-mechanics tools'),
(3, 'Шуруповерты', 'Шуруповерты', 'Шуруповерты', 'Screwdriver', 'Screwdriver', 'Screwdriver'),
(4, 'Болгарки', 'Болгарки', 'Болгарки', 'Grinders', 'Grinders', 'Grinders');

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE `slider` (
  `id` int(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_eng` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `keywords_eng` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `image`, `title`, `title_eng`, `keywords`, `keywords_eng`, `link`, `class`) VALUES
(1, '/img/slider/5.jpg', 'Большая распродажа', 'Big Sale', 'Инструменты <br> Полноценная работа', 'Hand Tools <br>Power Saw Machine', '#', 'slider-1-caption1'),
(2, '/img/slider/6.jpg', 'Большая распродажа', 'Big Sale', 'Инструменты <br> Полноценная работа', 'Hand Tools <br>Power Saw Machine', '#', 'slider-1-caption2');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `firstname`, `lastname`, `telephone`) VALUES
(10, 'admin@gmail.com', 'b8cdb39ec76a60fabbe88983ee68ca48fa8f031f', 'Ihor', 'Admin', '380986392868'),
(11, 'user@mail.ud', 'b8cdb39ec76a60fabbe88983ee68ca48fa8f031f', 'User', 'Name', '380986392868'),
(12, 'user@mail.dd', 'b8cdb39ec76a60fabbe88983ee68ca48fa8f031f', 'User', 'Name', '380986392868'),
(13, 'user@mail.ddd', 'b8cdb39ec76a60fabbe88983ee68ca48fa8f031f', 'User', 'Pupkin', '380986392868'),
(14, 'vlad@mail.ua', 'b8cdb39ec76a60fabbe88983ee68ca48fa8f031f', 'Влад', 'Николаевич', '380986392868');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `article_lang`
--
ALTER TABLE `article_lang`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image_products`
--
ALTER TABLE `image_products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lang`
--
ALTER TABLE `lang`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products_lang`
--
ALTER TABLE `products_lang`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `article_lang`
--
ALTER TABLE `article_lang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `image_products`
--
ALTER TABLE `image_products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `lang`
--
ALTER TABLE `lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `policy`
--
ALTER TABLE `policy`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `products_lang`
--
ALTER TABLE `products_lang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
