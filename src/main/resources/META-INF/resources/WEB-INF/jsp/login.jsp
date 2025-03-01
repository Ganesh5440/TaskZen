<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: system-ui, "Segoe UI", Roboto, Arial, sans-serif;
            background-color: #f9fafb;
            color: #333;
            line-height: 1.6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background: #fff;
            padding: 2rem;
            border-radius: 0.5rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            text-align: center;
            margin-bottom: 1.5rem;
            color: #2d3748;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        input[type="text"] {
            padding: 0.75rem;
            margin-bottom: 1rem;
            border: 1px solid #cbd5e0;
            border-radius: 0.25rem;
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #3182ce;
            outline: none;
            box-shadow: 0 0 0 3px rgba(49, 130, 206, 0.2);
        }

        button {
            padding: 0.75rem;
            background-color: #3182ce;
            color: #fff;
            border: none;
            border-radius: 0.25rem;
            cursor: pointer;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #2c5282;
        }

        .error-message {
            color: #e53e3e;
            margin-bottom: 1rem;
            text-align: center;
        }

        .success-message {
            color: #38a169;
            margin-bottom: 1rem;
            text-align: center;
        }

        .link {
            text-align: center;
            margin-top: 1rem;
        }

        .link a {
            color: #3182ce;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .link a:hover {
            color: #2c5282;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2>Login</h2>



    <form action="/login" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="text" name="password" placeholder="PassWord" required>
        <button type="submit">Login</button>
    </form>

    <div class="link">
        <a href="/register">Don't have an account? Register here</a>
    </div>
</div>
</body>
</html>