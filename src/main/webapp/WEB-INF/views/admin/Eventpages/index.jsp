<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Management</title>
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

            <!-- MAIN CONTENT -->
            <div class="Event">
                
                <!-- PAGE HEADER -->
                <div class="Main-content d-flex justify-content-between align-items-center mb-5">
                    <h2>Events Management</h2>
                    <button class="btn-add" data-bs-toggle="modal" data-bs-target="#addEventModal">
                        + Add Event
                    </button>
                </div>

                <!-- STATISTICS CARDS -->
                <div class="stats-container">
                    <div class="stat-card events">
                        <h6 class="stat-label">Total Events</h6>
                        <div class="stat-number">24</div>
                    </div>
                    <div class="stat-card attendees">
                        <h6 class="stat-label">Total Attendees</h6>
                        <div class="stat-number">1,245</div>
                    </div>
                    <div class="stat-card budget">
                        <h6 class="stat-label">Total Budget</h6>
                        <div class="stat-number">₹ 5.2L</div>
                    </div>
                    <div class="stat-card upcoming">
                        <h6 class="stat-label">Upcoming Events</h6>
                        <div class="stat-number">8</div>
                    </div>
                </div>

                <!-- FILTERS & SEARCH -->
                <div class="filter-section">
                    <div class="row g-3">
                        <div class="col-md-4">
                            <input type="text" class="form-control" placeholder="Search by event name">
                        </div>
                        <div class="col-md-3">
                            <select class="form-select">
                                <option selected>Filter by Status</option>
                                <option value="upcoming">Upcoming</option>
                                <option value="ongoing">Ongoing</option>
                                <option value="completed">Completed</option>
                                <option value="cancelled">Cancelled</option>
                            </select>
                        </div>
                        <div class="col-md-3">
                            <input type="date" class="form-control">
                        </div>
                        
                    </div>
                </div>

                <!-- EVENTS TABLE -->
                <div class="table-responsive-custom">
                    <table class="table table-hover align-middle">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Event Name</th>
                                <th>Date</th>
                                <th>Location</th>
                                <th>Attendees</th>
                                <th>Budget</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${events}" var="event" varStatus="status">
                            <tr>
                                <td>${status.index + 1}</td>
                                <td><strong>${event.eventName}</strong></td>
                                <td>${event.eventDate}</td>
                                <td>${event.eventLocation}</td>
                                <td>${event.number}</td>
                                <td>₹ ${event.budget}</td>
                                <td><span class="event-status-badge badge-upcoming">${event.status}</span></td>
                                <td>
                                    <div class="action-buttons">
                                        <button class="btn-sm-custom btn-view" data-bs-toggle="modal" data-bs-target="#viewEventModal" onclick="prepareViewEvent('${event.id}','${event.eventName}','${event.eventType}','${event.eventDate}','${event.eventTime}','${event.eventLocation}','${event.number}','${event.budget}','${event.status}','${event.description}')">View</button>
                                        <button class="btn-sm-custom btn-edit" data-bs-toggle="modal" data-bs-target="#editEventModal" onclick="prepareEditEvent('${event.id}','${event.eventName}','${event.eventType}','${event.eventDate}','${event.eventTime}','${event.eventLocation}','${event.number}','${event.budget}','${event.status}','${event.description}')">Edit</button>
                                        <button class="btn-sm-custom btn-delete" data-bs-toggle="modal" data-bs-target="#deleteEventModal" onclick="prepareDeleteEvent('${event.id}')">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <!-- PAGINATION -->
                    <div class="pagination-custom">
                        <span>« Previous</span>
                        <a class="active">1</a>
                        <a>2</a>
                        <a>3</a>
                        <span>Next »</span>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- ================= ADD EVENT MODAL ================= -->
    <div class="modal fade" id="addEventModal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Add New Event</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                </div>

                <div class="modal-body">
                    <form action="/creatica_theater_hub/admin/eventPost" method="post" id="addEventForm">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Event Name</label>
                                <input type="text" class="form-control" name="EventName" placeholder="Enter event name">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Event Type</label>
                                <select class="form-select" name="EventType">
                                    <option selected>Select Type</option>
                                    <option value="workshop">Workshop</option>
                                    <option value="seminar">Seminar</option>
                                    <option value="shows">Shows</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Date</label>
                                <input type="date" class="form-control" name="EventDate">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Time</label>
                                <input type="time" class="form-control" name="EventTime">
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Location</label>
                            <input type="text" class="form-control" name="EventLocation" placeholder="Enter event location">
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Expected Attendees</label>
                                <input type="number" class="form-control" name="Number" placeholder="Enter number">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Budget (₹)</label>
                                <input type="number" class="form-control" name="Budget" placeholder="Enter budget amount">
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Description</label>
                            <textarea class="form-control" rows="3" name="Description" placeholder="Enter event description"></textarea>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Status</label>
                            <select class="form-select" name="Status">
                                <option>Upcoming</option>
                                <option>Ongoing</option>
                                <option>Completed</option>
                                <option>Cancelled</option>
                            </select>
                        </div>
                    </form>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn-secondary-custom" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn-primary-custom" onclick="document.getElementById('addEventForm').submit()">Save Event</button>
                </div>
            </div>
        </div>
    </div>

    <!-- ================= VIEW EVENT MODAL ================= -->
    <div class="modal fade" id="viewEventModal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Event Details</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                </div>

                <div class="modal-body">
                    <div class="event-card-header">
                        <h5 id="view_name">Tech Summit 2026</h5>
                    </div>
                    <div class="p-4">
                        <div class="event-details-row">
                            <span class="event-detail-label">Event Type:</span>
                            <span class="event-detail-value" id="view_type">Conference</span>
                        </div>
                        <div class="event-details-row">
                            <span class="event-detail-label">Date:</span>
                            <span class="event-detail-value" id="view_date">25 May 2026</span>
                        </div>
                        <div class="event-details-row">
                            <span class="event-detail-label">Time:</span>
                            <span class="event-detail-value" id="view_time">10:00 AM - 5:00 PM</span>
                        </div>
                        <div class="event-details-row">
                            <span class="event-detail-label">Location:</span>
                            <span class="event-detail-value" id="view_loc"></span>
                        </div>
                        <div class="event-details-row">
                            <span class="event-detail-label">Expected Attendees:</span>
                            <span class="event-detail-value" id="view_num"></span>
                        </div>
                        <div class="event-details-row">
                            <span class="event-detail-label">Budget:</span>
                            <span class="event-detail-value" id="view_budget"></span>
                        </div>
                        <div class="event-details-row">
                            <span class="event-detail-label">Status:</span>
                            <span class="event-detail-value" id="view_status">
                                
                            </span>
                        </div>
                        <div class="event-details-row">
                            <span class="event-detail-label">Description:</span>
                            <span class="event-detail-value" id="view_desc"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- ================= EDIT EVENT MODAL ================= -->
    
    <div class="modal fade" id="editEventModal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Event</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                </div>

                <div class="modal-body">
                    <form action="/creatica_theater_hub/admin/event/edit" method="post" id="editEventForm">
                        <input type="hidden" name="eId" id="edit_eId">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Event Name</label>
                                <input type="text" class="form-control" name="EventName" id="edit_EventName">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Event Type</label>
                                <select class="form-select" name="EventType" id="edit_EventType">
                                    <option>Conference</option>
                                    <option>Workshop</option>
                                    <option>Seminar</option>
                                    <option>Shows</option>
                                    <option>Other</option>
                                </select>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Date</label>
                                <input type="date" class="form-control" name="EventDate" id="edit_EventDate">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Time</label>
                                <input type="time" class="form-control" name="EventTime" id="edit_EventTime">
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Location</label>
                            <input type="text" class="form-control" name="EventLocation" id="edit_EventLocation">
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Expected Attendees</label>
                                <input type="number" class="form-control" name="Number" id="edit_Number">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Budget (₹)</label>
                                <input type="number" class="form-control" name="Budget" id="edit_Budget">
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Description</label>
                            <textarea class="form-control" rows="3" name="Description" id="edit_Description"></textarea>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Status</label>
                            <select class="form-select" name="Status" id="edit_Status">
                                <option>Upcoming</option>
                                <option>Ongoing</option>
                                <option>Completed</option>
                                <option>Cancelled</option>
                            </select>
                        </div>
                    </form>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn-secondary-custom" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn-primary-custom" onclick="document.getElementById('editEventForm').submit()">Update Event</button>
                </div>
            </div>
        </div>
    </div>

    <!-- ================= DELETE EVENT MODAL ================= -->
    <div class="modal fade" id="deleteEventModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Delete Event</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                </div>

                <div class="modal-body">
                    <p style="color: #6B7280;">Are you sure you want to delete this event? This action cannot be undone.</p>
                </div>

                <div class="modal-footer">
                    <form action="/creatica_theater_hub/admin/event/delete" method="POST" id="deleteEventForm">
                        <input type="hidden" name="delid" id="delete_delid">
                        <button type="button" class="btn-secondary-custom" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- SCRIPTS -->
    <jsp:include page="../links/footlink.jsp"></jsp:include>
    <script>
        function prepareViewEvent(id, name, type, date, time, loc, num, budget, status, desc) {
            document.getElementById('view_name').innerText = name;
            document.getElementById('view_type').innerText = type;
            document.getElementById('view_date').innerText = date;
            document.getElementById('view_time').innerText = time;
            document.getElementById('view_loc').innerText = loc;
            document.getElementById('view_num').innerText = num;
            document.getElementById('view_budget').innerText = budget ? '₹ ' + budget : '';
            document.getElementById('view_status').innerText = status;
            document.getElementById('view_desc').innerText = desc;
        }

        function prepareEditEvent(id, name, type, date, time, loc, num, budget, status, desc) {
            document.getElementById('edit_eId').value = id;
            document.getElementById('edit_EventName').value = name;
            document.getElementById('edit_EventType').value = type;
            document.getElementById('edit_EventDate').value = date;
            document.getElementById('edit_EventTime').value = time;
            document.getElementById('edit_EventLocation').value = loc;
            document.getElementById('edit_Number').value = num;
            document.getElementById('edit_Budget').value = budget;
            document.getElementById('edit_Status').value = status;
            document.getElementById('edit_Description').value = desc;
        }

        function prepareDeleteEvent(id) {
            document.getElementById('delete_delid').value = id;
        }
    </script>
</body>
</html>