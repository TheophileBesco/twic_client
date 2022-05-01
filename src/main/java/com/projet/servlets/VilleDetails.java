package com.projet.servlets;

import com.google.gson.Gson;
import com.projet.beans.Ville;
import com.projet.forms.VilleMethods;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "VilleDetails", value = "/VilleDetails")
public class VilleDetails extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Ville ville = this.getVille(request.getParameter("codeCommuneInsee"));
        request.setAttribute("ville",ville);
        this.getServletContext().getRequestDispatcher("/villeDetails.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Ville ville = this.getVille(request.getParameter("codeCommuneInsee"));
        int codeCommune = ville.getCodeCommuneInsee();
        if(request.getParameter("newNomCommune") != null){
            ville.setNomCommune(request.getParameter("newNomCommune"));
        }
        if(request.getParameter("newCodePostal") != null){
            ville.setCodePostal(Integer.parseInt(request.getParameter("newCodePostal")));
        }
        if(request.getParameter("newLibelle") != null){
            ville.setLibelleAcheminement(request.getParameter("newLibelle"));
        }
        if(request.getParameter("newLigne5") != null){
            ville.setLigne5(request.getParameter("newLigne5"));
        }
        if(request.getParameter("newLatitude") != null){
            ville.setLatitude(Float.parseFloat(request.getParameter("newLatitude")));
        }
        if(request.getParameter("newLongitude") != null){
            ville.setLongitude(Float.parseFloat(request.getParameter("newLongitude")));
        }
        String JSonVilleToUpdate = new Gson().toJson(ville);
        VilleMethods.updateVille(codeCommune,JSonVilleToUpdate);
        request.setAttribute("ville",ville);
        this.getServletContext().getRequestDispatcher("/villeDetails.jsp").forward(request, response);
    }
    private Ville getVille(String codeCommuneInsee){
        return VilleMethods.getVilleFromCode(codeCommuneInsee);
    }
}
