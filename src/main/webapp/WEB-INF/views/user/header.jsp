<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isELIgnored="false" %>
            <!-- ── TOP HEADER ── -->
            <div class="top-header">
                <marquee behavior="scroll" direction="left" scrollamount="4">
                    🎭 Creatica Charitable Trust is registered under Trust and Society.&nbsp;&nbsp;
                    <a href="certificate.html">Click here for Certificate</a>
                    &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                    🌟 Admissions Open for Dance, Drama, Acting & Music Programs!
                </marquee>
            </div>

            <!-- ── MAIN NAVBAR ── -->
            <div class="main-navbar">
                <div class="navbar-brand">
                    <img src="/content/images/creatica_logo-removebg-preview.png" alt="Creatica Logo">
                    <div>
                        <div class="brand-name">Creatica Theater Hub</div>
                        <div class="brand-sub">Charitable Trust · NGO</div>
                    </div>
                </div>
                <div class="navbar-actions">
                    <!-- If user is NOT logged in: show Login button -->
                    <c:if test="${empty sessionScope.loggedInUser}">
                        <a href="/creatica_theater_hub/user/login" class="btn btn-theme1 user-btn" id="loginBtn">
                            <i class="fa-solid fa-user" style="margin-right:5px"></i>Login
                        </a>
                    </c:if>

                    <!-- If user IS logged in: convert login button to name dropdown -->
                    <c:if test="${not empty sessionScope.loggedInUser}">
                        <div class="dropdown" id="userDropdownWrap">
                            <button class="btn btn-theme1 user-btn" onclick="toggleUserDropdown(event)">
                                <i class="fa-solid fa-circle-user" style="margin-right:6px"></i>
                                ${sessionScope.loggedInUser} <i class="fa-solid fa-caret-down"
                                    style="margin-left:5px"></i>
                            </button>
                            <div class="dropdown-menu" id="userDropdownMenu">
                                <a href="/creatica_theater_hub/user/dashboard">
                                    <i class="fa-solid fa-gauge-high"></i> My Dashboard
                                </a>
                                <a href="/creatica_theater_hub/user/logout" class="logout-link">
                                    <i class="fa-solid fa-right-from-bracket"></i> Sign Out
                                </a>
                            </div>
                        </div>
                    </c:if>

                    <a href="/creatica_theater_hub/user/contact" class="btn btn-theme2">
                        <i class="fa-solid fa-envelope" style="margin-right:5px"></i>Contact
                    </a>
                    <a href="/creatica_theater_hub/user/donation" class="btn btn-theme3">
                        <i class="fa-solid fa-heart" style="margin-right:5px"></i>Donate
                    </a>
                </div>
            </div>

            <!-- ── MENU NAV ── -->
            <nav class="menu-nav">
                <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house"
                        style="margin-right:5px"></i>Home</a>
                <div class="dropdown">
                    <a href="/creatica_theater_hub/user/about">About Us <i class="fa-solid fa-chevron-down"
                            style="font-size:0.65rem;margin-left:4px"></i></a>
                    <div class="dropdown-menu">
                        <a href="/creatica_theater_hub/user/about/volunteer"><i class="fa-solid fa-hands-helping"
                                style="color:#F29B2E;margin-right:8px"></i>Volunteer with Us</a>
                        <a href="/creatica_theater_hub/user/about/team"><i class="fa-solid fa-users"
                                style="color:#F29B2E;margin-right:8px"></i>Our Team & Artists</a>
                        <a href="/creatica_theater_hub/user/about/award"><i class="fa-solid fa-trophy"
                                style="color:#F29B2E;margin-right:8px"></i>News and Awards</a>
                    </div>
                </div>
                <div class="dropdown">
                    <a href="/creatica_theater_hub/user/ourprogram">Our Program <i class="fa-solid fa-chevron-down"
                            style="font-size:0.65rem;margin-left:4px"></i></a>
                    <div class="dropdown-menu">
                        <a href="/creatica_theater_hub/user/ourprogram/dance"><i class="fa-solid fa-music"
                                style="color:#F29B2E;margin-right:8px"></i>Dance</a>
                        <a href="/creatica_theater_hub/user/ourprogram/drama"><i class="fa-solid fa-masks-theater"
                                style="color:#F29B2E;margin-right:8px"></i>Drama</a>
                        <a href="/creatica_theater_hub/user/ourprogram/acting"><i class="fa-solid fa-video"
                                style="color:#F29B2E;margin-right:8px"></i>Acting</a>
                        <a href="/creatica_theater_hub/user/ourprogram/music"><i class="fa-solid fa-guitar"
                                style="color:#F29B2E;margin-right:8px"></i>Music</a>
                        <a href="/creatica_theater_hub/user/ourprogram/pd"><i class="fa-solid fa-star"
                                style="color:#F29B2E;margin-right:8px"></i>Personality Development</a>
                    </div>
                </div>
                <a href="/creatica_theater_hub/user/event">Event</a>
                <a href="/creatica_theater_hub/user/gallery">Gallery</a>
                <a href="/creatica_theater_hub/user/csr">CSR</a>
                <a href="/creatica_theater_hub/user/blog">Blogs & Updates</a>
            </nav>

            <!-- User Dropdown Script -->
            <script>
                function toggleUserDropdown(e) {
                    e.stopPropagation();
                    var menu = document.getElementById('userDropdownMenu');
                    var wrap = document.getElementById('userDropdownWrap');
                    menu.classList.toggle('show');
                    wrap.classList.toggle('active');
                }
                // Close dropdown when clicking outside
                document.addEventListener('click', function (e) {
                    var menu = document.getElementById('userDropdownMenu');
                    var wrap = document.getElementById('userDropdownWrap');
                    if (menu && wrap && !wrap.contains(e.target)) {
                        menu.classList.remove('show');
                        wrap.classList.remove('active');
                    }
                });
                
                
            </script>