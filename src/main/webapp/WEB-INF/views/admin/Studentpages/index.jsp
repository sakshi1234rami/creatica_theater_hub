<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ page isELIgnored = "false" %>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student</title>
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
      
            <!-- Stuent heading  -->

           <div class="Student">

            <div class="Main-content d-flex justify-content-between align-items-center mb-5">
                        <h2>Students</h2>
                        <button class="btn btn-warning" data-bs-target="#student" data-bs-toggle="modal"> + Add Student</button>
            </div>

             <!-- Search & filter -->

                 <div class="row mb-4">
                <div class="col-md-4">
                    <input type="text" class="form-control" placeholder="Search by name or email">
                </div>

                <div class="col-md-3">
                    <select class="form-select">
                        <option value="">All Program</option>
                        <option value="dance">Dance</option>
                        <option value="drama">Drama</option>
                        <option value="acting">Acting</option>
                        <option value="music">Music</option>
                        <option value="pd">Personality Development</option>
                        <option value="other">Other</option>
                    </select>
                </div>

                <div class="col-md-3">
                    <select class="form-select">
                        <option value="">All Status</option>
                        <option value="pending">Pending</option>
                        <option value="approved">Approved</option>
                        <option value="completed">Completed</option>
                        <option value="rejected">Rejected</option>
                    </select>
                </div>
               </div>


               
            <!-- Student Table -->

                <div class="card p-4 ">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Program</th>
                                <th>Status</th>
                                <th>Joined</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                       			<c:forEach items="${student }" var="s">
                            <tr>
                                <td>${s.BIName}</td>
                                <td>${s.BIEmail }</td>
                                <td>${s.PDProgram }</td>
                                <td>${s.PDStatus }</td>
                                <td>${s.PDStartdate }</td>
                                <td>
                                
                                  <!-- View button  --> 
                                
                                    <button  class="btn  btn-sm btn-info btnView"
                                    
                                     data-id="${s.id }"
                                    data-name="${s.BIName }"
                                    data-email="${s.BIEmail }"
                                    data-phone="${s.BIPhoneNo }"
                                    data-gender="${s.BIGender }"
                                    data-dob="${s.BIDOB }"
                                    data-image="${s.BIImage }"
                                    data-address="${s.BIAddress }"
                                    data-program="${s.PDProgram }"
                                    data-time="${s.PDTimeSlot }"
                                    data-sdate="${s.PDStartdate }"
                                    data-status="${s.PDStatus }"
                                    data-paystatus="${s.paymentstatus }"
                                    data-amount="${s.amount }"
                                    data-paymode="${s.paymentMode }"
                                    
                                    
                                    
                                     data-bs-target="#viewModal" data-bs-toggle="modal">view</button>
                                   
                                     <!-- Edit button  --> 
                                     
                                    <button class="btn btn-sm btn-warning btnStdEdit"
                                    
                                    data-id="${s.id }"
                                    data-name="${s.BIName }"
                                    data-email="${s.BIEmail }"
                                    data-phone="${s.BIPhoneNo }"
                                    data-gender="${s.BIGender }"
                                    data-dob="${s.BIDOB }"
                                    data-image="${s.BIImage }"
                                    data-address="${s.BIAddress }"
                                    data-program="${s.PDProgram }"
                                    data-time="${s.PDTimeSlot }"
                                    data-sdate="${s.PDStartdate }"
                                    data-status="${s.PDStatus }"
                                    data-paystatus="${s.paymentstatus }"
                                    data-amount="${s.amount }"
                                    data-paymode="${s.paymentMode }"
                                    
                                     data-bs-target="#editStudentModal" data-bs-toggle="modal">Edit</button>
                                     
                                       <!-- Delete button  --> 
                                     
                                    <button class="btn btn-sm btn-danger btnDelete" 
                                    	
                                    	data-delid="${prg.id }"
                                    data-bs-target="#DeleteModal" data-bs-toggle="modal">Delete</button>
                                </td>
                            </tr>
                            </c:forEach> 
                            
                        </tbody>
                    </table>
                </div>
             </div>



          
           

               <!-- ADD STUDENT MODAL -->

             <div class="modal" id="student">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <!-- card header -->
                        <div class="modal-header">
                            <h5>Add New Student</h5>
                            <button type="button" class=" btn btn-close" data-bs-dismiss="modal"></button>
                        </div>
                        <!-- modal-body -->
                        <div class="modal-body">
                            <!-- form -->
               <!-- ================= BASIC INFORMATION ================= -->
               
                            <form action="/creatica_theater_hub/admin/studentPost" method="post" enctype="multipart/form-data">
                                <h6 class="mb-3">Basic Information</h6>

                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="form-label">Full Name</label>
                                        <input type="text" name="BIName" class="form-control" placeholder="Enter your name" required>
                                    </div>

                                        <div class="col-md-6">
                                        <label class="form-label">Email Address</label>
                                        <input type="email" name="BIEmail" class="form-control" placeholder="Enter your email" required>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="form-label">Mobile Number</label>
                                        <input type="text" name="BIPhoneNo" class="form-control" placeholder="Enter your phone number" required>
                                    </div>

                                       <div class=" col-md-6">
                <label class="form-label  mt-2">Gender</label><br>
                <div class="form-check form-check-inline">
                    <label class="form-check-label">
                        <input class="form-check-input" type="radio" name="BIGender" value="male">Male
                    </label>
                </div>
                <div class="form-check form-check-inline">
                    <label class="form-check-label">
                        <input class="form-check-input" type="radio" name="BIGender" value="female">Female
                    </label>
                </div>
                <hr class="m-0">
            </div>
                                </div>

                                <div class="row mt-2">
                                    <div class="col-md-6">
                                    <label class="form-label">Date of Birth </label>
                                    <input type="date" name="BIDOB" class="form-control">
                                    </div>
                                    <div class="col-md-6 mt-1">
                                        <label class="form-label">Profile Photo</label>
                                        <input type="file" name="photo" class="form-control">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <label class="form-label">Address</label>
                                        <textarea class="form-control" name="BIAddress" placeholder="Enter Adrress"></textarea>
                                    </div>
                                </div>
<hr>

                <!-- ================= PROGRAM DETAILS ================= -->

                                <h6 class="mb-3">Program Details</h6>
                                <div class="row">
                                    <div class="col-md-6">
                                              <label class="form-label">Select Program</label>
                                                <select class="form-select" name="PDProgram">
                                                    <option>Select Program</option>
                                                    <option value="dance">Dance</option>
                                                    <option value="drama">Drama</option>
                                                    <option value="acting">Acting</option>
                                                    <option value="music">Music</option>
                                                    <option value="pd">Personality Development</option>
                                                    <option value="other">Other</option>
                                                </select>
      
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Batch/Time Slot</label>
                                        <input type="text" name="PDTimeSlot" class="form-control" placeholder="5pm-7pm">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="form-label">Start Date</label>
                                        <input type="date" name="PDStartdate" class="form-control">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Student Status</label>
                                        <select class="form-select" name="PDStatus">
                                                    <option value="pending">Pending</option>
                                                    <option value="approv">Approved</option>
                                                    <option value="active">Active</option>
                                                    <option value="rejected">Rejected</option>
                                        </select>
                                    </div>
                                </div>
<hr>

          <!-- ================= LOGIN DETAILS ================= -->
         <h6 class="mb-3">Login Credentials</h6>

         <div class="row">
            <div class="col-md-6">
                <label class="form-label">Username</label>
                <input type="text" name="LCUsername" class="form-control" placeholder="enter username">
            </div>
            <div class="col-md-6">
                <label class="form-label">Password</label>
                <input type="password" name="LCPassword" class="form-control" placeholder="create a password">
            </div>
         </div>
<hr>
         <!-- ================= PAYMENT DETAILS ================= -->

         <h6 class="mb-3">Payment Details (If Applicable)</h6>

         <div class="row">
            <div class="col-md-4">
                <label class="form-label">Payment Status</label>
                <select class="form-select" name="Paymentstatus">
                    <option value="paid">Paid</option>
                    <option value="unpaid">Unpaid</option>
                </select>
            </div>
            <div class="col-md-4">
                 <label class="form-label">Amount</label>
                 <input type="number" name="Amount" class="form-control" placeholder="Enter amount">
            </div>

            <div class="col-md-4">
                <label class="form-label">Payment Mode</label>
        <select class="form-select" name="PaymentMode">
            <option value="upi">UPI</option>
            <option value="cash">Cash</option>
            <option value="card">Card</option>
            <option value="bankTransfer">Bank Transfer</option>
        </select>
            </div>
         </div>
<hr>
         <!-- ================= SUBMIT BUTTON ================= -->
<div class="text-end">
    <button type="reset" class="btn btn-secondary">Reset</button>
    <button type="submit" class="btn btn-warning">Save Student</button>
</div>

        </form>
                        </div>
                    </div>
                </div>
            </div>



   <!-- View button MODAL POP -->

              <div class="modal" id="viewModal">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <!-- modal header -->
                            <div class="modal-header">
                                <h5>Student Profile</h5>
                                <button class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                            <!-- modal body -->
                                <div class="modal-body">

                                    <!-- profile  left -->

                                    <div class="row align-items-center">
                                        <div class="col-md-4 text-center mt-5">
                                            <img src="../images/user.png" alt="">
                                            <h4 id="viewName"></h4>
                                            <span class="badge bg-success" id="viewStatus"></span>
                                            <p>Joined: <span id="viewDate"></span></p>
                                        </div>
                                    

                                    <!-- profile  left -->

                                    <div class="col-md-8">
                                        <!-- card 1 -->
                                        <div class="card p-3 mb-3">
                                        <h6>Basic Information</h6>
                                        <div class="row">
                                            <div class="col-md-6"><p><strong>Email: </strong> <span id="viewEamil"></span></p></div>
                                            <div class="col-md-6"><p><strong>Mobile: </strong> <span  id="viewMobile"></span></p></div>
                                            <div class="col-md-6"><p><strong>Gender: </strong><span  id="viewGender"></span></p></div>
                                            <div class="col-md-6"><p><strong>Date of Birth: </strong> <span  id="viewDOB"></span></p></div>
                                           <div class="col-md-12"><p><strong>Address: </strong> <span  id="viewAddress"></span></p></div>
                                        </div>
                                    </div>

                                    <!-- card 2 -->
                                     <div class="card p-3 mb-3">
                                        <h6>Program Details</h6>
                                        <p><strong>Program: </strong><span  id="viewProgram"></span></p>
                                        
                                    </div>

                                    <!-- card 3 -->
                                

                                     <!-- card 4 -->
                                      <div class="card p-3 mb-3">
                                        <h6>Payment Details</h6>
                                        <p><strong>Payment Status: </strong> <span  id="viewPaystatus"></span></p>
                                        <p><strong>Transaction id: </strong> <span  id="viewPaymode"></span></p>
                                      </div>

                                    </div>
                                    </div>
                                </div>
                    </div>
                </div>
             </div>



            <!-- ================= EDIT STUDENT MODAL ================= -->
<div class="modal fade" id="editStudentModal">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">

            <!-- Header -->
            <div class="modal-header bg-warning">
                <h5 class="modal-title">Edit Student</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <!-- Body -->
            <div class="modal-body">
                 <form action="/creatica_theater_hub/admin/student/edit" method="post" enctype="multipart/form-data">
						<input type="hidden" id="sId" name="sId">
                    <!-- BASIC INFORMATION -->
                    <h6 class="mb-3">Basic Information</h6>

                    <div class="row">
                        <div class="col-md-6">
                            <label class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="edtStName" name="BIName">
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Email</label>
                            <input type="email" class="form-control" id="edtStEmail" name="BIEmail" >
                        </div>
                    </div>

                    <div class="row mt-2">
                        <div class="col-md-6">
                            <label class="form-label">Mobile</label>
                            <input type="text" class="form-control" id="edtStPhone" name="BIPhoneNo">
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Gender</label><br>
                            <input type="radio" name="BIGender" value="female"> Female
							<input type="radio" name="BIGender" value="male" class="ms-3 "> Male
                        </div>
                    </div>

                    <div class="row mt-2">
                        <div class="col-md-6">
                            <label class="form-label">Date of Birth</label>
                            <input type="date" class="form-control" id="edtStdob" name="BIDOB">
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Update Profile Photo</label>
                            <input type="file" class="form-control" id="edtStphoto" name="photo">
                        </div>
                    </div>

                    <div class="mt-2">
                        <label class="form-label">Address</label>
                        <textarea class="form-control" id="edtStAddress" name="BIAddress"></textarea>
                    </div>

                    <hr>

                    <!-- PROGRAM DETAILS -->
                    <h6 class="mb-3">Program Details</h6>

                    <div class="row">
                        <div class="col-md-6">
                            <label class="form-label">Program</label>
                            <select class="form-select" id="edtStCat" name="PDProgram">
                                <option value="dance">Dance</option>
              					<option value="drama">Drama</option>
              					<option value="acting">Acting</option>
              					<option value="music">Music</option>
              					<option value="pd">Personality Development</option>
                                <option value="other">Other</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Batch</label>
                            <input type="text" class="form-control" id="edtStBatch" value="5pm - 7pm" name="PDTimeSlot">
                        </div>
                    </div>

                    <div class="row mt-2">
                        <div class="col-md-6">
                            <label class="form-label">Status</label>
                            <select class="form-select" id="edtStStatus" name="PDStatus">
                                 <option value="pending">Pending</option>
                                 <option value="approv">Approved</option>
                                 <option value="active">Active</option>
                                 <option value="rejected">Rejected</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Start Date</label>
                            <input type="date" class="form-control" id="edtStDate" name="PDStartdate">
                        </div>
                    </div>

                    <hr>

                    

                    <!-- PAYMENT DETAILS -->
                    <h6 class="mb-3">Payment Details</h6>

                    <div class="row">
                        <div class="col-md-4">
                            <label class="form-label">Payment Status</label>
                            <select class="form-select" id="edtStPayStatus" name="Paymentstatus">
                                <option>Free Program</option>
                                <option>Paid</option>
                                <option>Unpaid</option>
                            </select>
                        </div>

                        <div class="col-md-4">
                            <label class="form-label">Amount</label>
                            <input type="number" class="form-control" id="edtStAmount" name="Amount" >
                        </div>

                        <div class="col-md-4">
                            <label class="form-label">Payment Mode</label>
                            <select class="form-select" id="edtStPaymode" name="PaymentMode">
                                 <option value="upi">UPI</option>
            					 <option value="cash">Cash</option>
           						 <option value="card">Card</option>
                                 <option value="bankTransfer">Bank Transfer</option>
                            </select>
                        </div>
                    </div>

                    <hr>

                    <!-- BUTTONS -->
                    <div class="text-end">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-warning">Update Student</button>
                    </div>

                </form>
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
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
                    <div class="modal-body">
                        <h5>Are you sure you want to Delete ?</h5> <br>
                        <div class="mt-3 text-end">
                        <form action="/creatica_theater_hub/admin/student/delete" method="post">
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
		$("#delid").val(id);
	});

    </script>
	 
	<script>
	$(".btnStdEdit").click(function(){
				
				var id = $(this).data("id");
				var name =$(this).data("name");
				var email =$(this).data("email");
				var phone =$(this).data("phone");
				var gender=$(this).data("gender");
				var dob =$(this).data("dob");
				//var image =$(this).data("image");
				var address =$(this).data("address");
				var program =$(this).data("program");
				var time =$(this).data("time");
				var sdate =$(this).data("sdate");
				var status =$(this).data("status");
				var paystatus =$(this).data("paystatus");
				var amount =$(this).data("amount");
				var paymode =$(this).data("paymode");
			

			    $("#sId").val(id);  // FIXED

			    $("#edtStName").val($(this).data("name"));
			    $("#edtStEmail").val($(this).data("email"));
			    $("#edtStPhone").val($(this).data("phone"));
			    $("#edtStdob").val($(this).data("dob"));
			    $("#edtStAddress").val($(this).data("address"));
			    $("#edtStCat").val($(this).data("program"));
			    $("#edtStBatch").val($(this).data("time"));
			    $("#edtStDate").val($(this).data("sdate"));
			    $("#edtStStatus").val($(this).data("status"));
			    $("#edtStPayStatus").val($(this).data("paystatus"));
			    $("#edtStAmount").val($(this).data("amount"));
			    $("#edtStPaymode").val($(this).data("paymode"));
			});
	
	$(".btnView").click(function(){
		
		var id = $(this).data("id");
		var name =$(this).data("name");
		var email =$(this).data("email");
		var phone =$(this).data("phone");
		var gender=$(this).data("gender");
		var dob =$(this).data("dob");
		//var image =$(this).data("image");
		var address =$(this).data("address");
		var program =$(this).data("program");
		var time =$(this).data("time");
		var sdate =$(this).data("sdate");
		var status =$(this).data("status");
		var paystatus =$(this).data("paystatus");
		var amount =$(this).data("amount");
		var paymode =$(this).data("paymode");
	
		$("#viewName").text(name);
		$("#viewEamil").text(email);
		$("#viewMobile").text(phone);
		$("#viewGender").text(gender);
		$("#viewDOB").text(dob);
		$("#viewAddress").text(address);
		$("#viewProgram").text(program);
		$("#viewStatus").text(status);
		$("#viewPaystatus").text(paystatus);
		$("#viewPaymode").text(paymode);
		$("#viewDate").text(sdate);
		
		
	});
	
	
	</script>
	

</body>
</html>