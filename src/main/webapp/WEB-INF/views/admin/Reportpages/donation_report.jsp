<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Donation Report</title>
<jsp:include page="../links/headlink.jsp"></jsp:include>
</head>
<body>
    <div class="main d-flex">
        <jsp:include page="../Masterpages/sidebar.jsp"></jsp:include>
        <div class="content">
            <jsp:include page="../Masterpages/topbar.jsp"></jsp:include>
            <div class="container-fluid py-4">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h3>Donation Report</h3>
                    <div>
                        <button class="btn btn-success" onclick="window.print()">Print Report</button>
                        <a href="<c:url value="/admin/report"></c:url>" class="btn btn-secondary">Back</a>
                    </div>
                </div>

                <div class="card shadow-sm border-0">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover align-middle">
                                <thead class="table-dark">
                                    <tr>
                                        <th>Donor Name</th>
                                        <th>Email</th>
                                        <th>Amount</th>
                                        <th>Date</th>
                                        <th>Method</th>
                                        <th>Status</th>
                                        <th>Transaction ID</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="donation" items="${donations}">
                                        <tr>
                                            <td>${donation.donationName}</td>
                                            <td>${donation.donationEmail}</td>
                                            <td><strong>₹ ${donation.amount}</strong></td>
                                            <td>${donation.date}</td>
                                            <td>${donation.paymentMethod}</td>
                                            <td>
                                                <span class="badge ${donation.paymentStatus == 'Success' ? 'bg-success' : 'bg-warning'}">
                                                    ${donation.paymentStatus}
                                                </span>
                                            </td>
                                            <td><small class="text-muted">${donation.transactionId}</small></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="../links/footlink.jsp"></jsp:include>
</body>
</html>
