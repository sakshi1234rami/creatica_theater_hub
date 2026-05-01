<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Donation pages</title>
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
                 <div class="Donation">

            <div class="Main-content d-flex justify-content-between align-items-center mb-5">
                        <h2>Donation</h2>
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addDonation">+ Add Donation</button>
            </div>

            <div class="row">
                <div class="col-md-3">
                    <div class="card p-3 text-center">
                        <h6>Total Donation</h6>
                        <h3><span>&#8377;</span> 2,50,000</h3>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card p-3 text-center">
                        <h6>This Month</h6>
                        <h3><span>&#8377;</span> 45,000</h3>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card p-3 text-center">
                        <h6>Total Donors</h6>
                        <h3>180</h3>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card p-3 text-center">
                        <h6>Pending Payments</h6>
                        <h3><span>&#8377;</span> 10,000</h3>
                    </div>
                </div>
            </div>


     <!-- ============= SEARCH & FILTERS=================== -->

    <div class="card p-3 mb-4 mt-4">
    <div class="row">
        <div class="col-md-4 mb-2">
            <input type="text" class="form-control" placeholder="Search by donor name">
        </div>

        <div class="col-md-3 mb-2">
            <select class="form-select">
                <option selected>All</option>
                <option>UPI</option>
                <option>Card</option>
                <option>Net Banking</option>
                <option>Cash</option>
            </select>
        </div>

        <div class="col-md-3 mb-2">
            <input type="date" class="form-control">
        </div>

    </div>
</div>


    <!-- ================= DONATIONS TABLE ================= -->
<div class="card p-3">
    <div class="table-responsive">
        <table class="table table-hover align-middle">
            <thead class="table-light">
                <tr>
                    
                    <th>Donor Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Amount</th>
                    <th>Payment Method</th>
                    <th>Date</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>
            <c:forEach items="${Donations}" var="d">
                <tr>
                   
                    <td>${d.donationName }</td>
                    <td>${d.donationEmail }</td>
                    <td>${d.phone }</td>
                    <td>${d.amount }</td>
                    <td>${d.paymentMethod }</td>
                    <td>${d.date }</td>
                    <td>${d.paymentStatus }</td>
                    <td>
                        <button class="btn btn-sm btn-info btnView" 
                        
                        data-donor="${d.donationName }"
                        data-email="${d.donationEmail }"
                        data-phone="${d.phone }"
                        data-amount="${d.amount }"
                        data-paymethod="${d.paymentMethod }"
                        data-paystatus="${d.paymentStatus }"
                        data-date="${d.date }"
                        
                        data-bs-toggle="modal" data-bs-target="#viewDonationModal">View</button>
                        
                        
                        <button class="btn btn-sm btn-danger btnDelete" 
                        
                         data-delid="${d.id }"
                        
                        data-bs-toggle="modal" data-bs-target="#DeleteModal" >Delete</button>
                    </td>
                </tr>
</c:forEach>
                
            </tbody>
        </table>
    </div>

    <!-- Pagination -->
    <nav>
        <ul class="pagination justify-content-end mt-3">
            <li class="page-item disabled"><a class="page-link">Previous</a></li>
            <li class="page-item active"><a class="page-link">1</a></li>
            <li class="page-item"><a class="page-link">2</a></li>
            <li class="page-item"><a class="page-link">Next</a></li>
        </ul>
    </nav>
</div>
    </div>


        <!-- ================= ADD DONATION MODAL ================= -->


        <div class="modal fade" id="addDonation">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header bg-primary text-white">
                            <h5 class="modal-title">Add Donation</h5>
                            <button class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                        </div>

                        <div class="modal-body">
                            <form action="/creatica_theater_hub/admin/donationPost" method="post" enctype="multipart/form-data">
                                    <div class="mb-3">
                                        <label class="form-label">Donor Name</label>
                                        <input type="text" name ="DonationName" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Email</label>
                                        <input type="email" name ="DonationEmail" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Phone</label>
                                        <input type="text" name ="phone" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Amount</label>
                                        <input type="number" name ="Amount" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Payment Method</label>
                                        <select class="form-select" name ="PaymentMethod">
                                             <option value="upi">UPI</option>
                                             <option value="card">Card</option>
                                             <option value="bank">Net Banking</option>
                                             <option value="cash">Cash</option>
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Status</label>
                                         <select class="form-select" name ="PaymentStatus">
                                             <option value="completed">Completed</option>
                                              <option value="failed">Failed</option>
                                             <option value="pending">Pending</option>
                                         </select>
                                  
                                    </div>
                                    
                                     <div class="modal-footer">
                             <div class="mb-3">
                                       <button class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                       <button class="btn btn-success">Save</button>
                                    </div>
                        </div>     
                            </form>
                        </div>
                       
                    </div>
                </div>
        </div>

<!-- ================= VIEW DONATION MODAL ================= -->


        <div class="modal fade" id="viewDonationModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header bg-info text-white">
                        <h5 class="modal-title">Donation Details</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                    </div>

                   <div class="modal-body">
                        <p><strong>Donor: </strong><span id="viewDonor"></span></p>
                        <p><strong>Email: </strong> <span id="viewEmail"></span></p>
                        <p><strong>Phone: </strong> <span id="viewPhone"></span></p>
                        <p><strong>Amount: </strong><span id="viewAmount"></span></p>
                        <p><strong>Payment Method: </strong><span id="viewPay"></span></p>
                        <p><strong>Date: </strong><span id="viewDate"></span></p>
                        <p><strong>Status: </strong> <span id="viewStatus"></span></p>
                 </div> 
                </div>
            </div>
        </div>

<!---------------------------DELETE MODAL------------------------------->
        <div class="modal" id="DeleteModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3>Delete</h3>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" ></button>
                    </div>
                    <div class="modal-body">
                        <h5>Are you sure you want to Delete ?</h5> <br>
                        <div class="mt-3 text-end">
                        <form action="/creatica_theater_hub/admin/donation/delete" method="post">
                        <input type="hidden" name="delid" id="delid">
                         <button type="submit" class="btn btn-success">Yes</button>
                        <button type="button" class="btn btn-warning">No</button>
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
    $('.btnDelete').click(function(){
		var id = $(this).data("delid");
		alert(id);
		$("#delid").val(id);
	});

    </script>
      
      <script>
      
      $(".btnView").click(function(){
    	  
    	 var donor =$(this).data("donor"); 
    	 var email =$(this).data("email"); 
    	 var phone =$(this).data("phone"); 
    	 var amount =$(this).data("amount"); 
    	 var paymethod =$(this).data("paymethod"); 
    	 var date =$(this).data("date");
    	 var paystatus =$(this).data("paystatus"); 
    	
    	 $("#viewDonor").text(donor);
    	 $("#viewEmail").text(email);
    	 $("#viewPhone").text(phone);
    	 $("#viewAmount").text(amount);
    	 $("#viewPay").text(paymethod);
    	 $("#viewDate").text(date);
    	 $("#viewStatus").text(paystatus);
      });
      
      </script>
      
</body>
</html>