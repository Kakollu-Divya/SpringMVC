<html>
    <head>
        <title>Register</title>
        <style>
            .navbar {
            background-color: #333;
            overflow: hidden;
        }
        .navbar a {
            float: center;
            display: center;
            color: #f2f2f2;
            text-align: center;
            justify-content: center;
            align-items: center;
            padding: 100px 25px;
            text-decoration: underline;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .footer {
            background-color: #252121;
            text-align: center;
            color: #f2f2f2;
            padding: 2px;
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            box-shadow: 0 -1px 5px rgba(0, 0, 0, 0.1);
        }
        </style>
    </head>
    <body>
        <form action="/saveEmployees" method="post">
        <center>
       
        <h1>SATHYA TECHNOLOGY</h1>
        <div class="navbar">
        <a href="/getAll">Users</a>
        <a href="/about">AboutUS</a>
        <a href="/contact">ContactUs</a>
        <a href="/login">Login</a>
        <a href="/register">Register</a>
        <a href="/search">Search</a>
       </div>

        <h1>Employee Registration Form</h1>
        <label>NAME :</label>
        <input type="text" name="name"/>
        <br><br>
        <label>PASSWORD :</label>
        <input type="password" name="password"/>
        <br><br>
        <label>EMAIL :</label>
        <input type="email" name="email"/>
        <br><br>
        <label>GENDER :</label>
        <input type="radio" name="gender" value="female"/>FEMALE
        <input type="radio" name="gender" value="male"/>MALE
        <br><br>
        <label>MOBILE NUMBER :</label>
        <input type="number" name="mobile"/>
        <br><br>
        <label>ADDRESS :</label>
        <input type="text" name="address"/>
        <br><br>
        <button type="submit">Register</button>
    
    </center>
    </form>
    <div class="footer">
        <p>&copy; 2024 Sathya Technology. All rights reserved.</p>
    </div>
    </body>
</html>