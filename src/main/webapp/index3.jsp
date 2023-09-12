<!DOCTYPE html>
<html>
<head>
    <title>Find Greatest Number</title>
    <!-- Include jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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

    <div id="result"> The result will be displayed here without page reload</div>

    <script>
        $(document).ready(function() {
            $("#numberForm").submit(function(event) {
                event.preventDefault();
                var formData = {
                    num1: $("#num1").val(),
                    num2: $("#num2").val(),
                    num3: $("#num3").val()
                };
                $.ajax({
                    type: "POST",
                    url: "add.do",
                    data: formData,
                    success: function(response) {
                       $("#result").html(" " + response);
                    }
                });
            });
        });
    </script>
</body>
</html>
