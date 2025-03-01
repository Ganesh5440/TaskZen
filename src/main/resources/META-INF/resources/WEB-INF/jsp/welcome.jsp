<%@include file="common/header.jspf"%>
<%@include file="common/navigation.jspf"%>
<style>
    /* Global Styles */
    body {
        background: linear-gradient(145deg, #e9ecef, #f8f9fa);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .container {
        animation: fadeIn 1.5s ease-in;
        background: linear-gradient(145deg, #ffffff, #f8f9fa);
        border-radius: 15px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        padding: 2rem;
        margin-top: 2rem;
    }
    .credentials-box {
        background: white;
        border-radius: 10px;
        padding: 1.5rem;
        margin: 1rem 0;
        transform: translateY(0);
        transition: transform 0.3s ease;
        border: 2px solid #00b4d8;
    }
    .credentials-box:hover {
        transform: translateY(-5px);
        box-shadow: 0 5px 15px rgba(0, 116, 217, 0.2);
    }
    .manage-link {
        display: inline-block;
        padding: 12px 25px;
        background: linear-gradient(45deg, #00b4d8, #0077b6);
        color: white!important;
        border-radius: 25px;
        text-decoration: none;
        transition: all 0.3s ease;
        box-shadow: 0 3px 6px rgba(0, 116, 217, 0.2);
    }
    .manage-link:hover {
        transform: scale(1.05);
        box-shadow: 0 5px 15px rgba(0, 116, 217, 0.3);
        letter-spacing: 1px;
    }
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }
    .pulse {
        animation: pulse 2s infinite;
    }
    @keyframes pulse {
        0% { transform: scale(1); }
        50% { transform: scale(1.02); }
        100% { transform: scale(1); }
    }

    /* Consistent Colors */
    h3 {
        color: #0077b6; /* Primary Blue */
        font-weight: 600;
    }
    .lead {
        color: #00b4d8; /* Lighter Blue */
    }
    i.fa-user-circle {
        color: #00b4d8; /* Lighter Blue */
    }
</style>

<div class="container pulse">
    <div class="credentials-box">
        <h3 class="mb-3">Your Profile</h3>
        <p class="lead">
            <i class="fas fa-user-circle"></i> Name: ${name}
        </p>
    </div>

    <div class="text-center mt-4">
        <a href="listoftodo" class="manage-link">
            <i class="fas fa-tasks"></i> Manage My Todos
        </a>
    </div>
</div>

<%@include file="common/footer.jspf"%>