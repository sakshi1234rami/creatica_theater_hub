<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
    
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery</title>
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
                    &nbsp;Creatica Charitable Trust
                </div>
                <h1 class="breadcrumb-title">Our <span>Gallery</span></h1>
            </div>
            <div class="breadcrumb-trail">
                <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house" style="margin-right:4px"></i>Home</a>
                <span class="sep">/</span>
                <span class="active">Gallery</span>
            </div>
        </div>
    </section>

    <div class="rainbow-bar"></div>
    <section class="section gallery-section" id="gallery">
    <h2 class="section-title reveal">Our Gallery</h2>
    <div class="section-divider reveal"></div>
    <p class="section-subtitle reveal">Glimpses of our performances, workshops and moments of creativity.</p>
    <div class="gallery-grid">
        <div class="gallery-item reveal">
            <img src="/content/images/gallery1.jpg" alt="Gallery 1" onerror="this.style.display='none'">
            <div class="gallery-placeholder">ðŸŽ­</div>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
        <div class="gallery-item reveal" style="background:linear-gradient(135deg,#0EB555,#2E6F95)">
            <img src="/content/images/gallery2.jpg" alt="Gallery 2" onerror="this.style.display='none'">
            <div class="gallery-placeholder">ðŸŽ¶</div>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
        <div class="gallery-item reveal" style="background:linear-gradient(135deg,#F29B2E,#F2C94C)">
            <img src="/content/images/gallery3.jpg" alt="Gallery 3" onerror="this.style.display='none'">
            <div class="gallery-placeholder">ðŸ’ƒ</div>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
        <div class="gallery-item reveal" style="background:linear-gradient(135deg,#296498,#1F2933)">
            <img src="/content/images/gallery4.jpg" alt="Gallery 4" onerror="this.style.display='none'">
            <div class="gallery-placeholder">ðŸŽ¬</div>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
    </div>
    <div style="text-align:center; margin-top:2.5rem;">
        <a href="#" class="btn btn-theme1">View Full Gallery <i class="fa-solid fa-images" style="margin-left:6px"></i></a>
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