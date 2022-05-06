<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body { background-color : lightsteelblue}
           li { list-style-type : none ; margin-top : 10px;padding: 20px 30px;width : 40%;text-align : center;
                 font-weight:bold; font-size: 1.5rem;background-color:aquamarine;border-radius: 20px;}
           ul {margin-left :160px; }
           .back {list-style-type : none ;  margin-top : 10px;padding: 20px 30px;width : 10%;text-align : center;
                 font-weight:bold; font-size: 1.5rem;background-color:#20c997;border-radius: 20px;margin-left :80px;}
           .toto { background-color : #20c997; margin-top : 20px; padding : 20px; border-radius: 20px;margin-left :80px; border :0px; font-weight:bold; font-size: 1.2rem; }

            </style>

        <title>list des centres</title>
    </head>

    <body>

        <ul>
            <li>Nom: ${centre.nom}</li>
            <li>Adresse: ${centre.adresse}</li>
            <li>List: ${centre.listeDeFormation}</li>
            <a href="/">  <li class="back">BACK</li></a>
            <a href="editCentre?id=${centre.id}">  <li class="back">EDIT</li></a>

            <form:form method = "post" action = "deleteCentre?id=${centre.id}">

            <input class="toto" type = "submit" value = "DELETE"/>

            </form:form>


        </ul>


    </body>

    </html>