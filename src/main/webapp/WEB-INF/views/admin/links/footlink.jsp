<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <script src='<c:url value="/Resources/JS/bootstrap.bundle.min.js"></c:url>'></script>
     <script src='<c:url value="/Resources/jQuery/jquery-4.0.0.min.js"></c:url>'></script>
  

    <script>
        $(document).ready(function () {
            $('#toggle-btn').click(function () {
                $('.sidebar').toggleClass('full');
                 $('.content').toggleClass('expand');
            });
        });
    </script>