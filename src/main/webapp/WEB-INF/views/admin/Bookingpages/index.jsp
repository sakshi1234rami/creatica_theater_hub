<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ page isELIgnored = "false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Bookings</title>
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
           <!-- manage bookings  -->

           <div class="Program">

            <div class="Main-content d-flex justify-content-between align-items-center mb-5">
                        <h2>Manage Bookings</h2>
            </div>

            
            <!-- Search & filter -->
            <div class="row mb-4">
                <div class="col-md-4">
                    <input type="text" class="form-control" id="searchBooking" placeholder="Search by student name or program" onkeyup="filterBookings()">
                </div>

                <div class="col-md-3">
                    <select class="form-select" id="filterStatus" onchange="filterBookings()">
                        <option value="">All Status</option>
                        <option value="Pending">Pending</option>
                        <option value="Confirmed">Confirmed</option>
                        <option value="Rejected">Rejected</option>
                    </select>
                </div>
               </div>

            <!-- Bookings Table -->

                <div class="card p-4 ">
                    <table class="table table-hover" id="bookingsTable">
                        <thead>
                            <tr>
                                <th>Student Name</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Program</th>
                                <th>Category</th>
                                <th>Batch</th>
                                <th>Fee</th>
                                <th>Payment</th>
                                <th>Date</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${bookings}" var="bk">
                         <tr>
                               <td>${bk.userName}</td>
                               <td>${bk.userEmail}</td>
                               <td>${bk.userPhone}</td>
                               <td>${bk.programName}</td>
                               <td>${bk.programCategory}</td>
                               <td>${bk.preferredBatch}</td>
                               <td>
                                   <c:choose>
                                       <c:when test="${bk.amount != null && bk.amount > 0}">
                                           &#8377; ${bk.amount}
                                       </c:when>
                                       <c:otherwise>Free</c:otherwise>
                                   </c:choose>
                               </td>
                               <td>${bk.paymentMode}</td>
                               <td>${bk.bookingDate}</td>
                               <td>
                                   <c:choose>
                                       <c:when test="${bk.status == 'Pending'}">
                                           <span class="badge bg-warning text-dark">${bk.status}</span>
                                       </c:when>
                                       <c:when test="${bk.status == 'Confirmed'}">
                                           <span class="badge bg-success">${bk.status}</span>
                                       </c:when>
                                       <c:when test="${bk.status == 'Rejected'}">
                                           <span class="badge bg-danger">${bk.status}</span>
                                       </c:when>
                                       <c:otherwise>
                                           <span class="badge bg-secondary">${bk.status}</span>
                                       </c:otherwise>
                                   </c:choose>
                               </td>
                               <td>
                                   <!-- View button -->
                                   <button class="btn btn-sm btn-info btnViewBooking" 
                                       data-name="${bk.userName}"
                                       data-email="${bk.userEmail}"
                                       data-phone="${bk.userPhone}"
                                       data-program="${bk.programName}"
                                       data-category="${bk.programCategory}"
                                       data-batch="${bk.preferredBatch}"
                                       data-fee="${bk.amount}"
                                       data-payment="${bk.paymentMode}"
                                       data-date="${bk.bookingDate}"
                                       data-status="${bk.status}"
                                       data-notes="${bk.notes}"
                                       data-bs-target="#viewBookingModal" data-bs-toggle="modal">View</button>
                                       
                                   <!-- Approve button -->
                                   <c:if test="${bk.status == 'Pending'}">
                                       <form action="/creatica_theater_hub/admin/booking/approve" method="post" style="display:inline;">
                                           <input type="hidden" name="bookingId" value="${bk.id}">
                                           <button type="submit" class="btn btn-sm btn-success">Approve</button>
                                       </form>
                                       <form action="/creatica_theater_hub/admin/booking/reject" method="post" style="display:inline;">
                                           <input type="hidden" name="bookingId" value="${bk.id}">
                                           <button type="submit" class="btn btn-sm btn-warning">Reject</button>
                                       </form>
                                   </c:if>
                                   
                                   <!-- Delete button -->
                                   <button class="btn btn-sm btn-danger btnDeleteBooking"
                                       data-delid="${bk.id}"
                                       data-bs-target="#DeleteBookingModal" data-bs-toggle="modal">Delete</button>
                                </td>
                            </tr>
                   
                        </c:forEach>
                           
                        </tbody>
                    </table>
                    
                    <c:if test="${empty bookings}">
                        <div class="text-center p-4">
                            <h5 class="text-muted">No bookings found</h5>
                            <p class="text-muted">Bookings will appear here when students apply for programs.</p>
                        </div>
                    </c:if>
                </div>
</div>


    <!-- VIEW BOOKING MODAL -->
<div class="modal fade" id="viewBookingModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-info text-white">
                <h5 class="modal-title">Booking Details</h5>
                <button class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <h6>Student Name:</h6>
                        <p id="vbName"></p>
                    </div>
                    <div class="col-md-6">
                        <h6>Email:</h6>
                        <p id="vbEmail"></p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <h6>Phone:</h6>
                        <p id="vbPhone"></p>
                    </div>
                    <div class="col-md-6">
                        <h6>Program:</h6>
                        <p id="vbProgram"></p>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-4">
                        <h6>Category:</h6>
                        <p id="vbCategory"></p>
                    </div>
                    <div class="col-md-4">
                        <h6>Preferred Batch:</h6>
                        <p id="vbBatch"></p>
                    </div>
                    <div class="col-md-4">
                        <h6>Fee:</h6>
                        <p id="vbFee"></p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <h6>Payment Mode:</h6>
                        <p id="vbPayment"></p>
                    </div>
                    <div class="col-md-4">
                        <h6>Booking Date:</h6>
                        <p id="vbDate"></p>
                    </div>
                    <div class="col-md-4">
                        <h6>Status:</h6>
                        <span class="badge bg-success" id="vbStatus"></span>
                    </div>
                </div>
                <hr>
                <h6>Notes:</h6>
                <p id="vbNotes"></p>
            </div>
        </div>
    </div>
</div>

<!---------------------------DELETE BOOKING MODAL------------------------------->
        <div class="modal" id="DeleteBookingModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3>Delete Booking</h3>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" ></button>
                    </div>
                    <div class="modal-body">
                        <h5>Are you sure you want to delete this booking?</h5> <br>
                        <div class="mt-3 text-end">
                        <form action="/creatica_theater_hub/admin/booking/delete" method="post">
                        <input type="hidden" name="bookingId" id="delBookingId">
                         <button type="submit" class="btn btn-success">Yes</button>
                        <button type="button" class="btn btn-warning" data-bs-dismiss="modal">No</button>
                        </form>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
                    
                </div>
            </div>
       

       

     <jsp:include page="../links/footlink.jsp"></jsp:include>
     
    <script>
    // Delete modal
    $('.btnDeleteBooking').click(function(){
		var id = $(this).data("delid");
		$("#delBookingId").val(id);
	});

    // View modal
    $(".btnViewBooking").click(function(){
        $("#vbName").text($(this).data("name"));
        $("#vbEmail").text($(this).data("email"));
        $("#vbPhone").text($(this).data("phone"));
        $("#vbProgram").text($(this).data("program"));
        $("#vbCategory").text($(this).data("category"));
        $("#vbBatch").text($(this).data("batch"));
        $("#vbFee").text($(this).data("fee"));
        $("#vbPayment").text($(this).data("payment"));
        $("#vbDate").text($(this).data("date"));
        $("#vbStatus").text($(this).data("status"));
        $("#vbNotes").text($(this).data("notes") || "No notes");
    });

    // Search & filter
    function filterBookings() {
        var search = document.getElementById('searchBooking').value.toLowerCase();
        var status = document.getElementById('filterStatus').value;
        var rows = document.querySelectorAll('#bookingsTable tbody tr');
        
        rows.forEach(function(row) {
            var text = row.textContent.toLowerCase();
            var rowStatus = row.querySelector('.badge') ? row.querySelector('.badge').textContent.trim() : '';
            var matchSearch = search === '' || text.includes(search);
            var matchStatus = status === '' || rowStatus === status;
            row.style.display = (matchSearch && matchStatus) ? '' : 'none';
        });
    }
    </script>
</body>
</html>
