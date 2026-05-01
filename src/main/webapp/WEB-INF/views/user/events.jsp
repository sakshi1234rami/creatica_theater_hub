<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Events </title>
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
    

    <!-- â”€â”€ BREADCRUMB HERO â”€â”€ -->
    <section class="breadcrumb-hero">
        <div class="breadcrumb-hero-inner">
            <div>
                <div
                    style="font-size:0.68rem;font-weight:800;letter-spacing:0.3em;text-transform:uppercase;color:#F2C94C;margin-bottom:0.7rem;">
                    âœ¦ &nbsp;Creatica Charitable Trust
                </div>
                <h1 class="breadcrumb-title">Our <span>Events</span></h1>
            </div>
            <div class="breadcrumb-trail">
                <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house" style="margin-right:4px"></i>Home</a>
                <span class="sep">/</span>
                <span class="active">Events</span>
            </div>
        </div>
    </section>

    <div class="rainbow-bar"></div>

    <section class="section events-section" id="events">
    <h2 class="section-title reveal">Upcoming Events</h2>
    <div class="section-divider reveal"></div>
    <p class="section-subtitle reveal">Don't miss our exciting performances, workshops and creative festivals.</p>
    <div class="events-grid">
        <c:if test="${not empty events}">
            <c:forEach var="event" items="${events}">
                <div class="event-card reveal">
                    <div class="event-img-wrap">
                        <img src="/content/images/event_${event.id}.jpg" alt="${event.eventName}" onerror="this.style.display='none'">
                        <div class="event-placeholder">
                            <c:choose>
                                <c:when test="${event.eventType == 'Music'}"><img src="/content/images/Icons/music.png" alt=""></c:when>
                                <c:when test="${event.eventType == 'Dance'}"><img src="/content/images/Icons/dancer.png" alt=""></c:when>
                                <c:otherwise><img src="/content/images/Icons/theater-mask.png" alt=""></c:otherwise>
                            </c:choose>
                        </div>
                        <div class="event-badge" style="${event.status == 'Closed' ? 'background:#e8344a' : (event.status == 'Open' ? 'background:#0EB555' : '')}">
                            ${event.status != null ? event.status : 'Upcoming'}
                        </div>
                    </div>
                    <div class="event-body">
                        <div class="event-date">
                            <i class="fa-regular fa-calendar" style="margin-right:5px"></i>
                            ${event.eventDate != null ? event.eventDate : 'TBA'} 
                            <span style="margin-left: 8px; font-weight: 500; font-size: 0.8rem; color: #888;">
                                <i class="fa-regular fa-clock"></i> ${event.eventTime}
                            </span>
                        </div>
                        <h5 class="event-title">${event.eventName}</h5>
                        <p class="event-desc">${event.description != null ? event.description : 'Join us for this exciting theatre hub event!'}</p>
                        <div style="font-size: 0.8rem; color: #2E6F95; margin-top: 8px; font-weight: 600;">
                            <i class="fa-solid fa-location-dot"></i> ${event.eventLocation}
                        </div>
                    </div>
                </div>
            </c:forEach>
        </c:if>
        
        <c:if test="${empty events}">
            <div style="grid-column: 1 / -1; text-align: center; padding: 4rem 2rem; background: #fff; border-radius: 20px; box-shadow: 0 10px 30px rgba(0,0,0,0.05);">
                <img src="/content/images/Icons/calendar.png" alt="" width="80" style="opacity: 0.2; margin-bottom: 1.5rem;">
                <h3 style="font-family: 'Playfair Display', serif; color: #2E6F95; margin-bottom: 0.5rem;">No Events Scheduled Yet</h3>
                <p style="color: #888;">We are currently planning our next big performances. Stay tuned!</p>
            </div>
        </c:if>
    </div>
</section>
    
     <!-- -----------------------------Footer css------------------------------------------------ -->
    
   <jsp:include page="../user/footer.jsp"></jsp:include>
   
   <!-- -----------------------------Footer css end------------------------------------------------ -->


    <jsp:include page="../user/links/Userfootlink.jsp"></jsp:include>
    <script>
        /* â”€â”€ SCROLL REVEAL â”€â”€ */
        const revealEls = document.querySelectorAll('.reveal');
        const revealObs = new IntersectionObserver((entries) => {
            entries.forEach((entry, i) => {
                if (entry.isIntersecting) {
                    setTimeout(() => entry.target.classList.add('visible'), i * 80);
                    const counter = entry.target.querySelector('[data-target]');
                    if (counter && !counter.dataset.animated) {
                        counter.dataset.animated = true;
                        animateCount(counter);
                    }
                    if (entry.target.hasAttribute('data-target') && !entry.target.dataset.animated) {
                        entry.target.dataset.animated = true;
                        animateCount(entry.target);
                    }
                }
            });
        }, { threshold: 0.1 });
        revealEls.forEach(el => revealObs.observe(el));

        /* â”€â”€ COUNTER ANIMATION â”€â”€ */
        function animateCount(el) {
            const target = +el.dataset.target;
            const duration = 1800;
            const start = performance.now();
            function step(now) {
                const progress = Math.min((now - start) / duration, 1);
                const ease = 1 - Math.pow(1 - progress, 3);
                el.textContent = Math.floor(ease * target);
                if (progress < 1) requestAnimationFrame(step);
                else el.textContent = target + (target >= 20 ? '+' : '');
            }
            requestAnimationFrame(step);
        }
    </script>
</body>

</html>