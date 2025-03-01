<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="common/navigation.jspf"%>
<html>
<head>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <title>Update Todo Page</title>
</head>
<body>

<link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">

<form:form modelAttribute="todo" method="post">
    <fieldset>
        <form:label path="description">Description</form:label>
        <form:input path="description" required="required"/>
        <form:errors path="description" cssClass="text-warning"/>
    </fieldset>

    <fieldset class="mb-3">
        <form:label path="date">Target Date</form:label>
        <form:input path="date" required="required"/>
        <form:errors path="date" cssClass="text-warning"/>
    </fieldset>

    <!-- ✅ Fix: Add Checkbox for "done" Field -->
    <fieldset class="mb-3">
        <form:label path="done">Completed</form:label>
        <form:checkbox path="done"/>
    </fieldset>

    <input type="submit" value="Update Todo" class="btn-success"/>
</form:form>

<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
<script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#date').datepicker({
            format: 'yyyy-mm-dd',
            autoclose: true
        });
    });
</script>

<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
</body>
</html>
