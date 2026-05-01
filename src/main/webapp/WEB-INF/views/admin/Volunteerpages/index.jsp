<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Volunteer </title>
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
      	<div class="Volunteers">
      
                <div class=" Main-content d-flex justify-content-between align-items-center">
        <h3> Volunteers Management</h3>
        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#volunteerModal">
            + Add Volunteer
        </button>
    </div>

    <!-- ================= VOLUNTEER DASHBOARD ================= -->
     <div class="sub-heading px-5">
<display3>Volunteer Analytics Dashboard</display3>

<div class="row my-4">
    <div class="col-md-3">
        <div class="card text-center p-3">
            <h5>Total Volunteers</h5>
            <h2>120</h2>
        </div>
    </div>
    <div class="col-md-3">
        <div class="card text-center p-3">
            <h5>Active</h5>
            <h2>95</h2>
        </div>
    </div>
    <div class="col-md-3">
        <div class="card text-center p-3">
            <h5>Pending</h5>
            <h2>15</h2>
        </div>
    </div>
    <div class="col-md-3">
        <div class="card text-center p-3">
            <h5>Attendance %</h5>
            <h2>88%</h2>
        </div>
    </div>
</div>
</div>
        <!-- Filters & Search -->
    <div class="card p-3 mb-4">
        <div class="row">
            <div class="col-md-4 mb-2">
                <input type="text" class="form-control" placeholder="Search by name or skill">
            </div>

            <div class="col-md-3 mb-2">
                <select class="form-select">
                    <option selected>All program</option>              
             		<option value="dance">Dance</option>
              		<option value="drama">Drama</option>
              		<option value="acting">Acting</option>
              		<option value="music">Music</option>
              		<option value="pd">Personality Development</option>
               		<option value="other">Other</option>
            
                </select>
            </div>

            <div class="col-md-3 mb-2">
                <select class="form-select">
                    <option selected>All Status</option>
                    <option>Active</option>
                    <option>Inactive</option>
                    <option>Pending</option>
                </select>
            </div>

           
        </div>
    </div>


        <!-- Volunteers Table -->
    <div class="card p-3">
        <div class="table-responsive">
            <table class="table table-hover align-middle">
                <thead class="table-light">
                    <tr>
                       
                        <th>Volunteer Name</th>
                        <th>Phone</th>
                        <th>Program</th>
                        <th>Skills</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>

                <tbody>
                <c:forEach items="${Volunteers }" var="v">
                    <tr>
                        
                        <td>${v.volName }</td>
                        <td>${v.volPhone }</td>
                        <td>${v.volProgram }</td>
                        <td>${v.volSkill }</td>
                        <td>${v.status }</td>
                        <td>
                            <button class="btn btn-sm btn-info btnView"
                            data-name="${v.volName }"
                            data-phone="${v.volPhone }"
                            data-program="${v.volProgram }"
                            data-skill="${v.volSkill }"
                            data-status="${v.status }" 
                            data-bs-target="#viewVolunteerModal" data-bs-toggle="modal">View</button>
                            <button class="btn btn-sm btn-warning btnEdit"
                            
                            data-name="${v.volName }"
                            data-phone="${v.volPhone }"
                            data-program="${v.volProgram }"
                            data-skill="${v.volSkill }"
                            data-status="${v.status }"
                            
                             data-bs-target="#editVolunteerModal" data-bs-toggle="modal">Edit</button>
                            <button class="btn btn-sm btn-danger btnDelete"
                            	
                            	data-delid="${v.id }"
                             data-bs-target="#DeleteModal" data-bs-toggle="modal">Delete</button>
                        </td>
                    </tr>

                   
</c:forEach>
                   
                </tbody>
            </table>
        </div>

        <!-- Pagination -->
        <nav>
            <ul class="pagination justify-content-end mt-3">
                <li class="page-item disabled">
                    <a class="page-link">Previous</a>
                </li>
                <li class="page-item active">
                    <a class="page-link">1</a>
                </li>
                <li class="page-item">
                    <a class="page-link">2</a>
                </li>
                <li class="page-item">
                    <a class="page-link">Next</a>
                </li>
            </ul>
        </nav>
    </div>
    
    </div>

    <!-- Volunteer Modal (Basic Example) -->
<div class="modal fade" id="volunteerModal" tabindex="-1">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      
      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title">Add Volunteer</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
      </div>

      <div class="modal-body">
      
        <form action="/creatica_theater_hub/admin/volunteerPost" method="post" >
          <div class="row mb-3">
            <div class="col-md-6">
              <label class="form-label">Full Name</label>
              <input type="text" name="VolName" class="form-control">
            </div>
            <div class="col-md-6">
              <label class="form-label">Phone</label>
              <input type="text" name="VolPhone" class="form-control">
            </div>
          </div>

          <div class="mb-3">
            <label class="form-label">Skills</label>
            <input type="text" name="VolSkill" class="form-control">
          </div>

          <div class="mb-3">
            <label class="form-label">Program</label>
            <select class="form-select" name="VolProgram">
              <option value="dance">Dance</option>
              <option value="drama">Drama</option>
              <option value="acting">Acting</option>
              <option value="music">Music</option>
              <option value="pd">Personality Development</option>
               <option value="other">Other</option>
            </select>
          </div>

          <div class="mb-3">
            <label class="form-label">Status</label>
            <select class="form-select" name="Status">
              <option value="active">Active</option>
              <option value="inactive">Inactive</option>
              <option value="pending">Pending</option>
            </select>
          </div>
       
      </div>

      <div class="modal-footer">
        <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-success">Save</button>
      </div>
 </form>
    </div>
  </div>
</div>

<!-- ================= VIEW VOLUNTEER MODAL ================= -->
<div class="modal fade" id="viewVolunteerModal">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">

      <div class="modal-header bg-info text-white">
        <h5 class="modal-title">Volunteer Profile</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
      </div>

      <div class="modal-body">

        <div class="row align-items-center">
          <div class="col-md-4 text-center">
            <img src="/images/user.png" width="120" class="mb-3">
            <h4 id="viewName"></h4>
            <span id="viewStatus" class="badge bg-success"></span>
          </div>

          <div class="col-md-8">

            <div class="card p-3 mb-3">
              <h6>Basic Information</h6>
              <p ><strong>Phone:</strong> <span id="viewPhone"></span></p>
              <p ><strong>Program:</strong> <span id="viewProgram"></span> </p>
            </div>

            <div class="card p-3 mb-3" >
              <h6><strong>Skill</strong></h6>
              <p><span id="viewSkill"></span></p>
            </div>

          </div>
        </div>

      </div>

    </div>
  </div>
</div>

<!-- ================= EDIT VOLUNTEER MODAL ================= -->
<div class="modal fade" id="editVolunteerModal">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">

      <div class="modal-header bg-warning">
        <h5 class="modal-title">Edit Volunteer</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <div class="modal-body">
        <form>

          <div class="row mb-3">
            <div class="col-md-6">
              <label class="form-label">Full Name</label>
              <input type="text" class="form-control" id="edtName">
            </div>

            <div class="col-md-6">
              <label class="form-label">Phone</label>
              <input type="text" class="form-control" id="edtPhone">
            </div>
          </div>

          <div class="mb-3">
            <label class="form-label">Skills</label>
            <input type="text" class="form-control" id="edtSkill">
          </div>

          <div class="row mb-3">
            <div class="col-md-6">
              <label class="form-label">Program</label>
              <select class="form-select" id="edtProgram">
                <option value="dance">Dance</option>
              					<option value="drama">Drama</option>
              					<option value="acting">Acting</option>
              					<option value="music">Music</option>
              					<option value="pd">Personality Development</option>
                 				<option value="other">Other</option>
              </select>
            </div>

            <div class="col-md-6">
               <label class="form-label">Status</label>
            <select class="form-select" id="edtStatus">
              <option value="active" selected>Active</option>
              <option value="inactive">Inactive</option>
              <option value="pending">Pending</option>
            </select>
            </div>
          </div>

           <div class="modal-footer">
        <button class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        <button class="btn btn-warning">Update Volunteer</button>
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
                        <button type="button" class="btn-close" data-bs-dismiss="modal" ></button>
                    </div>
                    <div class="modal-body">
                        <h5>Are you sure you want to Delete ?</h5> <br>
                        <div class="mt-3 text-end">
                        <form action="/creatica_theater_hub/admin/volunteerDelete" method="post">
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

<script >
			
				$('.btnDelete').click(function(){
					var id = $(this).data("delid");
					$("#delid").val(id);
				});
			
</script>
<script>
$(".btnEdit").click(function(){
	var name = $(this).data("name");
	var phone=$(this).data("phone");
	var program=$(this).data("program");
	var skill=$(this).data("skill");
	var status=$(this).data("status");
	$("#edtName").val(name);
	$("#edtPhone").val(phone);
	$("#edtProgram").val(program);
	$("#edtSkill").val(skill);
	$("#edtStatus").val(status);
});

$(".btnView").click(function(){
	var name = $(this).data("name");
	var phone=$(this).data("phone");
	var program=$(this).data("program");
	var skill=$(this).data("skill");
	var status=$(this).data("status");
	
	$("#viewName").text(name);
	$("#viewStatus").text(status);
	$("#viewPhone").text(phone);
	$("#viewProgram").text(program);
	$("#viewSkill").text(skill);
});


</script>
</body>
</html>