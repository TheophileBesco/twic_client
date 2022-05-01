<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Détails</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="text-align: center; padding: 0 20vw;">
   <h1>Modifier les informations d'une ville</h1>
   <c:if test="${pageContext.request.method=='POST'}">
       <div class="alert alert-info" role="alert" style="width: 30vw; margin: 2vh auto;">
           Ville modifiée !
       </div>
   </c:if>
    <form method="post" action="ville?codeCommuneInsee=${ville.codeCommuneInsee}" style="padding: 0 35%;">
        <div class="form-floating mb-3">
            <input type="text" class="form-control"
                   id="codeCommuneInsee" name="codeCommuneInsee"
                   value="${ville.codeCommuneInsee}"
                   placeholder="Code INSEE" disabled>
            <label for="codeCommuneInsee">Code commune INSEE</label>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control"
                   id="newNomCommune" name="newNomCommune"
                   value="${ville.nomCommune}"
                   placeholder="Nouveau now">
            <label for="newNomCommune">Nom commune</label>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control"
                   id="newCodePostal" name="newCodePostal"
                   value="${ville.codePostal}"
                   placeholder="Nouveau code postal">
            <label for="newCodePostal">Code postal</label>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control"
                   id="newLibelle" name="newLibelle"
                   value="${ville.libelleAcheminement}"
                   placeholder="Nouveau libellé acheminement">
            <label for="newLibelle">Libellé acheminement</label>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control"
                   id="newLigne5" name="newLigne5"
                   value="${ville.ligne5}"
                   placeholder="Nouvelle ligne 5">
            <label for="newLigne5">Ligne 5</label>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control"
                   id="newLatitude" name="newLatitude"
                   value="${ville.latitude}"
                   placeholder="Nouvelle latitude">
            <label for="newLatitude">Latitude</label>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control"
                   id="newLongitude" name="newLongitude"
                   value="${ville.longitude}"
                   placeholder="Nouvelle longitude">
            <label for="newLongitude">Longitude</label>
        </div>
        <input class="btn btn-primary" type="submit" value="Modifier">
    </form>
    <a href="villes"><h5>Retour à la liste des villes</h5></a>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
            integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
            integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
            crossorigin="anonymous"></script>
</body>
</html>
