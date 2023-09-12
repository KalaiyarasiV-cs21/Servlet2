<!DOCTYPE html>
<html>
<head>
    <title>Find Greatest Number</title>
</head>
<body>
    <h1>Find Greatest Number</h1>
    <form id="numberForm">
        <label for="num1">Number 1:</label>
        <input type="text" id="num1" name="num1" required><br>

        <label for="num2">Number 2:</label>
        <input type="text" id="num2" name="num2" required><br>

        <label for="num3">Number 3:</label>
        <input type="text" id="num3" name="num3" required><br>

        <input type="submit" value="Find Greatest">
    </form>

     <div id="result">The result will be displayed here without page reload</div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            document.getElementById("numberForm").addEventListener("submit", function(event) {
                event.preventDefault();

                var num1 = document.getElementById("num1").value;
                var num2 = document.getElementById("num2").value;
                var num3 = document.getElementById("num3").value;

               
                var xhr = new XMLHttpRequest();

              
                xhr.open("POST", "GreatestNumberServlet", true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        
                        document.getElementById("result").innerHTML = "The greatest number is: " + xhr.responseText;
                    }
                };

                
                xhr.send("num1=" + num1 + "&num2=" + num2 + "&num3=" + num3);
            });
        });
    </script>
</body>
</html>
