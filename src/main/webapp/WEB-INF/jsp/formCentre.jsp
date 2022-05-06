<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>FORM CENTRE</title>

    <style>
    body {background-color:lightsteelblue}
    </style>
</head>
<body>

   <h3>FORM CENTRE</h3>
   <form:form modelAttribute="centre" method="post" action="add-centre">

        <form:label path="nom">NOM:</form:label><br/>
        <form:input path="nom" type="text"></form:input>
        <br/><br/>

        <form:label path="adresse">Adresse :</form:label><br/>
        <form:input path="adresse" type="text"></form:input>
        <br/><br/>

        <form:label path="listeDeFormation">Liste De Formation:</form:label><br/>
        <form:input path="listeDeFormation" type="text"></form:input>
        <br/><br/>



        <form:button>Submit</form:button>
   </form:form>

</body>
</html>