<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="common/navigation.jspf"%>

<html>
<head>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
    <title>Add Todo Page</title>
    <style>
        .todo-form-container {
            max-width: 600px;
            margin: 2rem auto;
            padding: 2.5rem;
            background: linear-gradient(145deg, #ffffff, #f8f9fa);
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
            animation: slideIn 0.6s ease-out;
        }

        @keyframes slideIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h1 {
            color: #333;
            transition: color 0.3s;
        }

        h1:hover {
            color: #00ced1;
        }

        .form-label {
            font-weight: 600;
            color: #2c3e50;
            margin-bottom: 0.5rem;
        }

        .form-control {
            border-radius: 8px;
            transition: all 0.3s ease;
            border: 2px solid #e0e0e0;
            padding: 0.75rem 1rem;
        }

        .form-control:focus {
            border-color: #3498db;
            box-shadow: 0 0 8px rgba(52, 152, 219, 0.2);
        }

        .alert-warning {
            padding: 0.5rem 1rem;
            border-radius: 6px;
            margin-top: 0.5rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .btn-submit {
            background: linear-gradient(135deg, #2ecc71, #27ae60);
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 8px;
            transition: all 0.3s ease;
            font-weight: 600;
            letter-spacing: 0.5px;
            width: 100%;
        }

        .btn-submit:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(46, 204, 113, 0.3);
        }

        .date-input-wrapper {
            position: relative;
        }

        .date-input-wrapper::after {
            content: "\f073";
            font-family: "Font Awesome 5 Free";
            position: absolute;
            right: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #7f8c8d;
            pointer-events: none;
        }

        .checkbox-wrapper {
            display: flex;
            align-items: center;
            gap: 0.8rem;
            padding: 0.5rem 0;
        }

        .form-check-input {
            width: 1.2em;
            height: 1.2em;
            margin-top: 0;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="todo-form-container">
        <h1 class="mb-4 text-center text-primary">
            <i class="fas fa-plus-circle me-2"></i>Create New Todo
        </h1>

        <form:form modelAttribute="todo" method="post">
            <div class="mb-4">
                <form:label path="description" class="form-label">
                    <i class="fas fa-align-left me-2"></i>Description
                </form:label>
                <form:input type="text" path="description" class="form-control" required="required"/>
                <form:errors path="description" cssClass="alert alert-warning" />
                <form:input type="hidden" path="id"/>
                <form:input type="hidden" path="done"/>
            </div>

            <div class="mb-4 date-input-wrapper">
                <form:label path="date" class="form-label">
                    <i class="fas fa-calendar-alt me-2"></i>Target Date
                </form:label>
                <form:input type="text" path="date" class="form-control" required="required"/>
                <form:errors path="date" cssClass="alert alert-warning" />
            </div>

            <div class="mb-4">
                <div class="checkbox-wrapper">
                    <form:checkbox path="done" class="form-check-input"/>
                    <form:label path="done" class="form-label">
                        <i class="fas fa-check-circle me-2"></i>Mark as Completed
                    </form:label>
                </div>
                
            </div>

            <button type="submit" class="btn-submit">
                <i class="fas fa-save me-2"></i>Create Todo
            </button>
        </form:form>
    </div>
</div>

<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
<script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#date').datepicker({
            format: 'yyyy-mm-dd',
            autoclose: true,
            todayHighlight: true,
            orientation: "bottom auto"
        }).on('show', function() {
            $('.datepicker').addClass('shadow-lg');
        });
    });
</script>
</body>
</html>