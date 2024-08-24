<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>List Of Employees</title>
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
        <form action="/register" method="get">
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
            <br>
            <h2>List Of Useres</h2>
            <table border="2">
                
                <thead>
                    <tr>
                    
                        <th>ID</th>
                        <th>NAME</th>
                        <th>PASSWORD</th>
                        <th>MOBILE</th>
                        <th>GENDER</th>
                        <th>EMAIL</th>
                        <th>ADDRESS</th>
                        <th>ACTION</th>
                        
                       
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var = "employees" items = "${listofEmployees}">
                      <tr>
                        <td>${employees.id}</td>
                        <td>${employees.name}</td>
                        <td>${employees.password}</td>
                        <td>${employees.mobile}</td>
                        <td>${employees.gender}</td>
                        <td>${employees.email}</td>
                        <td>${employees.address}</td>

                        <td>
                            <a href="/deleteEmployees/${employees.id}" onclick="return confirmDelete()">DELETE</a>
                            <a href="/updateEmployees/${employees.id}">UPDATE</a>
                        </td>
                      </tr>
                    </c:forEach> 
                </tbody>
                  
            </table>
            <br>
              <button type="submit">BACK</button>  
        </center>  
    </form>   
    <div class="footer">
        <p>&copy; 2024 Sathya Technology. All rights reserved.</p>
    </div>
    </body>
</html>