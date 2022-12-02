<%-- 
    Document   : dishes-result
    Created on : Nov 10, 2022, 10:11:17 AM
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style/styles.css" rel="stylesheet" type="text/css"/>
        <title><%= (String)request.getAttribute("formatted-name") %></title>
    </head>
    <body>
        <header id="header">
            <div class="logo">
                <h1>Christmas Taste</h1>
            </div>
            <nav id="navbar" class="nav">
                <ul class="nav-list">
                <li><a href="PageNavigator?page=home">Home</a></li>
                <li><a href="PageNavigator?page=about">About</a></li>
                <li><a href="PageNavigator?page=dishes">Dishes</a></li>
                <li><a href="PageNavigator?page=recipebookmaker">Your Recipe Book</a></li>
              </ul>
            </nav>
        </header>
        <div class="body">
            <div class="dishBody">
                <!-- Name -->
                <h1><%= (String)request.getAttribute("formatted-name") %></h1>

                <!-- Image -->
                <div class="dishImage">
                    <a href="dishes/<%= (String)request.getAttribute("dish") %>/<%= (String)request.getAttribute("dish") %>.jpg"><img src="dishes/<%= (String)request.getAttribute("dish") %>/<%= (String)request.getAttribute("dish") %>.jpg"></a>
                </div>
                
                <!-- Description -->
                <p>
                    <%= (String)request.getAttribute("description") %>
                </p>

                <div class="procedure">
                    <!-- Ingredients -->
                    <h3>Ingredients</h3>
                    <ul>
                        <%= (String)request.getAttribute("ingredients") %>
                    </ul>

                    <!-- Directions -->
                    <h3>Ingredients</h3>
                    <ol>
                        <%= (String)request.getAttribute("directions") %>
                    </ol>
                </div>
            </div>
        </div>
        
        <footer>
            <div class="copyright">
                <p>Copyright <%= getServletContext().getAttribute("year") %> <%= getServletContext().getAttribute("organization") %> </p>
                <p>Developed by <%= getServletContext().getAttribute("developers") %></p>
            </div>
        <footer>
    </body>
</html>
