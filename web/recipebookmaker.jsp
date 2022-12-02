<%-- 
    Document   : recipebookmaker
    Created on : Nov 10, 2022, 9:20:11 AM
    Author     : chris
--%>

<%@page import="model.DishModel"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style/styles.css" rel="stylesheet" type="text/css"/>
        <title>Your Recipe Book - ChristmasTaste</title>
        
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
            <h2>Which of these dishes would you like to include in your recipe book?</h2>
            
            <div class="allDishes">
                <form name="generate" action="RecipeBookMaker" method="post">
                    <fieldset>
                    <%
                        String path = getServletContext().getRealPath("/dishes");
                        File directory = new File(path);
                        if (directory.isDirectory()){
                           String[] files = directory.list();
                           int i = 0;
                           for (String file : files)    {
                                String formattedName = DishModel.formatName(file);
                                out.println("<div class=\"checkboxBox\">");
                                    out.println("<img src=\"dishes/" + file + "/" + file + ".jpg\"/>");
                                    out.println("<div>");
                                        out.println("<input id=\"checkbox"+i+"\" type=\"checkbox\" name=\""+file+"\">");
                                        out.println("<label for=\"checkbox"+i+"\">"+formattedName+"</p>");
                                    out.println("</div>");
                                out.println("</div>");
                                i++;
                           }
                        }
                    %>
                    </fieldset>
                    <input class="checkboxButton" type="submit" value="Generate"></input>
                </form>
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
