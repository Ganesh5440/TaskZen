<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="common/navigation.jspf"%>
<html>
<head>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <title>Add Todo Page</title>
</head>
<body>
<div class="container" >
    <h1 class="my-4">Enter Todo Details</h1>

    <form:form  modelAttribute="todo"   method="post" >
        <fieldset class="mb-3"
        <form:label path="description" >Description :</form:label>
        <form:input type="text" path="description" required="required"/>
        <form:errors path="description" cssClass="alert-warning"/>
        <form:input type="hidden" path="id"/>
        <form:input type="hidden" path="done"/>
        </fieldset>
        <fieldset class="mb-3">
            <form:label path="date">Date :</form:label>
            <form:input type="text" path="date" required="required"/>
            <form:errors path="date" cssClass="alert-warning"/>
        </fieldset>
        <fieldset class="mb-3">
            <form:label path="done">Completed:</form:label>

            <!-- Hidden field ensures false is sent if checkbox is unchecked -->
            <input type="hidden" name="_done" value="false"/>

            <!-- Checkbox: Sends true when checked -->
            <form:checkbox path="done"/> Yes
        </fieldset>




        <input type="submit" class="btn btn-success"/>
    </form:form>
</div>
<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>