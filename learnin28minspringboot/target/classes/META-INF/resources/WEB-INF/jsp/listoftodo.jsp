<%@include file="common/header.jspf"%>
<%@include file="common/navigation.jspf"  %>
<div class="container">
    <h1>Your Todos</h1>
    <table class="table">
        <thead>
        <tr>
            <th>id</th>
            <th>Description</th>
            <th>Target Date</th>
            <th>Is Done?</th>
            <th>Delete</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${todo}" var="todo">
            <tr>
                <td>${todo.id}</td>
                <td>${todo.description}</td>
                <td>${todo.date}</td>
                <td>${todo.done}</td>
                <td><a href="deleteToDo?id=${todo.id}" class="btn-outline-warning" />Delete </td>
                <td><a href="updateToDo?id=${todo.id}" class="btn-success" />Update</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="addtodo" class="btn btn-success">Add ToDo</a>
    
</div>
<%@include file="common/footer.jspf"%>