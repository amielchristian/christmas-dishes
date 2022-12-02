<%-- 
    Document   : about
    Created on : Nov 10, 2022, 9:05:31 AM
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style/styles.css" rel="stylesheet" type="text/css"/>
        <title>About Us - ChristmasTaste</title>
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
            <h1>About Us</h1>
            <p>Christmas is a holiday that everyone looks forward to for most of the year. It is a season that is marked by traditions, festivities, and gatherings with loved ones, family, and friends. And at the center of it all, food. ChristmasTaste is here to help you discover the best holiday dishes from across the globe, ease your tension, and get you in the Christmas holiday spirit.</p>
            <p>ChristmasTaste gathers the most popular and delicious Christmas food recipes from all over the world. Discover and explore recipes, prepare and serve international holiday cuisine, and share them with all your nearest and dearest. </p>
            <p>ChristmasTaste was founded by Charles Ansbert Joaquin and Amiel Christian Mala-ay, in partial fulfillment of their requirements for their Applications Development and Emerging Technologies course.</p>
        </div>
        
        <footer>
            <div class="copyright">
                <p>Copyright <%= getServletContext().getAttribute("year") %> <%= getServletContext().getAttribute("organization") %> </p>
                <p>Developed by <%= getServletContext().getAttribute("developers") %></p>
            </div>
        <footer>
    </body>
</html>
