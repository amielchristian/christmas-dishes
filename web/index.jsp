<%-- 
    Document   : index
    Created on : Nov 10, 2022, 8:22:06 AM
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String name = request.getParameter("name");
   if (name == null)
        if (session.getAttribute("name") == null)
            name = "Guest";
        else
            name = (String)session.getAttribute("name");
        
   session.setAttribute("name", name);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./styles.css">
        <link href="style/styles.css" rel="stylesheet" type="text/css"/>
        <title>ChristmasTaste</title>
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
            <div class="change-name">
                <h1>Welcome, <%= name%>!</h1>
                <form method="post">
                    <fieldset>
                        <label for="name">Change your name: 
                            <input name="name" type="text">
                        </label>
                        <input class="button" type="submit" value="Submit"></input>
                    </fieldset>
                </form>
            </div>
            <div class="description">
                <br>
                <br>
                <p>Christmas is undoubtedly the most anticipated and most widely celebrated holiday of the year. There’s no day that’s more joyful and evokes more pleasant memories than Christmas Day. There’s something about the traditions and festivities surrounding this holiday that make it so alluring to so many people. The gifts, the decorations, the family gatherings, the music, you name it!</p><br>
                <p>Of course, one of the key parts of any Christmas celebration is the cuisine. Every culture that celebrates Christmas has a tradition of serving their own special meals for Christmas dinner. All over the world, different cultures have a wide array of special dishes that characterize their own version of Christmas.</p><br>
                <p>These diverse culinary traditions are as culturally significant as the holiday for which they are prepared, and they are worth being celebrated. This website is dedicated to Christmas dinner and its cultural significance for millions of people around the world. Here, we have <a href="PageNavigator?page=dishes">numerous recipes for Christmas dishes</a> of various origins, as well as <a href="PageNavigator?page=recipebookmaker">a nifty little tool for planning your next Christmas dinner</a>. To learn more about us, <a href="PageNavigator?page=about">click here.</p></a><br>
            </div>
        </div>
        <br>
        <footer>
            <div class="copyright">
                <p>Copyright <%= getServletContext().getAttribute("year") %> <%= getServletContext().getAttribute("organization") %> </p>
                <p>Developed by <%= getServletContext().getAttribute("developers") %></p>
            </div>
        </footer>
    </body>
</html>
