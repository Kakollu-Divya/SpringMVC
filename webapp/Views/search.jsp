<html>
    <head>
        <title>search</title>
    </head>
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

    <body>
        <form action="/email" method="get">
        <center>
        <h1>SATHYA TECHNOLOGY</h1>
        <div class="navbar">
        <a href="/getAll">Users</a>
        <a href="/about">AboutUs</a>
        <a href="/contact">ContactUs</a>
        <a href="/login">Login</a>
        <a href="/register">Register</a>
        <a href="/search">Search</a>
        </div>
        <br><br>
        <label>Search:</label>
        <input type="text" name="search" placeholder="Enter Your mail" required/>
        <br><br>
        <button type="submit">search</button>
    </form>  
    <p>ID : ${employees.id}</p>
    <p>NAME : ${employees.name}</p>
    <p>PASSWORD : ${employees.password}</p>
    <p>MOBILE : ${employees.mobile}</p>
    <p>GENDER : ${employees.gender}</p>
    <p>EMAIL : ${employees.email}</p>
    <p>ADDRESS : ${employees.address}</p>
       
    </center>

<div class="footer">
    <p>&copy; 2024 Sathya Technology. All rights reserved.</p>
</div>
    </body>
</html>