<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Creatica Theatre Hub - Register</title>
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
    <div class="nav-right">
        <span class="nav-tagline">NGO Portal</span>
        <a href="/creatica_theater_hub/user/login" class="nav-login">← Login</a>
    </div>
</nav>

<div class="page-wrap">

    <!-- Header -->
    <div class="page-header">
        <h2>Create Your Account</h2>
        <p>Join the Creatica family — where theatre comes alive</p>
        <div class="rainbow-bar"></div>
    </div>

    <!-- CARD -->
    <div class="card">
        <form id="regForm" action="/user/registrationPost" method="POST">
        <input type="hidden" name="userType" id="userType" value="student">

        <!-- User type toggle -->
        <div class="toggle-wrap">
            <button class="toggle-btn active" id="btnStudent" onclick="setType('student')"><img src='<c:url value="/Resources/user/images/Icons/graduate-hat.png"></c:url>' alt="" width="30px"> Student</button>
            <button class="toggle-btn" id="btnVolunteer" onclick="setType('volunteer')"><img src='<c:url value="/Resources/user/images/Icons/theatre.png"></c:url>' alt="" width="30px"> Volunteer</button>
        </div>

        <!-- ═══════════ PERSONAL INFO ═══════════ -->
        <div class="section-label">Personal Information</div>
        <div class="form-grid">

            <div class="field">
                <label>First Name</label>
                <div class="field-wrap">
                    <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/user (1).png"></c:url>' width="18px" alt=""></span>
                    <input type="text" id="firstName" name="firstName" placeholder="First name" required>
                </div>
            </div>

            <div class="field">
                <label>Last Name</label>
                <div class="field-wrap">
                    <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/user (1).png"></c:url>'width="18px" alt=""></span>
                    <input type="text" id="lastName" name="lastName" placeholder="Last name" required>
                </div>
            </div>

            <div class="field">
                <label>Email Address</label>
                <div class="field-wrap">
                    <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/email.png"></c:url>' width="18px" alt=""></span>
                    <input type="email" id="email" name="email" placeholder="you@example.com" required>
                </div>
            </div>

            <div class="field">
                <label>Phone Number</label>
                <div class="field-wrap">
                    <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/phone.png"></c:url>' width="17px" alt=""></span>
                    <input type="tel" id="phone" name="phone" placeholder="+91 00000 00000" required>
                </div>
            </div>

            <div class="field">
                <label>Date of Birth</label>
                <div class="field-wrap">
                    <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/birthday-cake.png"></c:url>' width="18px" alt=""></span>
                    <input type="date" id="dob" name="dob">
                </div>
            </div>

            <div class="field">
                <label>Gender</label>
                <div class="field-wrap select-wrap">
                    <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/gender-neutral (1).png"></c:url>' width="18px" alt=""></span>
                    <select id="gender" name="gender">
                        <option value="" disabled selected>Select gender</option>
                        <option>Male</option>
                        <option>Female</option>
                        <option>Non-binary</option>
                        <option>Prefer not to say</option>
                    </select>
                </div>
            </div>

        </div>

        <!-- ═══════════ STUDENT FIELDS ═══════════ -->
        <div id="studentSection" class="student-section active">
            <div class="section-label" style="margin-top:1.6rem;">Student Details</div>
            <div class="form-grid">

                <div class="field">
                    <label>School / College</label>
                    <div class="field-wrap">
                        <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/house (1).png"></c:url>' width="18px" alt=""></span>
                        <input type="text" name="school" placeholder="Institution name">
                    </div>
                </div>

                <div class="field">
                    <label>Grade / Year</label>
                    <div class="field-wrap select-wrap">
                        <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/book.png"></c:url>' width="18px" alt=""></span>
                        <select name="grade">
                            <option value="" disabled selected>Select grade</option>
                            <option>Grade 6</option><option>Grade 7</option>
                            <option>Grade 8</option><option>Grade 9</option>
                            <option>Grade 10</option><option>Grade 11</option>
                            <option>Grade 12</option><option>1st Year</option>
                            <option>2nd Year</option><option>3rd Year</option>
                            <option>4th Year</option><option>Other</option>
                        </select>
                    </div>
                </div>

                <div class="field">
                    <label>Interested In</label>
                    <div class="field-wrap select-wrap">
                        <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/theater-mask.png"></c:url>' width="18px" alt=""></span>
                        <select name="interest">
                            <option value="" disabled selected>Choose interest</option>
                            <option>Acting</option>
                            <option>Dancing</option>
                            <option>Singing</option>
                            <option>Music (Instruments)</option>
                            <option>Direction</option>
                            <option>Script Writing</option>
                            <option>Stage Design</option>
                            <option>All of the above</option>
                        </select>
                    </div>
                </div>

                <div class="field">
                    <label>Experience Level</label>
                    <div class="field-wrap select-wrap">
                        <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/star.png"></c:url>' width="15px" alt=""></span>
                        <select name="experienceLevel">
                            <option value="" disabled selected>Select level</option>
                            <option>Beginner</option>
                            <option>Intermediate</option>
                            <option>Advanced</option>
                        </select>
                    </div>
                </div>

                <div class="field full">
                    <label>Parent / Guardian Name</label>
                    <div class="field-wrap">
                        <span class="icon"><img src=family.png width="18px" alt=""></span>
                        <input type="text" placeholder="Guardian's full name">
                    </div>
                </div>

                <div class="field full">
                    <label>Guardian Contact</label>
                    <div class="field-wrap">
                        <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/smartphone.png"></c:url>' width="18px" alt=""></span>
                        <input type="tel" placeholder="Guardian's phone number">
                    </div>
                </div>

            </div>
        </div>

        <!-- ═══════════ VOLUNTEER FIELDS ═══════════ -->
        <div id="volunteerSection" class="volunteer-section">
            <div class="section-label" style="margin-top:1.6rem;">Volunteer Details</div>
            <div class="form-grid">

                <div class="field">
                    <label>Profession / Occupation</label>
                    <div class="field-wrap">'<c:url value="/Resources/user/images/Icons/goal.png"></c:url>'
                        <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/3d-briefcase.png"></c:url>' width="18px" alt=""></span>
                        <input type="text" name="profession" placeholder="e.g. Teacher, Artist…">
                    </div>
                </div>

                <div class="field">
                    <label>Area of Expertise</label>
                    <div class="field-wrap select-wrap">
                        <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/goal.png"></c:url>' width="17px" alt=""></span>
                        <select name="expertise">
                            <option value="" disabled selected>Select expertise</option>
                            <option>Acting Coach</option>
                            <option>Dance Instructor</option>
                            <option>Music Teacher</option>
                            <option>Script Writer</option>
                            <option>Director</option>
                            <option>Event Management</option>
                            <option>Costume & Makeup</option>
                            <option>Technical (Light/Sound)</option>
                            <option>Administration</option>
                        </select>
                    </div>
                </div>

                <div class="field">
                    <label>Years of Experience</label>
                    <div class="field-wrap select-wrap">
                        <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/calendar (1).png"></c:url>' width="18px" alt=""></span>
                        <select>
                            <option value="" disabled selected>Experience</option>
                            <option>Less than 1 year</option>
                            <option>1 – 3 years</option>
                            <option>3 – 5 years</option>
                            <option>5 – 10 years</option>
                            <option>10+ years</option>
                        </select>
                    </div>
                </div>

                <div class="field">
                    <label>Availability</label>
                    <div class="field-wrap select-wrap">
                        <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/clock.png"></c:url>' width="18px" alt=""></span>
                        <select>
                            <option value="" disabled selected>Select availability</option>
                            <option>Weekdays</option>
                            <option>Weekends</option>
                            <option>Both</option>
                            <option>Flexible</option>
                        </select>
                    </div>
                </div>

                <div class="field full">
                    <label>Brief Bio / Motivation</label>
                    <div class="field-wrap">
                        <span class="icon" style="top:14px;"><img src='<c:url value="/Resources/user/images/Icons/pencil.png"></c:url>' width="18px" alt=""></span>
                        <textarea name="bio" placeholder="Tell us about yourself and why you want to volunteer with Creatica…"></textarea>
                    </div>
                </div>

            </div>
        </div>

        <!-- ═══════════ ADDRESS ═══════════ -->
        <div class="section-label" style="margin-top:1.6rem;">Address</div>
        <div class="form-grid">

            <div class="field full">
                <label>Street Address</label>
                <div class="field-wrap">
                    <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/house (2).png"></c:url>' width="18px" alt=""></span>
                    <input type="text" name="street" placeholder="House / Flat, Street name">
                </div>
            </div>
  
            <div class="field">
                <label>City</label>
                <div class="field-wrap">
                    <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/architecture-and-city.png"></c:url>' width="18px" alt=""></span>
                    <input type="text" name="city" placeholder="City">
                </div>
            </div>

            <div class="field">
                <label>State</label>
                <div class="field-wrap select-wrap">
                    <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/map1.png"></c:url>'  alt="" width="20px"></span>
                    <select>
                        <option value="" disabled selected>Select state</option>
                        <option>Gujarat</option><option>Maharashtra</option>
                        <option>Rajasthan</option><option>Delhi</option>
                        <option>Karnataka</option><option>Tamil Nadu</option>
                        <option>West Bengal</option><option>Uttar Pradesh</option>
                        <option>Other</option>
                    </select>
                </div>
            </div>

            <div class="field">
                <label>PIN Code</label>
                <div class="field-wrap">
                    <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/postbox.png"></c:url>'  alt="" width="20px"></span>
                    <input type="text" name="pin" maxlength="6" placeholder="000000">
                </div>
            </div>

        </div>

        <!-- ═══════════ ACCOUNT SECURITY ═══════════ -->
        <div class="section-label" style="margin-top:1.6rem;">Account Security</div>
        <div class="form-grid">

            <div class="field">
                <label>Password</label>
                <div class="field-wrap"> 
                    <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/lock.jpg"></c:url>'  alt="" width="20px"></span>
                    <input type="password" id="password" name="password" placeholder="Create password" oninput="checkStrength(this.value)" required>
                    <button type="button" class="eye-btn" onclick="togglePwd('password','eye1')" id="eye1"><img src='<c:url value="/Resources/user/images/Icons/eye2.png"></c:url>'  alt="" width="20px"></button>
                </div>
                <div class="strength-bar">
                    <span id="s1"></span><span id="s2"></span>
                    <span id="s3"></span><span id="s4"></span>
                </div>
                <div class="strength-label" id="strengthLabel"></div>
            </div>

            <div class="field">
                <label>Confirm Password</label>
                <div class="field-wrap">
                    <span class="icon"><img src='<c:url value="/Resources/user/images/Icons/key.png"></c:url>' width="15px" alt=""></i></span>
                    <input type="password" id="confirmPassword" placeholder="Repeat password">
                    <button type="button" class="eye-btn" onclick="togglePwd('confirmPassword','eye2')" id="eye2"><img src='<c:url value="/Resources/user/images/Icons/man.png"></c:url>' width="15px" alt=""></button>
                </div>
            </div>

        </div>

        <!-- Terms -->
        <div class="terms-row" style="margin-top:1.4rem;">
            <input type="checkbox" id="terms">
            <label for="terms">
                I agree to the <a href="#">Terms &amp; Conditions</a> and
                <a href="#">Privacy Policy</a> of Creatica Theatre Hub NGO Portal.
            </label>
        </div>

        <!-- Submit -->
        <button type="button" class="btn-register" onclick="handleRegister()">
            Create Account &nbsp;<i class="bi bi-arrow-right"></i> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8"/>
</svg>
        </button>

        <div class="divider"><span>already a member?</span></div>
        <p class="login-txt">
            Already have an account? <a href="/creatica_theater_hub/user/login">Login Here</a>
        </p>
        </form>

    </div><!-- /card -->

</div><!-- /page-wrap -->

<footer style="position:relative; z-index:5; text-align:center; padding:.9rem;
    font-size:.7rem; color:rgba(245,240,232,.2); letter-spacing:.08em;">
    © 2025 Creatica Theatre Hub · All rights reserved
</footer>

<!-- Toast -->
<div class="toast" id="toast"></div>
<jsp:include page="../user/links/Userfootlink.jsp"></jsp:include>
</body>
</html>