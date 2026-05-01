<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Creatica Theatre Hub – Login</title>
     <jsp:include page="../user/links/Userheadlink.jsp"></jsp:include>
</head>
<body>

<!-- Ambient BG -->
<div class="bg-canvas">
    <div class="orb orb1"></div>
    <div class="orb orb2"></div>
    <div class="orb orb3"></div>
    <div class="sparkles" id="sparkles"></div>
</div>

<!-- NAVBAR -->
<nav>
    <span class="nav-brand"><img src='<c:url value="/Resources/user/images/sparkling.png"></c:url>' alt="" width="30px"> Creatica Theatre Hub</span>
    <span class="nav-tagline">NGO Portal</span>
</nav>

<main>
    <!-- LEFT -->
    <div class="left-panel">
        <div class="logo-wrap">
            <!-- Replace src with your logo path -->
            <img src="creatica_logo-removebg-preview.png" alt="Creatica Theatre Hub Logo">
        </div>

        <div class="left-text">
            <div class="rainbow-bar" style="margin:0 auto 1.2rem;"></div>
            <h1>
                <span class="c1">Cre</span><span class="c2">at</span><span class="c3">e.</span>
                <span class="c4"> Per</span><span class="c5">form.</span><br>
                <span class="c6">In</span><span class="c1">sp</span><span class="c3">ire</span><span class="c5">.</span>
            </h1>
            <p>
                <strong>Theatre is an art of LIFE,</strong><br>
                which everyone should learn…
            </p>
            <div class="rainbow-bar" style="margin:1.2rem auto 0;"></div>
        </div>
    </div>

    <!-- RIGHT: LOGIN CARD -->
    <div class="right-panel">
        <div class="card">
            <div class="card-title">Welcome Back</div>
            <div class="card-sub">Sign in to your portal</div>

            <!-- Error Message -->
            <c:if test="${not empty error}">
                <div style="background:rgba(232,52,74,0.12);border:1px solid rgba(232,52,74,0.3);color:#e8344a;padding:10px 16px;border-radius:10px;font-size:0.85rem;font-weight:600;text-align:center;margin-bottom:1.2rem;">
                    <i class="fa-solid fa-circle-exclamation" style="margin-right:6px"></i>${error}
                </div>
            </c:if>

            <form id="loginForm" action="/creatica_theater_hub/user/loginPost" method="POST">
            <input type="hidden" name="userType" id="userType" value="student">

            <!-- User type toggle -->
            <div class="toggle-wrap">
                <button type="button" class="toggle-btn active" id="btnStudent" onclick="setType('student')"><img src='<c:url value="/Resources/user/images/Icons/graduate-hat.png"></c:url>' alt="" width="30px"> Student</button>
                <button type="button" class="toggle-btn" id="btnVolunteer" onclick="setType('volunteer')"><img src='<c:url value="/Resources/user/images/Icons/theatre.png"></c:url>' alt="" width="30px"> Volunteer</button>
            </div>

            <!-- Email -->
            <div class="field">
                <label>Email Address</label>
                <div class="field-wrap">
                    <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/email.png"></c:url>' alt="" width="15px"></span>
                    <input type="email" id="email" name="email" placeholder="you@example.com" autocomplete="email">
                </div>
            </div>

            <!-- Password -->
            <div class="field">
                <label>Password</label>
                <div class="field-wrap">
                    <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/lock(1).png"></c:url>' alt="" width="18px"></span>
                    <input type="password" id="password" name="password" placeholder="Enter your password" autocomplete="current-password">
                    <button type="button" class="eye-btn" onclick="togglePwd()" id="eyeBtn" title="Show/Hide"><img src='<c:url value="/Resources/user/images/Icons/eye2.png"></c:url>' alt="" width="18px"></button>
                </div>
            </div>

            <a href="#" class="forgot">Forgot password?</a>

            <button type="submit" class="btn-login" onclick="handleLogin()">Login &nbsp;→</button>

            <div class="divider"><span>or</span></div>

            <p class="register-txt">
                Don't have an account?
                <a href="/creatica_theater_hub/user/registration">Register Here</a>
            </p>
            </form>
        </div>
    </div>
</main>

<footer>© 2025 Creatica Theatre Hub · All rights reserved</footer>

<jsp:include page="../user/links/Userfootlink.jsp"></jsp:include>




</body>
</html>