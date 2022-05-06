<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body { background-color : lightsteelblue;}
           li { list-style-type : none ; margin-top : 10px;padding: 10px 70px;width : 40%;text-align : center;
                 font-weight:bold; font-size: 1rem;background-color:aquamarine;border-radius: 20px;}
           .ouf { margin-left: 170px;}
           .back {list-style-type : none ;  margin-top : 10px;padding: 10px 20px;width : 10%;text-align : center;
                 font-weight:bold; font-size: 1rem;background-color:#20c997;border-radius: 10px;margin-left :120px;}
           .toto { background-color : #20c997; margin-top : 20px; padding : 10px; border-radius: 10px;margin-left :125px; border :0px; font-weight:bold; font-size: 1rem; }

            </style>

        <title>list des formation</title>
    </head>

    <body>

        <ul class="ouf">
            <li>Nom de formation: ${formation.nomDeFormation}</li>
            <li>Liste de Session: <a href="/detailsSession">${formation.listeDeFormation}</a></li>
            <a href="/">  <li class="back">BACK</li></a>
            <a href="/editFormation?id=${formation.id}">  <li class="back">EDIT</li></a>
            <form:form method = "post" action = "deleteFormation?id=${formation.id}">
               <a href="/deleteFormation?id=${formation.id}"><input class="toto" type = "submit" value = "DELETE"/>
            </form:form>



        </ul>


    </body>

    </html>