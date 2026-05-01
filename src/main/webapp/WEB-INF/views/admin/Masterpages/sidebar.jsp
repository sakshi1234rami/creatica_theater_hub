<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <div class="sidebar">
            <img src="<c:url value="/Resources/Images/creatica_logo-removebg-preview.png"></c:url>" height="100px" class="p-1 m-4" alt="">
            <ul type="none">

                <li><a href="<c:url value="/admin/dashboard"></c:url>" class="active"><img src="<c:url value="/Resources/Images/dashboard.png"></c:url>" alt=""> Dashboard</a>
                </li>
                <li><a href="<c:url value="/admin/program"></c:url>"><img src="<c:url value="/Resources/Images/program.png"></c:url>" alt=""> Manage Program</a></li> 
                <li><a href="<c:url value="/admin/student"></c:url>"><img src="<c:url value="/Resources/Images/students.png"></c:url>" alt=""> Student</a></li>
                <li><a href="<c:url value="/admin/volunteer"></c:url>"><img src="<c:url value="/Resources/Images/volunteer.png"></c:url>" alt=""> Volunteers</a></li>
                <li><a href="<c:url value="/admin/donation"></c:url>"><img src="<c:url value="/Resources/Images/gift.png"></c:url>" alt=""> Donation</a></li>
                 <li><a href="<c:url value="/admin/event"></c:url>"><img src="<c:url value="/Resources/Images/event-list.png"></c:url>" alt=""> Events</a></li>
                <li><a href="<c:url value="/admin/bookings"></c:url>"><img src="<c:url value="/Resources/Images/program.png"></c:url>" alt=""> Bookings</a></li>
                <li><a href="<c:url value="/admin/messages"></c:url>"><img src="<c:url value="/Resources/Images/message.png"></c:url>" alt=""> Massages</a></li>
                <li><a href="<c:url value="/admin/report"></c:url>"><img src="<c:url value="/Resources/Images/report1.png"></c:url>" alt=""> Report</a></li>
                <li><a href="<c:url value="/admin/logout"></c:url>"><img src="<c:url value="/Resources/Images/logout.png"></c:url>" alt=""> Logout</a></li>

            </ul>
        </div>