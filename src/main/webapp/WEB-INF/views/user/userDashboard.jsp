<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Dashboard – Creatica Theatre Hub</title>
    <meta name="description" content="View your enrollment details, bookings and profile on Creatica Theatre Hub.">
    <jsp:include page="../user/links/Userheadlink.jsp"></jsp:include>
    <style>
        /* ── DASHBOARD PAGE STYLES ── */
        .dashboard-hero {
            background: linear-gradient(135deg, #1F2933 0%, #2E6F95 50%, #F29B2E 100%);
            background-size: 200% 200%;
            animation: dashGradient 8s ease infinite;
            padding: 3rem 2.5rem 4rem;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .dashboard-hero::before {
            content: '';
            position: absolute; inset: 0;
            background: radial-gradient(ellipse 50% 60% at 20% 40%, rgba(242,155,46,0.15) 0%, transparent 70%),
                        radial-gradient(ellipse 40% 50% at 80% 60%, rgba(14,181,85,0.1) 0%, transparent 70%);
            pointer-events: none;
        }
        @keyframes dashGradient {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
        .dash-avatar-big {
            width: 90px; height: 90px;
            border-radius: 50%;
            background: linear-gradient(135deg, #F29B2E, #F2C94C);
            display: flex; align-items: center; justify-content: center;
            font-size: 2.2rem; font-weight: 800; color: #fff;
            margin: 0 auto 1rem;
            box-shadow: 0 8px 30px rgba(242,155,46,0.4);
            border: 4px solid rgba(255,255,255,0.25);
            position: relative; z-index: 2;
        }
        .dash-hero-name {
            font-family: 'Playfair Display', serif;
            font-size: 1.8rem; font-weight: 700;
            color: #fff; margin-bottom: 0.3rem;
            position: relative; z-index: 2;
        }
        .dash-hero-type {
            display: inline-flex; align-items: center; gap: 6px;
            background: rgba(255,255,255,0.15);
            backdrop-filter: blur(6px);
            border: 1px solid rgba(255,255,255,0.2);
            padding: 5px 16px; border-radius: 50px;
            font-size: 0.78rem; font-weight: 700;
            color: #F2C94C; letter-spacing: 0.1em;
            text-transform: uppercase;
            position: relative; z-index: 2;
        }

        /* ── DASHBOARD BODY ── */
        .dashboard-body {
            max-width: 1100px;
            margin: -2rem auto 3rem;
            padding: 0 2rem;
            position: relative; z-index: 5;
        }

        /* ── INFO CARDS GRID ── */
        .dash-cards-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 1.5rem;
            margin-bottom: 2rem;
        }
        .dash-card {
            background: #fff;
            border-radius: 16px;
            padding: 1.8rem 1.5rem;
            box-shadow: 0 6px 25px rgba(0,0,0,0.08);
            border-top: 4px solid #2E6F95;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .dash-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 15px 40px rgba(0,0,0,0.12);
        }
        .dash-card:nth-child(2) { border-top-color: #F29B2E; }
        .dash-card:nth-child(3) { border-top-color: #0EB555; }
        .dash-card:nth-child(4) { border-top-color: #296498; }

        .dash-card-header {
            display: flex; align-items: center; gap: 0.8rem;
            margin-bottom: 1.2rem;
        }
        .dash-card-icon {
            width: 44px; height: 44px; border-radius: 12px;
            display: flex; align-items: center; justify-content: center;
            font-size: 1.1rem;
        }
        .dash-card:nth-child(1) .dash-card-icon { background: rgba(46,111,149,0.12); color: #2E6F95; }
        .dash-card:nth-child(2) .dash-card-icon { background: rgba(242,155,46,0.12); color: #F29B2E; }
        .dash-card:nth-child(3) .dash-card-icon { background: rgba(14,181,85,0.12); color: #0EB555; }
        .dash-card:nth-child(4) .dash-card-icon { background: rgba(41,100,152,0.12); color: #296498; }

        .dash-card-title {
            font-family: 'Playfair Display', serif;
            font-size: 1.05rem; font-weight: 700;
            color: #1a1a1a;
        }

        .dash-info-row {
            display: flex; justify-content: space-between;
            align-items: center;
            padding: 0.6rem 0;
            border-bottom: 1px solid #f0f0f0;
        }
        .dash-info-row:last-child { border-bottom: none; }
        .dash-info-label {
            font-size: 0.82rem; font-weight: 600;
            color: #888; letter-spacing: 0.04em;
        }
        .dash-info-value {
            font-size: 0.88rem; font-weight: 700;
            color: #1a1a1a; text-align: right;
            max-width: 60%; word-break: break-word;
        }

        /* STATUS BADGES */
        .dash-status {
            display: inline-block; padding: 3px 12px;
            border-radius: 50px; font-size: 0.72rem;
            font-weight: 700; letter-spacing: 0.08em;
            text-transform: uppercase;
        }
        .dash-status-active { background: rgba(14,181,85,0.12); color: #0EB555; }
        .dash-status-pending { background: rgba(242,155,46,0.12); color: #F29B2E; }
        .dash-status-paid { background: rgba(46,111,149,0.12); color: #2E6F95; }

        /* ── BOOKINGS TABLE ── */
        .dash-section-title {
            font-family: 'Playfair Display', serif;
            font-size: 1.4rem; font-weight: 700;
            color: #2E6F95; margin-bottom: 0.4rem;
        }
        .dash-section-sub {
            font-size: 0.88rem; color: #888;
            font-style: italic; margin-bottom: 1.5rem;
        }
        .dash-table-wrap {
            background: #fff;
            border-radius: 16px;
            box-shadow: 0 6px 25px rgba(0,0,0,0.08);
            overflow: hidden; margin-bottom: 2rem;
        }
        .dash-table {
            width: 100%; border-collapse: collapse;
        }
        .dash-table thead {
            background: linear-gradient(135deg, #2E6F95, #1F2933);
            color: #fff;
        }
        .dash-table th {
            padding: 12px 16px; font-size: 0.78rem;
            font-weight: 700; letter-spacing: 0.1em;
            text-transform: uppercase; text-align: left;
        }
        .dash-table td {
            padding: 12px 16px; font-size: 0.88rem;
            color: #333; border-bottom: 1px solid #f0f0f0;
        }
        .dash-table tbody tr:hover {
            background: #FFF8EE;
        }
        .dash-table tbody tr:last-child td { border-bottom: none; }

        .dash-empty {
            text-align: center; padding: 3rem 1.5rem;
            background: #fff; border-radius: 16px;
            box-shadow: 0 6px 25px rgba(0,0,0,0.08);
        }
        .dash-empty-icon {
            font-size: 3rem; margin-bottom: 1rem;
            opacity: 0.3;
        }
        .dash-empty-text {
            font-size: 1rem; color: #888;
            margin-bottom: 1rem;
        }

        /* ── QUICK ACTIONS ── */
        .dash-actions {
            display: flex; gap: 1rem; flex-wrap: wrap;
            margin-top: 1.5rem;
        }
        .dash-action-btn {
            display: inline-flex; align-items: center; gap: 8px;
            padding: 10px 22px; border-radius: 10px;
            font-size: 0.85rem; font-weight: 700;
            text-decoration: none; transition: all 0.25s;
            letter-spacing: 0.04em;
        }
        .dash-action-btn:hover {
            transform: translateY(-2px);
        }
        .dash-action-primary {
            background: #F29B2E; color: #fff;
            box-shadow: 0 4px 16px rgba(242,155,46,0.35);
        }
        .dash-action-primary:hover { background: #d9861f; color: #fff; }
        .dash-action-secondary {
            background: transparent; color: #2E6F95;
            border: 2px solid #2E6F95;
        }
        .dash-action-secondary:hover { background: #2E6F95; color: #fff; }
        .dash-action-danger {
            background: transparent; color: #e8344a;
            border: 2px solid #e8344a;
        }
        .dash-action-danger:hover { background: #e8344a; color: #fff; }

        /* ── RESPONSIVE ── */
        @media(max-width:768px) {
            .dashboard-hero { padding: 2rem 1.5rem 3rem; }
            .dash-hero-name { font-size: 1.4rem; }
            .dashboard-body { padding: 0 1rem; }
            .dash-cards-grid { grid-template-columns: 1fr; }
            .dash-table-wrap { overflow-x: auto; }
            .dash-table { min-width: 500px; }
        }
    </style>
</head>
<body>

<!-- Header -->
<jsp:include page="../user/header.jsp"></jsp:include>

<!-- ── DASHBOARD HERO ── -->
<div class="dashboard-hero">
    <div class="dash-avatar-big">${userName.substring(0,1).toUpperCase()}</div>
    <div class="dash-hero-name">Welcome, ${userName}!</div>
    <div class="dash-hero-type">
        <i class="fa-solid fa-circle" style="font-size:6px;color:#0EB555"></i>
        ${userType} Account
    </div>
</div>

<div class="rainbow-bar"></div>

<!-- ── DASHBOARD BODY ── -->
<div class="dashboard-body">

    <!-- ===== STUDENT DASHBOARD ===== -->
    <c:if test="${userType == 'Student' && student != null}">
        <div class="dash-cards-grid">
            <!-- Card 1: Personal Information -->
            <div class="dash-card">
                <div class="dash-card-header">
                    <div class="dash-card-icon"><i class="fa-solid fa-user"></i></div>
                    <div class="dash-card-title">Personal Information</div>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Full Name</span>
                    <span class="dash-info-value">${student.BIName}</span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Email</span>
                    <span class="dash-info-value">${student.BIEmail}</span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Phone</span>
                    <span class="dash-info-value">${student.BIPhoneNo != null ? student.BIPhoneNo : '—'}</span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Gender</span>
                    <span class="dash-info-value">${student.BIGender != null ? student.BIGender : '—'}</span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Date of Birth</span>
                    <span class="dash-info-value">${student.BIDOB != null ? student.BIDOB : '—'}</span>
                </div>
            </div>

            <!-- Card 2: Program Enrollment -->
            <div class="dash-card">
                <div class="dash-card-header">
                    <div class="dash-card-icon"><i class="fa-solid fa-graduation-cap"></i></div>
                    <div class="dash-card-title">Program Enrollment</div>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Enrolled Program</span>
                    <span class="dash-info-value">${student.PDProgram != null ? student.PDProgram : '—'}</span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Time Slot</span>
                    <span class="dash-info-value">${student.PDTimeSlot != null ? student.PDTimeSlot : '—'}</span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Start Date</span>
                    <span class="dash-info-value">${student.PDStartdate != null ? student.PDStartdate : '—'}</span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Status</span>
                    <span class="dash-info-value">
                        <c:choose>
                            <c:when test="${student.PDStatus == 'Active'}">
                                <span class="dash-status dash-status-active">Active</span>
                            </c:when>
                            <c:otherwise>
                                <span class="dash-status dash-status-pending">${student.PDStatus != null ? student.PDStatus : 'Pending'}</span>
                            </c:otherwise>
                        </c:choose>
                    </span>
                </div>
            </div>

            <!-- Card 3: Payment Details -->
            <div class="dash-card">
                <div class="dash-card-header">
                    <div class="dash-card-icon"><i class="fa-solid fa-credit-card"></i></div>
                    <div class="dash-card-title">Payment Details</div>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Payment Status</span>
                    <span class="dash-info-value">
                        <c:choose>
                            <c:when test="${student.paymentstatus == 'Paid'}">
                                <span class="dash-status dash-status-paid">Paid</span>
                            </c:when>
                            <c:otherwise>
                                <span class="dash-status dash-status-pending">${student.paymentstatus != null ? student.paymentstatus : 'Pending'}</span>
                            </c:otherwise>
                        </c:choose>
                    </span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Amount</span>
                    <span class="dash-info-value">${student.amount != null ? '₹'.concat(student.amount.toString()) : '—'}</span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Payment Mode</span>
                    <span class="dash-info-value">${student.paymentMode != null ? student.paymentMode : '—'}</span>
                </div>
            </div>

            <!-- Card 4: Account & Address -->
            <div class="dash-card">
                <div class="dash-card-header">
                    <div class="dash-card-icon"><i class="fa-solid fa-location-dot"></i></div>
                    <div class="dash-card-title">Account & Address</div>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Username</span>
                    <span class="dash-info-value">${student.LCUsername != null ? student.LCUsername : '—'}</span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Address</span>
                    <span class="dash-info-value">${student.BIAddress != null ? student.BIAddress : '—'}</span>
                </div>
            </div>
        </div>

        <!-- ── BOOKINGS SECTION ── -->
        <div class="dash-section-title">My Bookings</div>
        <div class="dash-section-sub">Your program bookings and enrollment history</div>

        <c:choose>
            <c:when test="${not empty bookings}">
                <div class="dash-table-wrap">
                    <table class="dash-table">
                        <thead>
                            <tr>
                                <th>Program</th>
                                <th>Category</th>
                                <th>Batch</th>
                                <th>Date</th>
                                <th>Amount</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="b" items="${bookings}">
                                <tr>
                                    <td style="font-weight:700">${b.programName}</td>
                                    <td>${b.programCategory}</td>
                                    <td>${b.preferredBatch != null ? b.preferredBatch : '—'}</td>
                                    <td>${b.bookingDate != null ? b.bookingDate : '—'}</td>
                                    <td style="font-weight:700">${b.amount != null ? '₹'.concat(b.amount.toString()) : '—'}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${b.status == 'Confirmed'}">
                                                <span class="dash-status dash-status-active">Confirmed</span>
                                            </c:when>
                                            <c:when test="${b.status == 'Cancelled'}">
                                                <span class="dash-status" style="background:rgba(232,52,74,0.12);color:#e8344a">Cancelled</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="dash-status dash-status-pending">${b.status}</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:when>
            <c:otherwise>
                <div class="dash-empty">
                    <div class="dash-empty-icon">📋</div>
                    <div class="dash-empty-text">No bookings found yet. Explore our programs and enroll now!</div>
                    <a href="/creatica_theater_hub/user/ourprogram" class="dash-action-btn dash-action-primary">
                        <i class="fa-solid fa-masks-theater"></i> Browse Programs
                    </a>
                </div>
            </c:otherwise>
        </c:choose>
    </c:if>

    <!-- ===== VOLUNTEER DASHBOARD ===== -->
    <c:if test="${userType == 'Volunteer' && volunteer != null}">
        <div class="dash-cards-grid">
            <!-- Volunteer Info -->
            <div class="dash-card">
                <div class="dash-card-header">
                    <div class="dash-card-icon"><i class="fa-solid fa-user"></i></div>
                    <div class="dash-card-title">Volunteer Profile</div>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Full Name</span>
                    <span class="dash-info-value">${volunteer.volName}</span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Phone</span>
                    <span class="dash-info-value">${volunteer.volPhone != null ? volunteer.volPhone : '—'}</span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Skill</span>
                    <span class="dash-info-value">${volunteer.volSkill != null ? volunteer.volSkill : '—'}</span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Assigned Program</span>
                    <span class="dash-info-value">${volunteer.volProgram != null ? volunteer.volProgram : '—'}</span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Status</span>
                    <span class="dash-info-value">
                        <c:choose>
                            <c:when test="${volunteer.status == 'Active'}">
                                <span class="dash-status dash-status-active">Active</span>
                            </c:when>
                            <c:otherwise>
                                <span class="dash-status dash-status-pending">${volunteer.status != null ? volunteer.status : 'Pending'}</span>
                            </c:otherwise>
                        </c:choose>
                    </span>
                </div>
            </div>

            <!-- Volunteer Stats -->
            <div class="dash-card">
                <div class="dash-card-header">
                    <div class="dash-card-icon"><i class="fa-solid fa-chart-bar"></i></div>
                    <div class="dash-card-title">Volunteer Summary</div>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Role</span>
                    <span class="dash-info-value">Volunteer</span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Skill Area</span>
                    <span class="dash-info-value">${volunteer.volSkill != null ? volunteer.volSkill : '—'}</span>
                </div>
                <div class="dash-info-row">
                    <span class="dash-info-label">Program</span>
                    <span class="dash-info-value">${volunteer.volProgram != null ? volunteer.volProgram : '—'}</span>
                </div>
            </div>
        </div>
    </c:if>

    <!-- ── QUICK ACTIONS ── -->
    <div class="dash-actions">
        <a href="/creatica_theater_hub/user/ourprogram" class="dash-action-btn dash-action-primary">
            <i class="fa-solid fa-masks-theater"></i> Explore Programs
        </a>
        <a href="/creatica_theater_hub/user/contact" class="dash-action-btn dash-action-secondary">
            <i class="fa-solid fa-envelope"></i> Contact Us
        </a>
        <a href="/creatica_theater_hub/user/logout" class="dash-action-btn dash-action-danger">
            <i class="fa-solid fa-right-from-bracket"></i> Logout
        </a>
    </div>
</div>

<!-- Footer -->
<jsp:include page="../user/footer.jsp"></jsp:include>
<jsp:include page="../user/links/Userfootlink.jsp"></jsp:include>

</body>
</html>
