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
                    <form>
                    <img src="resources/images/area.png" alt="Area image unavailable" class="area-image">
                    <p id="x_label">Choose x values:</p>
                    <p>
                        <label><input type="checkbox" id="x_-3" name="x[]" value="-3">-3</label>
                        <label><input type="checkbox" id="x_-2" name="x[]" value="-2">-2</label>
                        <label><input type="checkbox" id="x_-1" name="x[]" value="-1">-1</label>
                        <label><input type="checkbox" id="x_0" name="x[]" value="0"> 0</label>
                        <label><input type="checkbox" id="x_1" name="x[]" value="1"> 1</label>
                        <label><input type="checkbox" id="x_2" name="x[]" value="2"> 2</label>
                        <label><input type="checkbox" id="x_3" name="x[]" value="3"> 3</label>
                        <label><input type="checkbox" id="x_4" name="x[]" value="4"> 4</label>
                        <label><input type="checkbox" id="x_5" name="x[]" value="5"> 5</label>
                    </p>
                    <p>
                        <label id="y_label">Enter y value:<br/><input id="y-value" type="text" name="y" placeholder="(-5; 5)" maxlength="6"></label>
                    </p>
                    <p id="r_label">Select r value:</p>
                    <p>
                        <label><input type="radio" id="r_1" name="r" value="1">1</label>
                        <label><input type="radio" id="r_2" name="r" value="1.5">1.5</label>
                        <label><input type="radio" id="r_3" name="r" value="2">2</label>
                        <label><input type="radio" id="r_4" name="r" value="2.5">2.5</label>
                        <label><input type="radio" id="r_5" name="r" value="3">3</label>
                    </p>
                    <input class="button" type="submit" name="point-form-submit" value="Submit" onclick="">
                    </form>
                </div>
                <div id="results-table-wrapper">

                    <%-- Results table --%>

                </div>
            </td>
        </tr>
    </table>

    <script type="text/javascript">
        function validate() {
            var xValid = true;
            var yValid = true;
            var rValid = false;

            var y = document.getElementById('y-value').value;
            y = y.trim();
            y = y.replace(',', '.');

            if (y.length == 0) {
                document.getElementById('y-value').value = "";
                yValid = false;
            }
            if (y >= 5 || y <= -5 || isNaN(y)){
                yValid = false;
            }

            var x_checked = false;
            for(var i = -3; i <= 5; i++){
                if (document.getElementById('x_' + i).checked) {
                    x_checked = true;
                    break;
                }
            }
            if (!x_checked){
                xValid = false;
            }

            for(var i = 1; i <= 5; i++){
                if (document.getElementById('r_' + i).checked) {
                    rValid = true;
                }
            }

            document.getElementById('x_label').style.color = (xValid) ? "black" : "red";
            document.getElementById('y_label').style.color = (yValid) ? "black" : "red";
            document.getElementById('r_label').style.color = (rValid) ? "black" : "red";
            return xValid && yValid && rValid;
        }
    </script>

</body>
</html>
