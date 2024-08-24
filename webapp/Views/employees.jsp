

<html>
    <head>
        <title>List Of Specific Employee</title>
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
            
            <table border="2">
                <br><br>
                <thead>
                    <tr>
                    
                        <th>ID</th>
                        <th>NAME</th>
                        <th>PASSWORD</th>
                        <th>MOBILE</th>
                        <th>GENDER</th>
                        <th>EMAIL</th>
                        <th>ADDRESS</th>
                        
                        
                       
                    </tr>
                </thead>
                <tbody>
                
                      <tr>
                        <td>${employees.id}</td>
                        <td>${employees.name}</td>
                        <td>${employees.password}</td>
                        <td>${employees.mobile}</td>
                        <td>${employees.gender}</td>
                        <td>${employees.email}</td>
                        <td>${employees.address}</td>

                       
                      </tr>
                    
                </tbody>
                  
            </table>
              
        </center>  
        <div class="footer">
            <p>&copy; 2024 Sathya Technology. All rights reserved.</p>
        </div>
    </body>
</html>