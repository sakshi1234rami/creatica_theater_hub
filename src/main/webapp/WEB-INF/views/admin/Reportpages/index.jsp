<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reports & Analytics | Creatica Admin</title>
 <jsp:include page="../links/headlink.jsp"></jsp:include>
 <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
 <style>
    :root {
        --primary-gradient: linear-gradient(135deg, #6366f1 0%, #a855f7 100%);
        --success-gradient: linear-gradient(135deg, #22c55e 0%, #10b981 100%);
        --info-gradient: linear-gradient(135deg, #3b82f6 0%, #06b6d4 100%);
        --warning-gradient: linear-gradient(135deg, #f59e0b 0%, #ef4444 100%);
    }

    .Report h3 {
        font-weight: 700;
        color: #1e293b;
    }

    .card {
        border: none;
        border-radius: 16px;
        box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
        transition: transform 0.2s ease, box-shadow 0.2s ease;
    }

    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
    }

    .stat-card {
        color: white;
        overflow: hidden;
        position: relative;
    }

    .stat-card::after {
        content: "";
        position: absolute;
        top: -20%;
        right: -10%;
        width: 100px;
        height: 100px;
        background: rgba(255, 255, 255, 0.1);
        border-radius: 50%;
    }

    .bg-primary-grad { background: var(--primary-gradient); }
    .bg-success-grad { background: var(--success-gradient); }
    .bg-info-grad { background: var(--info-gradient); }
    .bg-warning-grad { background: var(--warning-gradient); }

    .stat-card h3 {
        font-size: 2rem;
        font-weight: 800;
        margin: 0;
    }

    .stat-card h6 {
        opacity: 0.9;
        font-weight: 500;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    .chart-container {
        padding: 20px;
    }

    .table thead {
        background-color: #f8fafc;
    }

    .table th {
        font-weight: 600;
        color: #64748b;
        text-transform: uppercase;
        font-size: 0.75rem;
        letter-spacing: 0.05em;
    }

    .btn-premium {
        background: var(--primary-gradient);
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 10px;
        font-weight: 600;
    }
    
    .btn-premium:hover {
        opacity: 0.9;
        color: white;
    }
 </style>
</head>
<body>
	
	 <div class="main d-flex">
        <!-- sidebar -->
        <jsp:include page="../Masterpages/sidebar.jsp"></jsp:include>
        
        <div class="content ">
            <!-- header -->
		    <jsp:include page="../Masterpages/topbar.jsp"></jsp:include>
	
        <div class="container-fluid py-4">
           <div class="Report">
                <!-- ================= HEADER ================= -->
              <div class="d-flex justify-content-between align-items-center mb-4">
                <div>
                    <h3>Reports & Analytics</h3>
                    <p class="text-muted">Track your performance and growth</p>
                </div>
                <div class="d-flex gap-2">
                    <a href="<c:url value="/admin/report/donation"></c:url>" class="btn btn-outline-primary rounded-pill">Donation Logs</a>
                    <a href="<c:url value="/admin/report/student"></c:url>" class="btn btn-outline-primary rounded-pill">Enrollment Logs</a>
                    <button class="btn btn-premium shadow-sm" onclick="window.print()">
                        <i class="fas fa-download me-2"></i>Export Report
                    </button>
                </div>
              </div>
           </div>

<!-- ================= SUMMARY CARDS ================= -->
<div class="row mb-4">
    <div class="col-md-3">
        <div class="card p-3 stat-card bg-primary-grad">
            <h6>Total Students</h6>
            <h3>${totalStudents}</h3>
        </div>
    </div>

    <div class="col-md-3">
        <div class="card p-3 stat-card bg-success-grad">
            <h6>Total Donations</h6>
            <h3>₹ ${totalDonations}</h3>
        </div>
    </div>

    <div class="col-md-3">
        <div class="card p-3 stat-card bg-info-grad">
            <h6>Total Volunteers</h6>
            <h3>${totalVolunteers}</h3>
        </div>
    </div>

    <div class="col-md-3">
        <div class="card p-3 stat-card bg-warning-grad">
            <h6>Growth Rate</h6>
            <h3>+12.5%</h3>
        </div>
    </div>
</div>

<!-- ================= CHARTS ================= -->
<div class="row mb-4">
    <div class="col-md-7">
        <div class="card chart-container">
            <h5 class="mb-4">Monthly Donations (Revenue)</h5>
            <canvas id="donationChart" height="250"></canvas>
        </div>
    </div>

    <div class="col-md-5">
        <div class="card chart-container">
            <h5 class="mb-4">Program Enrollments</h5>
            <canvas id="enrollmentChart" height="250"></canvas>
        </div>
    </div>
</div>

    <!-- ================= DETAILED REPORT TABLE ================= -->
<div class="card p-4">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h5 class="m-0">Recent Transactions</h5>
        <a href="<c:url value="/admin/report/donation"></c:url>" class="btn btn-sm btn-link text-decoration-none">View All</a>
    </div>

    <div class="table-responsive">
        <table class="table table-hover align-middle">
            <thead>
                <tr>
                    <th>Donor Name</th>
                    <th>Email</th>
                    <th>Amount</th>
                    <th>Date</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${recentDonations}" var="donation">
                <tr>
                    <td>
                        <div class="d-flex align-items-center">
                            <div class="rounded-circle bg-light p-2 me-3">
                                <i class="fas fa-user text-primary"></i>
                            </div>
                            <span class="fw-bold">${donation.donationName}</span>
                        </div>
                    </td>
                    <td>${donation.donationEmail}</td>
                    <td><span class="fw-bold text-success">₹ ${donation.amount}</span></td>
                    <td>${donation.date}</td>
                    <td><span class="badge bg-success-soft text-success p-2 px-3 rounded-pill">${donation.paymentStatus}</span></td>
                </tr>
                </c:forEach>
                <c:if test="${empty recentDonations}">
                    <tr>
                        <td colspan="5" class="text-center py-4 text-muted">No recent transactions found</td>
                    </tr>
                </c:if>
            </tbody>
        </table>
    </div>
</div>

        </div>
        </div>
    </div>

<jsp:include page="../links/footlink.jsp"></jsp:include>

<script>
    // Chart.js Configuration
    document.addEventListener('DOMContentLoaded', function() {
        // Donation Chart
        const donationCtx = document.getElementById('donationChart').getContext('2d');
        const donationGradient = donationCtx.createLinearGradient(0, 0, 0, 400);
        donationGradient.addColorStop(0, 'rgba(99, 102, 241, 0.5)');
        donationGradient.addColorStop(1, 'rgba(99, 102, 241, 0)');

        new Chart(donationCtx, {
            type: 'line',
            data: {
                labels: [<c:forEach items="${monthlyDonations}" var="entry">'${entry.key}',</c:forEach>],
                datasets: [{
                    label: 'Donation Amount (₹)',
                    data: [<c:forEach items="${monthlyDonations}" var="entry">${entry.value},</c:forEach>],
                    borderColor: '#6366f1',
                    backgroundColor: donationGradient,
                    borderWidth: 3,
                    fill: true,
                    tension: 0.4,
                    pointBackgroundColor: '#6366f1',
                    pointRadius: 4,
                    pointHoverRadius: 6
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: { display: false }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        grid: { borderDash: [5, 5], color: '#e2e8f0' }
                    },
                    x: {
                        grid: { display: false }
                    }
                }
            }
        });

        // Enrollment Chart
        const enrollmentCtx = document.getElementById('enrollmentChart').getContext('2d');
        new Chart(enrollmentCtx, {
            type: 'bar',
            data: {
                labels: [<c:forEach items="${monthlyEnrollments}" var="entry">'${entry.key}',</c:forEach>],
                datasets: [{
                    label: 'New Students',
                    data: [<c:forEach items="${monthlyEnrollments}" var="entry">${entry.value},</c:forEach>],
                    backgroundColor: '#a855f7',
                    borderRadius: 8,
                    hoverBackgroundColor: '#8b5cf6'
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: { display: false }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        ticks: { stepSize: 1 },
                        grid: { borderDash: [5, 5], color: '#e2e8f0' }
                    },
                    x: {
                        grid: { display: false }
                    }
                }
            }
        });
    });
</script>
</body>
</html>