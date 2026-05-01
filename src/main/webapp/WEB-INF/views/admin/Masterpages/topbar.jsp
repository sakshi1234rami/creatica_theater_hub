<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
     <nav class="nav navbar-expand-md bg-header p-2 px-3 shadow gap-5 d-flex justify-content-between">
                <button id="toggle-btn">
                    <i class="fa-solid fa-bars"></i>
                </button>

                <ul class="navbar-nav">
                    <li class="nav-item ms-auto dropdown">
                        <a href="#" class="nav-link float-end dropdown-toggle" data-bs-toggle="dropdown"
                            id="dropdown"><img src="<c:url value="/Resources/Images/user.png"></c:url>" alt=""></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">${adminName}</li>
                            <li><hr class="dropdown-divider"></li>
                            <li class="dropdown-item"><a href="<c:url value="/admin/profile"></c:url>">Profile</a></li>
                            <li class="dropdown-item"><a href="<c:url value="/admin/logout"></c:url>">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>