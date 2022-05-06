<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>FORM FORMATION</title>

    <style>
    body {background-color:lightsteelblue}
    </style>
</head>
<body>

   <h3>FORM FORMATION</h3>
   <form:form modelAttribute="formation" method="post" action="add-formation">

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