<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>messages </title>
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
   <div class="Message">

                <!-- Header -->
                    <div class="d-flex justify-content-between align-items-center mb-3">
                             <h3> Messages</h3>
                    <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#newMessageModal">
                            + New Message
                    </button>
                    </div>
            </div>

            <div class="container-fluid">
                <div class="row chat-container">
                     <!-- ================= INBOX LIST ================= -->
                    <div class="col-md-4 inbox-list p-4">
                        <!-- Search -->
                        <input type="text" class="form-control mb-3" placeholder="Search messages...">
                        <!-- Message Users -->
                         <div class="list-group">
                            <c:forEach var="msg" items="${messages}" varStatus="status">
                                <a href="?msgId=${msg.id}" class="list-group-item list-group-item-action ${param.msgId == msg.id or (empty param.msgId and status.first) ? 'active' : ''}">
                                     ${msg.name} <br>
                                    <small>${msg.subject}</small>
                                    <div class="text-end">
                                        <a href="/admin/messages/delete?delid=${msg.id}" class="text-danger" onclick="return confirm('Are you sure?')">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </div>
                                </a>
                            </c:forEach>
                         </div>
                    </div>

              <!-- ================= CHAT AREA ================= -->      
                    <div class="col-md-8">
                         <!-- Chat Header -->
        <c:set var="selectedMsg" value="${null}" />
        <c:forEach var="msg" items="${messages}">
            <c:if test="${msg.id == param.msgId}">
                <c:set var="selectedMsg" value="${msg}" />
            </c:if>
        </c:forEach>
        <c:if test="${empty selectedMsg and not empty messages}">
            <c:set var="selectedMsg" value="${messages[0]}" />
        </c:if>

        <c:choose>
            <c:when test="${not empty selectedMsg}">
                <div class="border-bottom pb-2 mb-3">
                    <h5>${selectedMsg.name}</h5>
                    <small class="text-muted">${selectedMsg.email}</small>
                </div>

                <!-- Incoming -->
                 <div class="mb-lg-5">
                 <div class="message-left">
                    <p><strong>Subject:</strong> ${selectedMsg.subject}</p>
                    <hr>
                    <p>${selectedMsg.message}</p>    
                 </div>
                 </div>

                  <div class="mt-5">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Reply (Not implemented)..." disabled>
                        <button class="btn btn-primary" disabled>Send</button>
                    </div>
                </div>
            </c:when>
            <c:otherwise>
                <div class="text-center mt-5">
                    <h4>No messages found</h4>
                </div>
            </c:otherwise>
        </c:choose>
                    </div>
                </div>
</div>

                <!-- ================= NEW MESSAGE MODAL ================= -->
<div class="modal fade" id="newMessageModal" >
  <div class="modal-dialog">
    <div class="modal-content">

      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title">New Message</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
      </div>

      <div class="modal-body">
        <form>
          <div class="mb-3">
            <label class="form-label">Select User</label>
            <select class="form-select">
              <option>Rahul Patel</option>
              <option>Priya Sharma</option>
              <option>Amit Verma</option>
            </select>
          </div>

          <div class="mb-3">
            <label class="form-label">Message</label>
            <textarea class="form-control" rows="4"></textarea>
          </div>
        </form>
      </div>

      <div class="modal-footer">
        <button class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        <button class="btn btn-success">Send</button>
      </div>

    </div>
  </div>
</div>
        </div>
    </div>

<jsp:include page="../links/footlink.jsp"></jsp:include>
</body>
</html>