<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout | Admin Panel</title>
    <link rel="stylesheet" href='<c:url value="/Resources/CSS/bootstrap.min.css"></c:url>'>
    <link rel="stylesheet" href='<c:url value="/Resources/CSS/all.css"></c:url>'>
    <style>
        :root {
            --primary-color: #4361ee;
            --secondary-color: #3f37c9;
            --bg-color: #f8f9fa;
            --card-bg: #ffffff;
            --text-main: #2b2d42;
            --text-muted: #8d99ae;
        }

        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            overflow: hidden;
        }

        .logout-container {
            max-width: 450px;
            width: 90%;
            perspective: 1000px;
        }

        .logout-card {
            background: var(--card-bg);
            border-radius: 24px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.1);
            padding: 3rem 2rem;
            text-align: center;
            transition: transform 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .logout-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 6px;
            background: linear-gradient(to right, var(--primary-color), var(--secondary-color));
        }

        .icon-wrapper {
            width: 80px;
            height: 80px;
            background: rgba(67, 97, 238, 0.1);
            color: var(--primary-color);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2.5rem;
            margin: 0 auto 1.5rem;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0% { transform: scale(1); box-shadow: 0 0 0 0 rgba(67, 97, 238, 0.4); }
            70% { transform: scale(1.05); box-shadow: 0 0 0 15px rgba(67, 97, 238, 0); }
            100% { transform: scale(1); box-shadow: 0 0 0 0 rgba(67, 97, 238, 0); }
        }

        h2 {
            color: var(--text-main);
            font-weight: 700;
            margin-bottom: 0.5rem;
        }

        p {
            color: var(--text-muted);
            margin-bottom: 2rem;
        }

        .btn-group-logout {
            display: flex;
            gap: 1rem;
            justify-content: center;
        }

        .btn-logout {
            padding: 0.8rem 2rem;
            border-radius: 12px;
            font-weight: 600;
            transition: all 0.3s ease;
            text-decoration: none;
            flex: 1;
        }

        .btn-confirm {
            background: var(--primary-color);
            color: white;
            border: none;
        }

        .btn-confirm:hover {
            background: var(--secondary-color);
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(67, 97, 238, 0.3);
            color: white;
        }

        .btn-cancel {
            background: #e9ecef;
            color: #495057;
            border: none;
        }

        .btn-cancel:hover {
            background: #dee2e6;
            transform: translateY(-2px);
        }

        .brand-logo {
            margin-bottom: 1rem;
            max-width: 150px;
        }

        /* Subtle animations */
        .fade-in {
            animation: fadeIn 0.8s ease-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>

    <div class="logout-container fade-in">
        <div class="logout-card">
            <img src='<c:url value="/Resources/Images/creatica_logo-removebg-preview.png"></c:url>' alt="Creatica Logo" class="brand-logo">
            
            <div class="icon-wrapper">
                <i class="fa-solid fa-right-from-bracket"></i>
            </div>
            
            <h2>Sign Out</h2>
            <p>Are you sure you want to log out from the Admin Panel? You will need to login again to access your dashboard.</p>
            
            <div class="btn-group-logout">
                <a href='<c:url value="/admin/dashboard"></c:url>' class="btn-logout btn-cancel">Cancel</a>
                <form action='<c:url value="/admin/logout"></c:url>' method="post" style="flex: 1;">
                    <button type="submit" class="btn-logout btn-confirm w-100">Logout Now</button>
                </form>
            </div>
        </div>
    </div>

    <script src='<c:url value="/Resources/JS/bootstrap.bundle.min.js"></c:url>'></script>
</body>
</html>
