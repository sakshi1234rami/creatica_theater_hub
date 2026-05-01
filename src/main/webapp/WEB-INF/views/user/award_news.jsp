<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About-Award&News</title>
     <jsp:include page="../user/links/Userheadlink.jsp"></jsp:include>
    <style>
        @font-face {
            font-family: "Raleway";
            src: url('/content/font/Raleway/Raleway-Medium.ttf');
        }
       
    </style>
</head>
   
<body>


        
       <!-----------------------------------------Header section--------------------------------------->

   <jsp:include page="../user/header.jsp"></jsp:include>

    <!-----------------------------------------Header section end--------------------------------------->
      
     
    <!-----------------------------------------Awards ----------------------------------------- -->

    <!-- ── BREADCRUMB HERO ── -->
<section class="breadcrumb-hero">
    <div class="breadcrumb-hero-inner">
        <div>
            <div class="breadcrumb-eyebrow">
                <i class="fa-solid fa-circle-dot"></i>
                Creatica Charitable Trust
            </div>
            <h1 class="breadcrumb-title">Awards <span>& News</span></h1>
        </div>
        <div class="breadcrumb-trail">
            <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house" style="margin-right:4px"></i>Home</a>
            <span class="sep">/</span>
            <span class="active">About-us</span>
            <span class="sep">/</span>
             <span class="active">Award & News</span>
        </div>
    </div>
</section>

<div class="rainbow-bar"></div>


<section class="py-5">

<div class="container">

<h3 class="text-center mb-5">Our Achievements</h3>

<div class="timeline">

<div class="timeline-item">

<h5>2024 - International Festival</h5>

<p>
Creatica Theatre Hub performed at
Pearl World Heritage Festival in Thailand.
</p>

</div>

<div class="timeline-item">

<h5>2023 - National Theatre Award</h5>

<p>
Awarded for contribution in theatre training
and youth cultural development.
</p>

</div>

<div class="timeline-item">

<h5>2022 - Cultural Excellence Award</h5>

<p>
Recognized for promoting performing arts.
</p>

</div>

</div>

</div>

</section>
       
    <!-- -----------------------------Footer css------------------------------------------------ -->
    
   <jsp:include page="../user/footer.jsp"></jsp:include>
   
   <!-- -----------------------------Footer css end------------------------------------------------ -->
   
   
   <jsp:include page="../user/links/Userfootlink.jsp"></jsp:include>
    <script>
        
    /* ── SCROLL REVEAL ── */
    const revealEls = document.querySelectorAll('.reveal');
    const revealObs = new IntersectionObserver((entries) => {
        entries.forEach((entry, i) => {
            if (entry.isIntersecting) {
                setTimeout(() => entry.target.classList.add('visible'), i * 80);
                // Trigger counter if applicable
                const counter = entry.target.querySelector('[data-target]');
                if (counter) animateCount(counter);
                if (entry.target.hasAttribute('data-target')) animateCount(entry.target);
            }
        });
    }, { threshold: 0.1 });
    revealEls.forEach(el => revealObs.observe(el));

    </script>
</body>

</html>