<%-- 
    Document   : recipe-book
    Created on : Nov 10, 2022, 1:34:39 PM
    Author     : chris
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style/styles.css" rel="stylesheet" type="text/css"/>
        <title><%= session.getAttribute("name") %>'s Recipe Book - Christmas Taste</title>
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
        <h1><%= session.getAttribute("name") %>'s Recipe Book</h1>
    </body>
</html>
