let x;
let y;
let xcoor;
let ycoor;
var example = document.getElementById("canvas");
ctx = example.getContext('2d');
pic = new Image();
example.width = 230;
example.height = 215;
pic.src = "resources/images/areas.jpg";

pic.onload = function () {
    ctx.drawImage(pic, 0, 0, 230, 215)
};

function coordinaty(event) {
    x = event.offsetX;
    y = event.offsetY;
    xcoor = (((x - 110) / 80) * takeR());
    ycoor = (-((y - 107) / 80) *takeR());
    alert(takeR());
    alert(xcoor);
    alert(ycoor);
document.getElementById('xValue11').value=xcoor;
document.getElementById('yValue11').value=ycoor;
document.getElementById('rValue11').value=takeR();
document.getElementById('hiddenForm').submit();
}

function validate() {
    if (checkX() === false || checkY() === false) {
        return false;
    }
}

function checkX() {
    var xError=document.getElementById("x_label");
    var objValues = document.getElementsByName('xValue');
    var xValue;
    for (var i = 0; i < objValues.length; i++) {
        if (objValues[i].checked) {
            xValue = objValues[i];
            xError.style.color="black";
            return true;
        }
    }
    xError.style.color = "red";
    return false;
}

function isNumberKey(number) {
    number = number.replace('.', ',');
    var count = number.split(',');
    if (count[1] !== undefined) {
        console.log(count[1].length);
        if (count[1].length > 2) {
            return false;
        }
        return true;
    }
}


function checkY() {
    var yError=document.getElementById('y_label');
    var yValue = document.getElementById('yValue').value.replace(/\s+/g, '').replace(',', '.');
    parseFloat(yValue);
    if (isNaN(yValue) || yValue <= -3 || yValue >= 3 || yValue === "") {
        yError.style.color="red";
        return false;
    }
    else {
        yError.style.color="black";
        return true;
    }
}

function takeR() {
    var select = document.getElementById("rValue");
    var value = select.value;
    return value;

}

function ajax() {
    $.ajax({
        type: "GET",
        url: "phpValidate.php",
        data: "xValue=" + $(".xValue:checked").val() + "&yValue=" + document.getElementById('yValue').value.replace(',', '.') + "&hiddenR=" + $(".hiddenR").val(),
        response: "text",
        success: function (answer) {
            var oldRow = document.getElementById("table-container");
            var row = document.createElement('div');
            row.setAttribute("id", "table-container");
            row.innerHTML = answer;
            document.body.replaceChild(row, oldRow);
        }
    });
}
