<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
 <link rel="stylesheet" href='<c:url value="/Resources/CSS/bootstrap.min.css"></c:url>'>
 <link rel="stylesheet" href='<c:url value="/Resources/CSS/style.css"></c:url>'>
 <link rel="stylesheet" href='<c:url value="/Resources/CSS/all.css"></c:url>'>
 
    <style>
        body{
            height: 100vh;
            background-color:aliceblue ;
        }
        .login-box{
            background-image:linear-gradient(to right,rgba(255,255,255,0.5),rgba(255,255,255,0.7)), url("<c:url value="/Resources/Images/creatica_logo-removebg-preview.png"></c:url>");
            background-repeat: no-repeat;
            background-position: center;
        }
     
    </style>
</head>
<body class="d-flex justify-content-center align-items-center">
    <div class="container">
        <div class="row justify-content-center mt-4">
        <div class="col-md-5">
            <div class="card p-4 py-5 login-box">
                <div class="text-center">
                    <h3 class="fw-bold">Admin Panel</h3>
                    <p class="text-muted">Welcome back! Please login</p>
                </div>
                <!-------------Form Start ------------------>

                    <form action="<c:url value='/admin/login'></c:url>" method="post">

                        <div class="form-floating m-2 mb-3">
                            <input type="text" name="username" class="form-control" placeholder="" required>
                            <label class="form-label">Username</label>
                        </div>

                        <div class="form-floating m-2 mb-3">
                            <input type="password" name="password" class="form-control" placeholder="" required>
                            <label class="form-label">Password</label>
                        </div>

                        <div class=" form-check d-flex justify-content-between m-2 mb-3">
                        <div>
                        <input type="checkbox" class="form-check-input">
                        <label class="form-check-label text-secondary">Remember me</label>
                        </div>
                        <a href="#" class="text-decoration-none "><small>Forget Password?</small></a>
                        </div>
                        
						<p class="text-danger">${errorMessage}</p>
						<c:if test="${param.logout == 'success'}">
							<p class="text-success text-center">You have been successfully logged out.</p>
						</c:if>
                        <div class="d-grid mt-4">
                        <button type="submit"  class="btn btn-primary">Sign In</button>
                        </div>
                    </form>
            </div>
        </div>
        </div>
   
</div>
    <script src='<c:url value="/Resources/JS/bootstrap.bundle.min.js"></c:url>'></script>
</body>
</html>