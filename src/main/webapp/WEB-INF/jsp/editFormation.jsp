<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>EDIT FORMATION</title>

    <style>
    body {background-color:lightsteelblue}
    </style>
</head>
<body>

   <h3>EDIT FORMATION</h3>
   <form:form modelAttribute="formation" method="post" action="envFormation">


         <form:input id ="id" path="id" type="hidden"></form:input>
         <br/><br/>

        <form:label path="nomDeFormation">NOM DE FORMATION:</form:label><br/>
                <form:input path="nomDeFormation" type="text"></form:input>
                <br/><br/>

                <form:label path="listeDeFormation">LISTE DE SESSIONS :</form:label><br/>
                <form:input path="listeDeFormation" type="text"></form:input>
                <br/><br/>


        <form:button>Submit</form:button>
   </form:form>

</body>
</html>
