<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Distance entre 2 villes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="text-align: center;">
<div style="margin: auto">

</div>
<h1>Calculer la distance entre 2 villes</h1>
    <main style="padding: 0 15vw;">
       <form method="get" style="display: flex;">
           <select class="form-select" aria-label="Default select example" id="ville1" name="ville1" style="margin: 0 2vw;">
               <option disabled selected>Sélectionner la première ville</option>
               <c:forEach var="ville" items="${villes}" varStatus="status">
                   <option>${ville.nomCommune}</option>
               </c:forEach>
           </select>
           <select class="form-select" aria-label="Default select example" id="ville2" name="ville2" style="margin: 0 2vw;">
               <option disabled selected>Sélectionner la deuxième ville</option>
               <c:forEach var="ville" items="${villes}" varStatus="status">
                   <option>${ville.nomCommune}</option>
               </c:forEach>
           </select>
           <input type="submit" value="Calculer la distance">
       </form>
        <c:if test="${!empty distance}">
            <p>Distance entre ${ville1} et ${ville2} : ${distance}km</p>
        </c:if>
        <div style="margin: 2vh 0;">
            <a href="villes?page=1"><h5>Accéder à la liste des villes</h5></a>
        </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
            integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
            integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
            crossorigin="anonymous"></script>
</body>
</html>