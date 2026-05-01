<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Report</title>
<jsp:include page="../links/headlink.jsp"></jsp:include>
</head>
<body>
    <div class="main d-flex">
        <jsp:include page="../Masterpages/sidebar.jsp"></jsp:include>
        <div class="content">
            <jsp:include page="../Masterpages/topbar.jsp"></jsp:include>
            <div class="container-fluid py-4">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h3>Student Enrollment Report</h3>
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
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Program</th>
                                        <th>Time Slot</th>
                                        <th>Start Date</th>
                                        <th>Status</th>
                                        <th>Payment</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="student" items="${students}">
                                        <tr>
                                            <td>${student.BIName}</td>
                                            <td>${student.BIEmail}</td>
                                            <td>${student.BIPhoneNo}</td>
                                            <td>${student.PDProgram}</td>
                                            <td>${student.PDTimeSlot}</td>
                                            <td>${student.PDStartdate}</td>
                                            <td>
                                                <span class="badge ${student.PDStatus == 'Active' ? 'bg-success' : 'bg-secondary'}">
                                                    ${student.PDStatus}
                                                </span>
                                            </td>
                                            <td>
                                                <span class="badge ${student.paymentstatus == 'Paid' ? 'bg-success' : 'bg-danger'}">
                                                    ${student.paymentstatus}
                                                </span>
                                            </td>
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
