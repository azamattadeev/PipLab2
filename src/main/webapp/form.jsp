<%--
  Created by IntelliJ IDEA.
  User: azamat
  Date: 19.10.18
  Time: 0:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Solution page</title>
    <link rel="stylesheet" type="text/css" href="resources/css/global.css">
    <link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon">
</head>
<body>
<table>
    <jsp:include page="WEB-INF/pages/header.jsp"/>
    <tr>
        <jsp:include page="WEB-INF/pages/sidebar.jsp"/>
        <td class="content">
            <div id="point-form" class="point-form">
                <form action="controller" method="GET" onsubmit="return validate()">
                    <canvas id="canvas" class="area-image" onclick="coordinaty(event)"></canvas>
                    <p id="x_label">Choose x values:</p>
                    <p>
                        <label><input type="radio" class="xValue" name="xValue" id="xValue1" value="-2">-3</label>
                        <label><input type="radio" class="xValue" name="xValue" id="xValue2" value="-1">-2</label>
                        <label><input type="radio" class="xValue" name="xValue" id="xValue3" value="0">-1</label>
                        <label><input type="radio" class="xValue" name="xValue" id="xValue4" value="1"> 0</label>
                        <label><input type="radio" class="xValue" name="xValue" id="xValue5" value="2"> 1</label>
                        <label><input type="radio" class="xValue" name="xValue" id="xValue6" value="3"> 2</label>
                        <label><input type="radio" class="xValue" name="xValue" id="xValue7" value="4"> 3</label>
                        <label><input type="radio" class="xValue" name="xValue" id="xValue8" value="-2"> 4</label>
                        <label><input type="radio" class="xValue" name="xValue" id="xValue9" value="-2"> 5</label>
                    </p>
                    <p>
                        <label id="y_label">Enter y value:<br/><input maxlength="6" id="yValue" type="text" name="yValue" placeholder="(-5; 3)"></label>
                    </p>
                    <p id="r_label">Select r value:</p>
                    <select id="rValue" name="rValue"><p>
                        <option id="rValue1" value="1">1</option>
                        <option id="rValue2" value="2">2</option>
                        <option id="rValue3" value="3">3</option>
                        <option id="rValue4" value="4">4</option>
                        <option id="rValue5" value="5">5</option>
                    </p></select>
                    <br>
                    <br>
                    <input class="button" type="submit" name="point-form-submit" value="Submit" onclick="">
                </form>
                <form action="controller" id="hiddenForm" method="GET" >
                    <input type="text" id="xValue11" class="xValue" name="xValue" >
                    <input type="text" id="yValue11" name="yValue">
                    <input type="text" id="rValue11" name="rValue">
                </form>
            </div>
            <div id="results-table-wrapper">

                <jsp:include page="WEB-INF/resulttable"/>

            </div>
        </td>
    </tr>
</table>
<jsp:include page="WEB-INF/generatescript"/>
<script src="resources/js/validation.js"></script>

</body>
</html>
