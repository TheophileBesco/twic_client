<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Liste des villes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
            integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
            integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
            crossorigin="anonymous"></script>
</head>
<body style="text-align: center; padding: 0 15vw;">
    <h1>Liste des villes</h1>
    <a href="distance"><h5>Calculer la distance entre 2 villes</h5></a>
    <c:if test="${page != 1}">
        <a href="villes?page=${page - 1}"><h3>Page précédente</h3></a>
    </c:if>
    <nav>
        <ul class="nav nav-pills">
            <c:forEach begin="1" end="${nbPages - 1}" var="i">
                <c:choose>
                    <c:when test="${page eq i}">
                        <li class="nav-item"><a class="nav-link active" href="villes?page=${i}">${i}</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item"><a class="nav-link" href="villes?page=${i}">${i}</a></li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </ul>
    </nav>
    <table id="table" class="table table-striped table-hover" style="border: 1px solid black">
        <tr>
            <th>Code INSEE</th>
            <th>Nom commune</th>
            <th>Code postal</th>
            <th>Libelle acheminement</th>
            <th>Ligne 5</th>
            <th>Latitude</th>
            <th>Longitude</th>
        </tr>
        <c:forEach items="${villes}" var="ville" varStatus="status">
            <tr style="cursor: pointer" onclick="window.location='ville?codeCommuneInsee=${ville.codeCommuneInsee}';">
                <td>${ville.codeCommuneInsee}</td>
                <td>${ville.nomCommune}</td>
                <td>${ville.codePostal}</td>
                <td>${ville.libelleAcheminement}</td>
                <td>${ville.ligne5}</td>
                <td>${ville.latitude}</td>
                <td>${ville.longitude}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
