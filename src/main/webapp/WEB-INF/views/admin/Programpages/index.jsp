<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ page isELIgnored = "false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Program </title>
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
           <!-- manage program  -->

           <div class="Program">

            <div class="Main-content d-flex justify-content-between align-items-center mb-5">
                        <h2>Manage Program</h2>
                        <button class="btn btn-orange" data-bs-toggle="modal" data-bs-target="#addProgramModal">+ Add New Program</button>
            </div>

            
            <!-- Search & filter -->
            <div class="row mb-4">
                <div class="col-md-4">
                    <input type="text" class="form-control" placeholder="Search by program name">
                </div>

                <div class="col-md-3">
                    <select class="form-select">
                        <option value="">All Categories</option>
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
                    	 <option value="select" selected>Select Status</option>
                         <option value="active">Active</option>
              			 <option value="inactive">Inactive</option>
              			 <option value="upcoming">Upcoming</option>
                    </select>
                </div>
               </div>

            <!-- Program Table -->

                <div class="card p-4 ">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Program Name</th>
                                <th>Category</th>
                                <th>Trainer</th>
                                <th>Duration</th>
                                <th>Fee</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${programs }" var="prg">
                        	 <tr>
                               <td>${prg.BDName }</td>
                                <td>${prg.BDCategory }</td>
                                <td>${prg.TIName }</td>
                                <td>${prg.BDMonths }</td>
                                <td>${prg.amount }</td>
                                <td>${ prg.status}</td>
                                <td>
                                
                                 <!-- View button  --> 
                                
                                    <button class="btn btn-sm btn-info btnView" 
                                    
                                    data-id = "${prg.id }"
                                    data-name="${prg.BDName }" 
                                    data-category="${prg.BDCategory }"
                                    data-description="${prg.BDDescription }"
                                    data-duration="${prg.BDMonths }"
                                    data-level="${prg.BDLevel }"
                                    data-trainer="${prg.TIName }"
                                    data-trainerImage="${prg.TIImage }"
                                    data-trainerBio="${prg.TIBio }"
                                    data-sdate="${prg.SDSatrtdate }"
                                    data-ldate="${prg.SDEnddate }"
                                    data-time="${prg.SDTimeslote }"
                                    data-day="${prg.SDDays }"
                                    data-location="${prg.location }"
                                    data-course="${prg.courseType }"
                                    data-fee="${prg.amount }"
                                    data-std="${prg.maxstudent }"
                                    data-status="${ prg.status}"
                                    
                                    data-bs-target="#viewProgramModal" data-bs-toggle="modal">View</button>
                              
                               <!-- Edit button  -->   
                                   
                                    <button class="btn btn-sm btn-warning btnEdit"
                                    data-id = "${prg.id }"
                                    data-name="${prg.BDName }" 
                                    data-category="${prg.BDCategory }"
                                    data-description="${prg.BDDescription }"
                                    data-duration="${prg.BDMonths }"
                                    data-level="${prg.BDLevel }"
                                    data-trainer="${prg.TIName }"
                                    data-trainerImage="${prg.TIImage }"
                                    data-trainerBio="${prg.TIBio }"
                                    data-sdate="${prg.SDSatrtdate }"
                                    data-ldate="${prg.SDEnddate }"
                                    data-time="${prg.SDTimeslote }"
                                    data-day="${prg.SDDays }"
                                    data-location="${prg.location }"
                                    data-course="${prg.courseType }"
                                    data-fee="${prg.amount }"
                                    data-std="${prg.maxstudent }"
                                    data-status="${ prg.status}"
                                    
                                    data-bs-target="#editProgramModal" data-bs-toggle="modal">Edit</button>
                                    
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


    <!-- ADD PROGRAM MODAL -->

    <div class="modal fade" id="addProgramModal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5>Add New Program</h5>
                    <button class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <div class="modal-body">
                
                <!-- create start -->
		<form action="/creatica_theater_hub/admin/programPost" method="post" enctype="multipart/form-data">
        
        <h6>Basic Details</h6>
        <div class="row mt-2">
            <div class="col-md-6 ">
                <input type="text" name="BDName" class="form-control" placeholder="Program Name">   
            </div>
            <div class="col-md-6">
                <select name="BDCategory"  class="form-select">
                    <option value="">Select Category</option>
                    <option value="Drama">Drama</option>
                    <option value="Dance">Dance</option>
                    <option value="Acting">Acting</option>
                    <option value="music">Music</option>
                    <option value="PD">Personality Development</option>
                     <option value="other">Other</option>
                </select>
            </div>
        </div>
                <textarea name="BDDescription"  class="form-control mt-2" placeholder="Program Description"></textarea>
            <div class="row mt-2">
                <div class="col-md-6">
                    <input type="text" name="BDMonths"  class="form-control" placeholder="Duration (3 Months)">
                </div>
                <div class="col-md-6">
                <select name="BDLevel"  class="form-select">
                    <option >Level</option>
                    <option value="Beginner">Beginner</option>
                    <option value="Intermediate">Intermediate</option>
                    <option value="Advanced">Advanced</option>
                </select>
            </div>
            </div>
<hr>
            <h6 >Trainer Information</h6>

            <div class="row mt-2">
                <div class="col-md-6">
                    <input type="text" name="TIName"  class="form-control" placeholder="Trainer-name">
                </div>
                <div class="col-md-6">
                    <input type="file" name="photo"  class="form-control">
                </div>
            </div>

            <textarea name="TIBio"  class="form-control mt-2" placeholder="Trainer-Bio"></textarea>
<hr>

            <h6>Schedule Details</h6>
            <div class="row">
                <div class="col-md-4">
                <label for="">Start Date</label>
                <input type="date" name="SDSatrtdate"  class="form-control" >
                </div>
                <div class="col-md-4">
                <label for="">End Date</label>
                <input type="date" name="SDEnddate"  class="form-control">
                </div>
                <div class="col-md-4">
                <label for="">Time Slot</label>
                <input type="text" name="SDTimeslote"  class="form-control" placeholder="(5pm - 7pm)">
                </div>
            </div>
            <input type="text" name="SDDays"  class="form-control" placeholder="Days (Wed/Fri/Sun)">
            <input type="text" name="Location"  class="form-control" placeholder="Location">

<hr>


            <h6>Fee & Capacity</h6>
            <div class="row mt-2">
                <div class="col-md-4">
                    <select name="CourseType"  class="form-select">
                    <option value="">Course Type</option>
                    <option value="Free">Free</option>
                    <option value="Paid">Paid</option>
                </select>
                </div>
                <div class="col-md-4">
                    <input type="number" name="Amount"  class="form-control" placeholder="Amount">
                </div>
                <div class="col-md-4">
                    <input type="number" name="Maxstudent"  class="form-control" placeholder="Max Student">
                </div>
            </div>

             <select name="Status"  class="form-select mt-2">
                    <option value="Active">Active</option>
                    <option value="Inactive">Inactive</option>
                    <option value="Upcoming">Upcoming</option>
                </select>

                <button type="submit" class="btn btn-orange w-100">Save Program</button>
    </form>
    
    <!-- create end -->

                </div>
            </div>
        </div>
    </div>
    
    
      <!-- VIEW PROGRAM MODAL -->
<div class="modal fade" id="viewProgramModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <div class="modal-header bg-info text-white">
                <h5 class="modal-title">Program Details</h5>
                <button class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <div class="modal-body">

                <div class="row">
                    <div class="col-md-6">
                        <h6>Program Name:</h6>
                        <p id="viewName"></p>
                    </div>

                    <div class="col-md-6">
                        <h6>Category:</h6>
                        <p id="viewCategory"></p>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <h6>Trainer:</h6>
                        <p id="viewTrainer"></p>
                    </div>

                    <div class="col-md-6">
                        <h6>Level:</h6>
                        <p id="viewlevel"></p>
                    </div>
                </div>

                <hr>

                <h6>Description:</h6>
                <p id="viewDescription"></p>

                <hr>

                <div class="row">
                    <div class="col-md-4">
                        <h6>Start Date:</h6>
                        <p id="viewSdate"></p>
                    </div>

                    <div class="col-md-4">
                        <h6>End Date:</h6>
                        <p id="viewLdate"></p>
                    </div>

                    <div class="col-md-4">
                        <h6>Time Slot:</h6>
                        <p id="viewTime"></p>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <h6>Days:</h6>
                        <p id="viewDays"></p>
                    </div>

                    <div class="col-md-6">
                        <h6>Location:</h6>
                        <p id="viewlocation"></p>
                    </div>
                </div>

                <hr>

                <div class="row">
                    <div class="col-md-4">
                        <h6>Fee:</h6>
                        <p id="viewFee"></p>
                    </div>

                    <div class="col-md-4">
                        <h6>Max Students:</h6>
                        <p id="viewStd"></p>
                    </div>

                    <div class="col-md-4">
                        <h6>Status:</h6>
                        <span class="badge bg-success" id="viewStatus"></span>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>

    <!------------------------EDIT BUTTON------------------------------>

   <div class="modal fade" id="editProgramModal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5>Add New Program</h5>
                    <button class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <div class="modal-body">

    <form action="/creatica_theater_hub/admin/program/edit" method="post" enctype="multipart/form-data">
        <input type="hidden" id="pId" name="pId">
        <h6>Basic Details</h6>
        <div class="row mt-2">
            <div class="col-md-6 ">
                <input type="text" name="BDName" class="form-control" id="edtPrName" placeholder="Program Name">   
            </div>
            <div class="col-md-6">
                <select class="form-select" name="BDCategory" id="edtPrCat">
                    <option value="">Select Category</option>
                    <option value="Drama">Drama</option>
                    <option value="Dance">Dance</option>
                    <option value="Acting">Acting</option>
                    <option value="music">Music</option>
                    <option value="PD">Personality Development</option>
                    <option value="other">Other</option>
                </select>
            </div>
        </div>
                <textarea class="form-control mt-2" name="BDDescription" placeholder="Description" id="edtPrDesc"></textarea>
            <div class="row mt-2">
                <div class="col-md-6">
                    <input type="text" class="form-control" name="BDMonths" id="edtPrDur" placeholder="Duration (3 Months)" >
                </div>
                <div class="col-md-6">
                <select class="form-select" name="BDLevel" id="edtPrLevel">
                    <option value="">Level</option>
                    <option value="Beginner">Beginner</option>
                    <option value="Intermediate">Intermediate</option>
                    <option value="Advanced">Advanced</option>
                </select>
            </div>
            </div>
<hr>
            <h6 >Trainer Information</h6>

            <div class="row mt-2">
                <div class="col-md-6">
                    <input type="text" class="form-control" name="TIName" placeholder="Traineer names" id="edtPrTrainer">
                </div>
                <div class="col-md-6">
                    <input type="file" class="form-control" name="photo" id="edtPrPhoto">
                </div>
            </div>

            <textarea class="form-control mt-2" name="TIBio" placeholder="Traineer bio" id="edtPrTrBio"></textarea>
<hr>

            <h6>Schedule Details</h6>
            <div class="row">
                <div class="col-md-4">
                <label for="">Start Date</label>
                <input type="date" class="form-control" name="SDSatrtdate" id="edtPrStDate" >
                </div>
                <div class="col-md-4">
                <label for="">End Date</label>
                <input type="date" class="form-control" name="SDEnddate" id="edtPrLsDate">
                </div>
                <div class="col-md-4">
                <label for="">Time Slot</label>
                <input type="text" class="form-control" name="SDTimeslote" id="edtPrTime" placeholder="(5pm - 7pm)" >
                </div>
            </div>
            <input type="text" class="form-control" id="edtPrDay" name="SDDays" placeholder="Days (Wed/Fri/Sun)">
            <input type="text" class="form-control" id="edtPrLoc" name="Location"  placeholder="Location">

<hr>


            <h6>Fee & Capacity</h6>
            <div class="row mt-2">
                <div class="col-md-4">
                    <select class="form-select" name="CourseType" id="edtPrCourse">
                    <option value="">Course Type</option>
                    <option value="Free">Free</option>
                    <option value="Paid">Paid</option>
                </select>
                </div>
                <div class="col-md-4">
                    <input type="number" class="form-control" name="Amount" id="edtPrAmt"  placeholder="Amount" >
                </div>
                <div class="col-md-4">
                    <input type="text" class="form-control" name="Maxstudent" id="edtPrMxStd" placeholder="Max Student">
                </div>
            </div>

             <select class="form-select mt-2" name="Status" id="edtPrStatus">
                    <option value="Active">Active</option>
                    <option value="Inactive">Inactive</option>
                    <option value="Upcoming">Upcoming</option>
                </select>

                <button type="submit" class="btn btn-orange w-100">Save Program</button>
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
                        <button type="button" class="btn-close" data-bs-dismiss="modal" ></button>
                    </div>
                    <div class="modal-body">
                        <h5>Are you sure you want to Delete ?</h5> <br>
                        <div class="mt-3 text-end">
                        <form action="/creatica_theater_hub/admin/program/delete" method="post">
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
     	$(".btnEdit").click(function(){
     		
     		var id = $(this).data("id");
     		var name =$(this).data("name");
     		var category =$(this).data("category");
     		var description =$(this).data("description");
     		var duration =$(this).data("duration");
     		var level =$(this).data("level");
     		var trainer =$(this).data("trainer");
     		//var trainerImage =$(this).data("trainerImage");
     		var trainerBio =$(this).data("trainerbio");
     		var sdate =$(this).data("sdate");
     		var ldate =$(this).data("ldate");
     		var time =$(this).data("time");
     		var day =$(this).data("day");
     		var location =$(this).data("location");
     		var course =$(this).data("course");
     		var fee =$(this).data("fee");
     		var std =$(this).data("std");
     		var status =$(this).data("status");
     		
     		$("#pId").val(id);
     		$("#edtPrName").val(name);
     		$("#edtPrCat").val(category);
     		$("#edtPrDesc").text(description);
     		$("#edtPrDur").val(duration);
     		$("#edtPrLevel").val(level);
     		$("#edtPrTrainer").val(trainer);
     		//$("#edtPrPhoto").val(trainerImage);
     		$("#edtPrTrBio").text(trainerBio);
     		$("#edtPrStDate").val(sdate);
     		$("#edtPrLsDate").val(ldate);
     		$("#edtPrTime").val(time);
     		$("#edtPrDay").val(day);
     		$("#edtPrLoc").val(location);
     		$("#edtPrCourse").val(course);
     		$("#edtPrAmt").val(fee);
     		$("#edtPrMxStd").val(std);
     		$("#edtPrStatus").val(status);
     		
     	});
     	
     	$(".btnView").click(function(){
 			
     		var id = $(this).data("id");
     		var name =$(this).data("name");
     		var category =$(this).data("category");
     		var description =$(this).data("description");
     		var duration =$(this).data("duration");
     		var level =$(this).data("level");
     		var trainer =$(this).data("trainer");
     		//var trainerImage =$(this).data("trainerImage");
     		var trainerBio =$(this).data("trainerbio");
     		var sdate =$(this).data("sdate");
     		var ldate =$(this).data("ldate");
     		var time =$(this).data("time");
     		var day =$(this).data("day");
     		var location =$(this).data("location");
     		var course =$(this).data("course");
     		var fee =$(this).data("fee");
     		var std =$(this).data("std");
     		var status =$(this).data("status");
     		
     	
     		
     		
     		$("#viewName").text(name);
     		$("#viewCategory").text(category);
     		$("#viewDescription").text(description);
     		$("#viewDuration").text(duration);
     		$("#viewlevel").text(level);
     		$("#viewTrainer").text(trainer);
     		//$("#viewTrainerbio").text(trainerbio);
     		$("#viewSdate").text(sdate);
     		$("#viewLdate").text(ldate);
     		$("#viewTime").text(time);
     		$("#viewDays").text(day);
     		$("#viewlocation").text(location);
     		$("#viewCourse").text(course);
     		$("#viewFee").text(fee);
     		$("#viewStd").text(std);
     		$("#viewStatus").text(status);
     		
     		
 		})
     </script>
</body>
</html>