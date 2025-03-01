<%@include file="common/header.jspf"%>
<%@include file="common/navigation.jspf"  %>
<div class="container">
    <h1 class="title">Your Todos</h1>
    <div class="table-container">
        <table class="table table-hover">
            <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Description</th>
                <th>Target Date</th>
                <th>Is Done?</th>
                <th>Delete</th>
                <th>Update</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${todo}" var="todo">
                <tr class="table-row">
                    <td>${todo.id}</td>
                    <td>${todo.description}</td>
                    <td>${todo.date}</td>
                    <td>
                            <span class="status ${todo.done ? 'done' : 'not-done'}">
                                    ${todo.done}
                            </span>
                    </td>
                    <td>
                        <a href="deleteToDo?id=${todo.id}" class="btn btn-outline-warning btn-sm custom-btn">
                            Delete
                        </a>
                    </td>
                    <td>
                        <a href="updateToDo?id=${todo.id}" class="btn btn-success btn-sm custom-btn">
                            Update
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <a href="addtodo" class="btn btn-success add-btn">Add Todo</a>
</div>
<%@include file="common/footer.jspf"%>

<style>
    .container {
        padding: 20px;
        max-width: 1000px;
    }

    .title {
        color: #333;
        margin-bottom: 20px;
        transition: color 0.3s;
    }

    .title:hover {
        color: #00ced1;
    }

    .table-container {
        background: white;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0,0,0,0.1);
        overflow: hidden;
        transition: box-shadow 0.3s;
    }

    .table-container:hover {
        box-shadow: 0 0 30px rgba(0,0,0,0.15);
    }

    .table-row {
        transition: transform 0.2s, background-color 0.2s;
    }

    .table-row:hover {
        transform: translateY(-2px);
        background-color: #f8f9fa;
    }

    .custom-btn {
        transition: all 0.3s ease;
        border-radius: 20px;
        padding: 5px 15px;
    }

    .btn-outline-warning {
        border-color: #ff9800;
        color: #ff9800;
    }

    .btn-outline-warning:hover {
        background: linear-gradient(45deg, #ff9800, #ffb300);
        color: white;
        transform: scale(1.05);
        border-color: transparent;
    }

    .btn-success {
        background: linear-gradient(45deg, #28a745, #34d058);
        border: none;
    }

    .btn-success:hover {
        background: linear-gradient(45deg, #34d058, #28a745);
        transform: scale(1.05);
    }

    .add-btn {
        margin-top: 20px;
        padding: 10px 25px;
        border-radius: 25px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.2);
        transition: all 0.3s ease;
    }

    .add-btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 10px rgba(0,0,0,0.3);
    }

    .status {
        padding: 2px 8px;
        border-radius: 12px;
        font-size: 0.9em;
    }

    .done {
        background: #e6ffe6;
        color: #28a745;
    }

    .not-done {
        background: #fff0f0;
        color: #dc3545;
    }
</style>