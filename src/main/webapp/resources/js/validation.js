let x;
let y;
let xcoor;
let ycoor;
var example = document.getElementById("canvas");
ctx = example.getContext('2d');
pic = new Image();
example.width = 230;
example.height = 215;

ctx.fillStyle="black";

pic.src = "resources/images/areas.jpg";


$(document).ready(function () {
    drawPoints();
});


function drawPoints() {
    for (var i = 0; i < pointsArray.length; i++) {
        ctx.fillRect((pointsArray[i][0]/takeR())*79+107,(pointsArray[i][1]/takeR())*(-79)+105,6,6);
    }
}

function coordinaty(event) {
    x = event.offsetX;
    y = event.offsetY;
    xcoor = (((x - 110) / 79)*takeR());
    ycoor = (-((y - 107) / 79)*takeR());
    document.getElementById('xValue11').value = xcoor.toFixed(4);
    document.getElementById('yValue11').value = ycoor.toFixed(4);
    document.getElementById('rValue11').value = takeR();
    document.getElementById('hiddenForm').submit();
}


function validate() {
    if (checkX() === false || checkY() === false) {
        return false;
    }
    ajaxHead();

}

function checkX() {
    var xError = document.getElementById("x_label");
    var objValues = document.getElementsByName('xValue');
    var xValue;
    for (var i = 0; i < objValues.length; i++) {
        if (objValues[i].checked) {
            xValue = objValues[i];
            xError.style.color = "black";
            return true;
        }
    }
    xError.style.color = "red";
    return false;
}
$( "#rValue" ).change(function() {
    ctx.clearRect(0,0,230,215);
    drawPoints();
});


function checkY() {
    var yError = document.getElementById('y_label');
    var yValue = document.getElementById('yValue').value.replace(/\s+/g, '').replace(',', '.');
    parseFloat(yValue);
    if (isNaN(yValue) || yValue <= -5 || yValue >= 3 || yValue === "") {
        yError.style.color = "red";
        return false;
    }
    else {
        yError.style.color = "black";
        return true;
    }
}

function takeR() {
    var select = document.getElementById("rValue");
    var value = select.value;
    return value;

}

function ajaxHead() {
    $.ajax({
        type: "HEAD",
        timeout: 5000,
        url: "form.jsp",
        success: function () {
            document.getElementById("submit-form").submit();
        },
        error: function (jqXHR, textStatus) {
            if (textStatus === 'error') {
                alert('Failed from timeout');
                //do something. Try again perhaps?
            }
        },
    });
}
