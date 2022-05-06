<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            th { border-radius: 10px;background-color:aquamarine;width: 100%;text-align: center ;padding: 20px 60px;margin-top: 40px;}
            td { border-radius: 10px;background-color:lightseagreen; width: 100%;text-align: center;font-weight :bold;font-size1.5rem;padding: 20px 60px;margin-top: 40px;}
            .tableau {margin-left:230px; }
            body {background-color:lightsteelblue;}

        </style>

        <title>list des centres</title>
    </head>

    <body>

        <table class="tableau">

            <thead >
                <tr>
                    <th>LA LISTE GLOBALE</th>
                </tr>
            </thead>

            <tbody class="alert alert-secondary" role="alert">
                <c:forEach items="${centre}" var="centre">
                    <tr class="alert-link">
                        <td><a href="detailsCentre?id=${centre.id}" >${centre.nom}</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>

    </html>