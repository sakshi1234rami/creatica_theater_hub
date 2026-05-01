<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
    
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSR </title>
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
                <h1 class="breadcrumb-title">What is <span>CSR</span></h1>
            </div>
            <div class="breadcrumb-trail">
                <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house" style="margin-right:4px"></i>Home</a>
                <span class="sep">/</span>
                <span class="active">CSR</span>
            </div>
        </div>
    </section>

    <div class="rainbow-bar"></div>
    <section class="section" id="crc" style="padding: 4rem 1rem; background-color: #f8f9fa;">
        <div class="section-inner" style="max-width:1100px; margin: 0 auto;">

            <div style="text-align: center; margin-bottom: 3rem;">
                <div class="section-tag reveal">Child Rights Centre</div>
                <h2 class="section-title reveal" style="margin-bottom:0.5rem">Collaborate with Purpose,
                    <br><span>Deliver Impact</span></h2>
                <div class="section-divider reveal" style="margin: 1rem auto;"></div>
                <p class="section-subtitle reveal" style="max-width: 700px; margin: 0 auto;">
                    The Child Rights Centre (CRC) is an essential initiative of Creatica Charitable Trust. We provide
                    holistic child development, education, and protection—and we invite corporate and individual
                    partners to join hands with us.
                </p>
            </div>

            <div class="mv-grid" style="margin-bottom: 3rem;">
                <div class="mv-card reveal" style="background:#fff;">
                    <div class="mv-icon" style="color:#0EB555"><i class="fa-solid fa-bullseye"></i></div>
                    <div class="mv-title">Corporate Social Responsibility (CSR)</div>
                    <p class="mv-text" style="color:#444">
                        With ground-level experience in child development and cultural training, we execute structured
                        CSR projects with precision and consistency. From local support initiatives to multi-region
                        programs, our initiatives adapt to your CSR goals and operational scope.
                    </p>
                </div>
                <div class="mv-card reveal" style="background:#fff;">
                    <div class="mv-icon" style="color:#2E6F95"><i class="fa-solid fa-file-invoice-dollar"></i></div>
                    <div class="mv-title">Transparency & Compliance</div>
                    <p class="mv-text" style="color:#444">
                        All CSR projects come with detailed financial records, transparent utilization reports, and 100%
                        statutory documentation. Creatica Charitable Trust is fully compliant, providing 80G tax
                        exemption benefits for our honorable donors.
                    </p>
                </div>
            </div>

            <div class="why-grid" style="margin-bottom: 3rem;">
                <div class="why-card reveal"
                    style="text-align:center; padding: 2rem; background: #fff; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.05);">
                    <div class="why-icon" style="color:#F29B2E"><i class="fa-solid fa-hand-holding-heart"></i></div>
                    <h4 style="margin: 1rem 0;">Small Steps, Big Dreams</h4>
                    <p style="font-size: 0.95rem; color: #555;">Support a child's artistic and educational journey. Your
                        contribution helps us provide training, school kits, and holistic development.</p>
                </div>
                <div class="why-card reveal"
                    style="text-align:center; padding: 2rem; background: #fff; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.05);">
                    <div class="why-icon" style="color:#F2C94C"><i class="fa-solid fa-masks-theater"></i></div>
                    <h4 style="margin: 1rem 0;">Compassion in Action</h4>
                    <p style="font-size: 0.95rem; color: #555;">Fund our free theatre and performance workshops targeted
                        at underprivileged youth, nurturing their talents and building confidence.</p>
                </div>
                <div class="why-card reveal"
                    style="text-align:center; padding: 2rem; background: #fff; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.05);">
                    <div class="why-icon" style="color:#E74C3C"><i class="fa-solid fa-heart-pulse"></i></div>
                    <h4 style="margin: 1rem 0;">Nutrition & Health</h4>
                    <p style="font-size: 0.95rem; color: #555;">Beyond arts, CRC ensures basic health checkups,
                        nutritional support, and well-being camps for the children enrolled in our NGO programs.</p>
                </div>
            </div>


            <div class="reveal"
                style="text-align: center; background: linear-gradient(135deg, #2E6F95, #296498); color: white; padding: 3rem; border-radius: 12px; box-shadow: 0 10px 30px rgba(0,0,0,0.1);">
                <h3 style="margin-bottom: 1rem; color: #fff;">Partner With Us Today</h3>
                <p style="max-width: 600px; margin: 0 auto 2rem auto; font-size: 1.05rem; opacity: 0.9;">
                    Whether you are an individual looking to donate or a corporate entity aiming to fulfill social
                    responsibility, your help changes lives.
                </p>
                <div style="display: flex; gap: 1rem; justify-content: center; flex-wrap: wrap;">
                    <a href="/creatica_theater_hub/user/donation" class="btn btn-theme1" style="padding: 12px 30px; font-size: 1.1rem;"><i
                            class="fa-solid fa-heart" style="margin-right: 8px;"></i> Donate Now</a>
                    <a href="/creatica_theater_hub/user/contact" class="btn btn-theme2"
                        style="padding: 12px 30px; font-size: 1.1rem; background: transparent; border: 2px solid #fff; color: #fff;"><i
                            class="fa-solid fa-envelope" style="margin-right: 8px;"></i> Contact for CSR</a>
                </div>
                <p style="margin-top: 1.5rem; font-size: 0.85rem; opacity: 0.7;">
                    * All donations are eligible for tax benefits under Section 80G of the Income Tax Act.
                </p>
            </div>

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