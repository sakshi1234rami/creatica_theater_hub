<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dashboard</title>
<jsp:include page="../links/headlink.jsp"></jsp:include>
</head>
<body>
	
	  <div class="main d-flex">
        <!-- sidebar -->
       <jsp:include page="../Masterpages/sidebar.jsp"></jsp:include>
        <!-- sidebar end -->
        <!-- main content   -->
        <div class="content ">
            <!-- header -->
	<jsp:include page="../Masterpages/topbar.jsp"></jsp:include>
            <!-- header end -->

            <!-- dashbord -->
            <div class="inner_content">
                <div class="row row-gap-3">
                    <div class="col-md-3">
                        <div class="card border-0 p-2 py-4 d-flex gap-3 bg-stu">
                            <div class="title d-flex gap-3 justify-content-between align-items-center">
                                <span class="flex-shrink-0 d-block">
                                    <img src="<c:url value="/Resources/Images/students.png"></c:url>" width="50" alt="">
                                </span>
                                <span>
                                    <h5 class="mb-1">Total Student</h5>
                                    <a href="#" class="text-decoration-none small bg-text">View more</a>
                                </span>
                                <div class="circle rounded-circle d-flex justify-content-center align-items-center">
                                    ${totalStudents}
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- second card -->
                    <div class="col-md-3">
                        <div class="card border-0 p-2 py-4 d-flex gap-3 bg-vol">
                            <div class="title d-flex gap-3 justify-content-between align-items-center">
                                <span class="flex-shrink-0 d-block">
                                    <img src="<c:url value="/Resources/Images/volunteer.png"></c:url>" width="50" alt="">
                                </span>
                                <span>
                                    <h5 class="mb-1">Total Volunteers</h5>
                                    <a href="#" class="text-decoration-none small bg-text">View more</a>
                                </span>
                                <div class="circle rounded-circle d-flex justify-content-center align-items-center">
                                    ${totalVolunteers}
                                </div>
                            </div>

                        </div>
                    </div>

                    <!-- third card -->

                    <div class="col-md-3">
                        <div class="card border-0 p-2 py-4 d-flex gap-3 bg-prg">
                            <div class="title d-flex gap-3 justify-content-between align-items-center">
                                <span class="flex-shrink-0 d-block">
                                    <img src="<c:url value="/Resources/Images/referral-program.png"></c:url>" width="50" alt="">
                                </span>
                                <span>
                                    <h5 class="mb-1">Active Program</h5>
                                    <a href="#" class="text-decoration-none small bg-text">View more</a>
                                </span>
                                <div class="circle rounded-circle d-flex justify-content-center align-items-center">
                                    ${totalPrograms}
                                </div>
                            </div>

                        </div>
                    </div>

                    <!-- fourth card -->

                    <div class="col-md-3">
                        <div class="card border-0 p-2 py-4 d-flex gap-3 bg-don">
                            <div class="title d-flex gap-3 justify-content-between align-items-center">
                                <span class="flex-shrink-0 d-block">
                                    <img src="<c:url value="/Resources/Images/distribution (1).png"></c:url> width="50" alt="">
                                </span>
                                <span>
                                    <h5 class="mb-1">Total Donation</h5>
                                    <a href="#" class="text-decoration-none small bg-text">View more</a>
                                </span>
                                <div class="circle rounded-circle d-flex justify-content-center align-items-center">
                                    ${totalDonations}
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <br>
                <div class="box bg-white shadow rounded-3 card mb-3">
                    <div class="card-header py-3">
                        <h5 class="card-title m-0 fw-bold">Recent Donation Section</h5>
                    </div>
                    <div class="card-body">
                    <table class="table table-hover mb-0">
                        <thead>
                            <tr>
                                <th>Donor name</th>
                                <th>Amount</th>
                                <th>Date</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="donation" items="${recentDonations}" varStatus="status">
                                <c:if test="${status.index < 5}">
                                    <tr>
                                        <td>${donation.donationName}</td>
                                        <td>${donation.amount}</td>
                                        <td>${donation.date}</td>
                                        <td>
                                            <span class="badge ${donation.paymentStatus == 'Success' ? 'bg-success' : donation.paymentStatus == 'Pending' ? 'bg-primary' : 'bg-danger'} rounded-pill">
                                                ${donation.paymentStatus}
                                            </span>
                                        </td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                        </tbody>
                    </table>
                    </div>
                </div>

                <div class="row events ">
                    <div class="col-sm-6 mt-3 ">
                        <div class="card bg-white shadow rounded-3 ">
                        <div class="card-header py-3">
                        <h5 class="card-title">Upcoming Events</h5>
                        </div>
                        <div class="card-body">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Event Name</th>
                                    <th>Date</th>
                                    <th>Loaction</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="event" items="${upcomingEvents}" varStatus="status">
                                    <c:if test="${status.index < 5}">
                                        <tr>
                                            <td>${event.eventName}</td>
                                            <td>${event.eventDate}</td>
                                            <td>${event.eventLocation}</td>
                                        </tr>
                                    </c:if>
                                </c:forEach>
                            </tbody>
                        </table>
                        </div>
                        </div>
                    </div>
                    <div class="col-sm-6  mt-3">
                        <div class="card bg-white shadow rounded-3">
                         <div class="card-header py-3">
                        <h5>Recent Activity Section</h5>
                        </div>
                        <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Title</th>
                                    <th>Name</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Recent Student Registration</td>
                                    <td>neha sharma</td>
                                </tr>
                                <tr>
                                    <td>Newly added program</td>
                                    <td>Drawing</td>
                                </tr>
                                <tr>
                                    <td>latest Donation</td>
                                    <td>hardik : 23000</td>
                                </tr>
                                <tr>
                                    <td>Upcoming event</td>
                                    <td>Muktidham - ahemdabad</td>
                                </tr>
                            </tbody>
                        </table>
                        </div>
                    </div>
                    </div>
                </div>

            </div>




        </div>

    </div>
    <jsp:include page="../links/footlink.jsp"></jsp:include>
</body>
</html>