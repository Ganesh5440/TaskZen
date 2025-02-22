<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Two Numbers</title>
</head>
<body>
<h2>Simple Addition</h2>

<label for="num1">Enter First Number:</label>
<input type="number" id="num1" required><br><br>

<label for="num2">Enter Second Number:</label>
<input type="number" id="num2" required><br><br>

<button onclick="addNumbers()">Add</button>

<h3>Result: <span id="result"></span></h3>

<script>
    function addNumbers() {
        const num1 = document.getElementById("num1").value;
        const num2 = document.getElementById("num2").value;

        if (num1 === "" || num2 === "") {
            document.getElementById("result").innerText = "Please enter both numbers.";
            return;
        }

        const sum = Number(num1) + Number(num2);
        document.getElementById("result").innerText = `Sum: ${sum}`;
    }
</script>
</body>
</html>
