<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Volunteer Report</title>
<jsp:include page="../links/headlink.jsp"></jsp:include>
</head>
<body>
    <div class="main d-flex">
        <jsp:include page="../Masterpages/sidebar.jsp"></jsp:include>
        <div class="content">
            <jsp:include page="../Masterpages/topbar.jsp"></jsp:include>
            <div class="container-fluid py-4">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h3>Volunteer Report</h3>
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
                                        <th>Volunteer Name</th>
                                        <th>Phone</th>
                                        <th>Skill</th>
                                        <th>Program</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="vol" items="${volunteers}">
                                        <tr>
                                            <td>${vol.volName}</td>
                                            <td>${vol.volPhone}</td>
                                            <td>${vol.volSkill}</td>
                                            <td>${vol.volProgram}</td>
                                            <td>
                                                <span class="badge ${vol.status == 'Active' ? 'bg-success' : 'bg-warning'}">
                                                    ${vol.status}
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
