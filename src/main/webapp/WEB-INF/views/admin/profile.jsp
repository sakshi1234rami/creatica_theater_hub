<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
 <link rel="stylesheet" href='<c:url value="/Resources/CSS/bootstrap.min.css"></c:url>'>
 <link rel="stylesheet" href='<c:url value="/Resources/CSS/style.css"></c:url>'>
 <link rel="stylesheet" href='<c:url value="/Resources/CSS/all.css"></c:url>'>
</head>
<body>

 <div class="main d-flex">
        <!-- sidebar -->
        
        <jsp:include page="./Masterpages/sidebar.jsp"></jsp:include>
        
       <!-- sidebar end -->

        <!-- main content   -->
        
        <div class="content ">
            <!-- header -->
            
		<jsp:include page="./Masterpages/topbar.jsp"></jsp:include>
	
      <!-- header end -->
      	


              <div class="card mb-4 m-5">
                <div class="card-body profile_header d-flex align-items-center">
                
                               
                         <img src="<c:url value="/Resources/Images/user.png"></c:url>"  alt="">
                                
                                            <div class="flex-grow-1 py-lg-1">
                                                      <h6>Name: Admin name</h6>
                                                      <p class="mb-1"><strong>Role:</strong>System Administrator</p>
                                                      <p class="mb-0"><strong>Email:</strong>admin@ngo.org</p>
                                            </div>
                                                     
                            <button class="btn btn-outline-secondary">Edit profile</button>
                </div>
              </div>  
                
              <!-- Profile Information Card -->
               
              <div class="card mb-3 m-5">
                    <div class="card-header">
                        <h5>Personal Details</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <label for="name" class="form-control"><strong>Full Name</strong></label>
                                <p>Sakshi Rami</p>
                            </div>
                            <div class="col-md-6">
                                <label for="email" class="form-control"><strong>Email Address</strong></label>
                                <p>admin@gmail.com</p>
                            </div>
                            <div class="col-md-6">
                                <label for="email" class="form-control"><strong>Mobile Number</strong></label>
                                <p>+91 xxxxxxxxx</p>
                            </div>
                            <div class="col-md-6">
                                <label for="email" class="form-control"><strong>Role</strong></label>
                                <p>Admin</p>
                            </div>
                            <div class="col-md-6">
                                <label for="email" class="form-control"><strong>Joined on</strong></label>
                                <p>01-Jan-2025</p>
                            </div>
                        </div>
                    </div>
              </div>
                
           <!-- Account & Security Section -->
            
           <div class="card mb-4 m-5">
            <div class="card-header">
                <h5>Account & Security</h5>
            </div>
            <div class="card-body">
                <h6>Login Details</h6>
                <div class="row">
                    <div class="col-md-6">
                            <label class="form-label"><strong>Username</strong></label>
                            <p>admin</p>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label"><strong>Password</strong></label>
                            <p class="password-field">*******</p>
                        </div>
                        <div class="mb-3">
                            <button class="btn btn-secondary me-3">Change Password</button>
                            <button class="btn btn-outline-secondary">Enable Two Step Verification </button>
                        </div>
                        <h6>Recent Login Activity</h6>
                        <table class="table table-hover ">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Time</th>
                                    <th>Device</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1-Feb-2026</td>
                                    <td>10:30 Am</td>
                                    <td>Desktop</td>
                                </tr>
                                <tr>
                                    <td>12-Jan-2026</td>
                                    <td>1:30 pm</td>
                                    <td>Moblie</td>
                                </tr>
                            </tbody>
                        </table>
                </div>
            </div>
           </div>
            
            
            </div>
            </div>
     
	
	 <script src='<c:url value="/Resources/JS/bootstrap.bundle.min.js"></c:url>'></script>
</body>
</html>