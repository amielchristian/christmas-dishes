<%-- 
    Document   : dishes
    Created on : Nov 10, 2022, 9:19:41 AM
    Author     : chris
--%>

<%@page import="model.DishModel"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style/styles.css" rel="stylesheet" type="text/css"/>
        <title>Dishes - ChristmasTaste</title>
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
            <h1>Dishes</h1>
            <div class="allDishes">
            <%
                String path = getServletContext().getRealPath("/dishes");
                File directory = new File(path);
                if (directory.isDirectory()){
                   String[] files = directory.list();
                   for (String file : files)    {
                        String formattedName = DishModel.formatName(file);
                        out.println("<div class=\"dishes\">");
                            out.println("<a href=\"Dish?name=" + file + "\"><img src=\"dishes/" + file + "/" + file + ".jpg\"></a>");
                            out.println("<p>");
                            out.println("<a href=\"Dish?name="+file+"\">");
                            out.println(formattedName);
                            out.println("</a>");
                            out.println("</p>");
                        out.println("</div>");
                   }
                }
            %>
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
