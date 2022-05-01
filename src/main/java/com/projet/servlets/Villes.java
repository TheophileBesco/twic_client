package com.projet.servlets;

import com.projet.beans.Ville;
import com.projet.forms.VilleMethods;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Villes", value = "/Villes")
public class Villes extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        List<Ville> villes = VilleMethods.getAllVilles();
        int page = 1;
        int resultsPerPage = 50;
        int nbPages = villes.size()/resultsPerPage+1;
        if(request.getParameter("page") != null){
            if(Integer.parseInt(request.getParameter("page")) > 0
                    && Integer.parseInt(request.getParameter("page")) < 68){
                page = Integer.parseInt(request.getParameter("page"));
            }
        }
        request.setAttribute("villes",VilleMethods.getVillesPage(page));
        request.setAttribute("nbPages",nbPages);
        request.setAttribute("page",page);
        this.getServletContext().getRequestDispatcher("/villes.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        this.getServletContext().getRequestDispatcher("/villes.jsp").forward(request, response);
    }
}
