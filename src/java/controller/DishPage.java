/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.*;
import java.util.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DishModel;

/**
 *
 * @author chris
 */
public class DishPage extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Dish</title>");            
            out.println("</head>");
            out.println("<body>");
            
            String dish = request.getParameter("name");
            String path = getServletContext().getRealPath(getServletConfig().getInitParameter("dishesDirectory"));
            
            // create a list of directories in /dishes
            List<String> dishList = new ArrayList<>();

            File directory = new File(path);
            if (directory.isDirectory()){
               String[] files = directory.list();
               for (String file : files)    {
                   dishList.add(file);
               }
            }
            
            // verify if the dish is in the list of dishes
            if (dishList.contains(dish))    {
                // information about the dish will be read from the corresponding directory
                String description = DishModel.generateDescription(new File(path+"/"+dish+"/description.txt"));
                String ingredients = DishModel.generateIngredients(new File(path+"/"+dish+"/ingredients.txt"));
                String directions = DishModel.generateDirections(new File(path+"/"+dish+"/directions.txt"));
                
                // attributes will be forwarded to dishes-result.jsp
                request.setAttribute("dish", dish);
                request.setAttribute("formatted-name", DishModel.formatName(dish));
                request.setAttribute("description", description);
                request.setAttribute("ingredients", ingredients);
                request.setAttribute("directions", directions);
                
                RequestDispatcher view = request.getRequestDispatcher("dishes-result.jsp");
                view.forward(request, response);    
            }
            else    {
                response.sendRedirect("/ChristmasTaste/error-pages/error.jsp");
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
