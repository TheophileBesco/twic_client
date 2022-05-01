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

@WebServlet(name = "DistancesVilles", value = "/DistancesVilles")
public class DistancesVilles extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        List<Ville> villes = VilleMethods.getAllVilles();   // récupération de toutes les villes
        request.setAttribute("villes",villes);

        String nomVille1 = request.getParameter("ville1");
        String nomVille2 = request.getParameter("ville2");
        if(nomVille1 != null && nomVille2 != null){
            Ville ville1 = VilleMethods.getVilleFromName(nomVille1);
            Ville ville2 = VilleMethods.getVilleFromName(nomVille2);
            String distance = VilleMethods.distance(    // calcul de la distance entre les 2 villes sélectionnées
                    ville1.getLatitude(),ville1.getLongitude(),
                    ville2.getLatitude(),ville2.getLongitude()
            );
            request.setAttribute("ville1",nomVille1);
            request.setAttribute("ville2",nomVille2);
            request.setAttribute("distance",distance);
        }
        this.getServletContext().getRequestDispatcher("/distance.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        this.getServletContext().getRequestDispatcher("/distance.jsp").forward(request, response);
    }
}