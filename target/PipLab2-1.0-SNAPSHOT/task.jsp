<%--
  Created by IntelliJ IDEA.
  User: azamat
  Date: 19.10.18
  Time: 1:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="ru">
<head>
    <title>Lab task</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="resources/css/global.css">
    <link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon">
</head>
<body class="task-page">
<table>
    <jsp:include page="WEB-INF/pages/header.jsp"/>
    <tr>
        <jsp:include page="WEB-INF/pages/sidebar.jsp"/>
        <td class="content">
            <p>Разработать PHP-скрипт, определяющий попадание точки на координатной плоскости в заданную область, и создать HTML-страницу, которая формирует данные для отправки их на обработку этому скрипту.</p>
            <p>Параметр R и координаты точки должны передаваться скрипту посредством HTTP-запроса. Скрипт должен выполнять валидацию данных и возвращать HTML-страницу с таблицей, содержащей полученные параметры и результат вычислений - факт попадания или непопадания точки в область.</p>
            <img class="task-area-image" src="resources/images/task_area.png">
            <p>Кроме того, ответ должен содержать данные о текущем времени и времени работы скрипта.</p>
            <span class="list-caption">Разработанная HTML-страница должна удовлетворять следующим требованиям:</span>
            <ul>
                <li>Для расположения текстовых и графических элементов необходимо использовать табличную верстку.</li>
                <li>Данные формы должны передаваться на обработку посредством POST-запроса.</li>
                <li>Таблицы стилей должны располагаться в отдельных файлах.</li>
                <li>При работе с CSS должно быть продемонстрировано использование селекторов псевдоклассов, селекторов потомств, селекторов идентификаторов, селекторов псевдоэлементов а также такие свойства стилей CSS, как наследование и каскадирование.</li>
                <li>HTML-страница должна иметь "шапку", содержащую ФИО студента, номер группы и новер варианта. При оформлении шапки необходимо явным образом задать шрифт (cursive), его цвет и размер в каскадной таблице стилей.</li>
                <li>Отступы элементов ввода должны задаваться в процентах.</li>
                <li>Страница должна содержать сценарий на языке JavaScript, осуществляющий валидацию значений, вводимых пользователем в поля формы. Любые некорректные значения (например, буквы в координатах точки или отрицательный радиус) должны блокироваться.</li>
            </ul>
            <span class="list-caption">Вопросы к защите лабораторной работы:</span>
            <ol>
                <li>Протокол HTTP. Структура запросов и ответов, методы запросов, коды ответов сервера, заголовки запросов и ответов.</li>
                <li>Язык разметки HTML. Особенности, основные теги и атрибуты тегов.</li>
                <li>Структура HTML-страницы. Объектная модель документа (DOM).</li>
                <li>HTML-формы. Задание метода HTTP-запроса. Правила размещения форм на страницах, виды полей ввода.</li>
                <li>Каскадные таблицы стилей (CSS). Структура - правила, селекторы. Виды селекторов, особенности их применения. Приоритеты правил. Преимущества CSS перед непосредственным заданием стилей через атрибуты тегов.</li>
                <li>LESS, Sass, SCSS. Ключевые особенности, сравнительные характеристики. Совместимость с браузерами, трансляция в "обычный" CSS.</li>
                <li>Клиентские сценарии. Особенности, сферы применения. Язык JavaScript.</li>
                <li>Версии ECMAScript, новые возможности ES6 и ES7.</li>
                <li>Синхронная и асинхронная обработка HTTP-запросов. AJAX.</li>
                <li>Библиотека jQuery. Назначение, основные API. Использование для реализации AJAX и работы с DOM.</li>
                <li>Реализация AJAX с помощью SuperAgent.</li>
                <li>Серверные сценарии. CGI - определение, назначение, ключевые особенности.</li>
                <li>FastCGI - особенности технологии, преимущества и недостатки относительно CGI.</li>
                <li>Язык PHP - синтаксис, типы данных, встраивание в веб-страницы, правила обработки HTTP-запросов. Особенности реализации принципов ООП в PHP.</li>
            </ol>
        </td>
    </tr>
</table>
</body>
</html>