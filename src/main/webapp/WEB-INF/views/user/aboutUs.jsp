<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About page</title>
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


    <!-- ── BREADCRUMB HERO ── -->
    <section class="breadcrumb-hero">
        <div class="breadcrumb-hero-inner">
            <div>
                <div
                    style="font-size:0.68rem;font-weight:800;letter-spacing:0.3em;text-transform:uppercase;color:#F2C94C;margin-bottom:0.7rem;">
                    ✦ &nbsp;Creatica Charitable Trust
                </div>
                <h1 class="breadcrumb-title">About <span>Us</span></h1>
            </div>
            <div class="breadcrumb-trail">
                <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house" style="margin-right:4px"></i>Home</a>
                <span class="sep">/</span>
                <span class="active">About Us</span>
            </div>
        </div>
    </section>

    <div class="rainbow-bar"></div>

    <!-- ── ABOUT SECTION ── -->
    <section class="section about-section" id="about">
        <div class="section-inner">
            <div class="about-grid">
                <div class="about-img-wrap reveal">
                    <div class="about-corner-deco"></div>
                    <div class="about-img-frame">
                    
                        <img src='<c:url value="/Resources/user/images/aboutImg.jpeg"></c:url>' alt="Creatica Theatre Hub"
                            onerror="this.style.display='none';this.parentNode.style.minHeight='300px';this.parentNode.style.background='linear-gradient(135deg,#F8F9FA,#e8f0f7)'">
                    </div>
                    <div class="about-float-badge">
                        <div class="big">NGO</div>
                        <div class="small">Registered<br>Trust</div>
                    </div>
                </div>
                <div class="reveal">
                    <div class="section-tag">Who We Are</div>
                    <h2 class="about-heading">About <span>Creatica</span><br>Theatre Hub</h2>
                    <p class="about-body">Creatica Theatre Hub is a creative platform dedicated to developing artistic
                        talent in theatre, dance, acting, music and performing arts. We provide professional training,
                        stage exposure and cultural development for aspiring artists.</p>
                    <p class="about-body">Our organisation works to provide professional training, stage exposure and
                        cultural learning opportunities for aspiring artists from all walks of life.</p>
                    <p class="about-body">Through workshops, theatre productions and cultural events, we aim to
                        encourage creativity, confidence and artistic expression among youth.</p>
                    <div class="about-features">
                        <div class="about-feature"><i class="fa-solid fa-circle-check"></i> Registered Charitable Trust
                            & NGO</div>
                        <div class="about-feature"><i class="fa-solid fa-circle-check"></i> Professional stage &
                            performance training</div>
                        <div class="about-feature"><i class="fa-solid fa-circle-check"></i> International festival
                            participation</div>
                        <div class="about-feature"><i class="fa-solid fa-circle-check"></i> Cultural development for
                            youth artists</div>
                    </div>
                    <div style="display:flex;gap:1rem;flex-wrap:wrap;">
                        <a href="/creatica_theater_hub/user/ourprogram" class="btn btn-theme1">Our Programs <i class="fa-solid fa-arrow-right"
                                style="margin-left:6px"></i></a>
                        <a href="/creatica_theater_hub/user/contact" class="btn btn-theme2">Contact Us</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="rainbow-bar"></div>

    <!-- ── MISSION & VISION ── -->
    <section class="section mission-section" id="mission">
        <div class="section-inner">
            <h2 class="section-title reveal">Mission & Vision</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">The purpose and direction that drives everything we do at Creatica.</p>
            <div class="mv-grid">
                <div class="mv-card mv-mission reveal">
                    <div class="mv-icon"><i class="fa-solid fa-bullseye"></i></div>
                    <div class="mv-title">Our Mission</div>
                    <p class="mv-text">To inspire and empower individuals through performing arts by providing
                        professional training, creative opportunities and cultural exchange programs that develop
                        confidence, talent and artistic expression in youth.</p>
                </div>
                <div class="mv-card mv-vision reveal">
                    <div class="mv-icon"><i class="fa-solid fa-eye"></i></div>
                    <div class="mv-title">Our Vision</div>
                    <p class="mv-text">To become a leading performing arts hub that promotes creative expression,
                        cultural heritage and artistic excellence at national and international levels — making art
                        accessible to every young person.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- ── WHY CHOOSE US ── -->
    <section class="why-section" id="why">
        <h2 class="section-title reveal" style="margin-bottom:0.5rem">Why Choose Creatica</h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal">What makes Creatica Theatre Hub the right place for your creative journey.
        </p>
        <div class="why-grid">
            <div class="why-card reveal">
                <div class="why-icon"><i class="fa-solid fa-graduation-cap"></i></div>
                <div class="why-title">Professional Training</div>
                <p class="why-text">Learn from experienced artists and trainers with real stage and industry
                    backgrounds.</p>
            </div>
            <div class="why-card reveal">
                <div class="why-icon"><i class="fa-solid fa-masks-theater"></i></div>
                <div class="why-title">Stage Exposure</div>
                <p class="why-text">Participate in live theatre productions and cultural events from your very first
                    term.</p>
            </div>
            <div class="why-card reveal">
                <div class="why-icon"><i class="fa-solid fa-lightbulb"></i></div>
                <div class="why-title">Creative Workshops</div>
                <p class="why-text">Dedicated workshops for acting, dance, music and theatre that challenge and inspire.
                </p>
            </div>
            <div class="why-card reveal">
                <div class="why-icon"><i class="fa-solid fa-globe"></i></div>
                <div class="why-title">International Events</div>
                <p class="why-text">Unique opportunities to perform at global festivals — including Thailand, and more!
                </p>
            </div>
        </div>
    </section>

    <!-- ── TEAM ── -->
    <section class="section team-section" id="team">
        <div class="section-inner">
            <h2 class="section-title reveal">Our Team</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">The dedicated artists and trainers who bring Creatica's vision to life
                every day.</p>
            <div class="team-grid">
                <div class="team-card reveal">
                    <div class="team-img-wrap">
                        <img src="/content/images/team1.jpg" alt="Founder" onerror="this.style.display='none'">
                        <div class="team-img-placeholder"><i class="fa-solid fa-user"></i></div>
                        <div class="team-role-badge">Founder & Director</div>
                    </div>
                    <div class="team-body">
                        <div class="team-name">Founder Name</div>
                        <div class="team-desc">Theatre Director & Creative Head</div>
                        <div class="team-socials">
                            <a href="#"><i class="fa-brands fa-instagram"></i></a>
                            <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                            <a href="#"><i class="fa-brands fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
                <div class="team-card reveal">
                    <div class="team-img-wrap">
                        <img src="/content/images/team2.jpg" alt="Dance Trainer" onerror="this.style.display='none'">
                        <div class="team-img-placeholder"><i class="fa-solid fa-user"></i></div>
                        <div class="team-role-badge" style="background:#2E6F95">Dance Trainer</div>
                    </div>
                    <div class="team-body">
                        <div class="team-name">Trainer Name</div>
                        <div class="team-desc">Professional Dance Trainer</div>
                        <div class="team-socials">
                            <a href="#"><i class="fa-brands fa-instagram"></i></a>
                            <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                            <a href="#"><i class="fa-brands fa-youtube"></i></a>
                        </div>
                    </div>
                </div>
                <div class="team-card reveal">
                    <div class="team-img-wrap">
                        <img src="/content/images/team3.jpg" alt="Acting Coach" onerror="this.style.display='none'">
                        <div class="team-img-placeholder"><i class="fa-solid fa-user"></i></div>
                        <div class="team-role-badge" style="background:#0EB555">Acting Coach</div>
                    </div>
                    <div class="team-body">
                        <div class="team-name">Trainer Name</div>
                        <div class="team-desc">Acting Coach & Drama Instructor</div>
                        <div class="team-socials">
                            <a href="#"><i class="fa-brands fa-instagram"></i></a>
                            <a href="#"><i class="fa-brands fa-linkedin-in"></i></a>
                            <a href="#"><i class="fa-solid fa-envelope"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- ── ACHIEVEMENTS ── -->
    <section class="achievements-section" id="achievements">
        <h2 class="section-title reveal" style="margin-bottom:0.5rem">Our Achievements</h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal" style="color:rgba(255,255,255,0.65)">Numbers that reflect our commitment to
            nurturing creative talent.</p>
        <div class="ach-grid">
            <div class="ach-card reveal">
                <div class="ach-icon"><img src="/content/images/Icons/graduate-hat.png" width="30px" alt=""></div>
                <div class="ach-num" data-target="500">0</div>
                <div class="ach-label">Students Trained</div>
            </div>
            <div class="ach-card reveal">
                <div class="ach-icon"><img src="/content/images/Icons/theater-mask.png" width="30px" alt=""></div>
                <div class="ach-num" data-target="50">0</div>
                <div class="ach-label">Theatre Performances</div>
            </div>
            <div class="ach-card reveal">
                <div class="ach-icon"><img src=" /content/images/Icons/trophy (1).png" width="30px" alt=""></div>
                <div class="ach-num" data-target="20">0</div>
                <div class="ach-label">Workshops Conducted</div>
            </div>
            <div class="ach-card reveal">
                <div class="ach-icon"><img src="images/Icons/earth.png" width="30px" alt=""></div>
                <div class="ach-num" data-target="5">0</div>
                <div class="ach-label">International Festivals</div>
            </div>
        </div>
    </section>

    <!-- ── OUR VALUES ── -->
    <section class="section values-section">
        <div class="section-inner">
            <h2 class="section-title reveal">Our Core Values</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">The principles that guide every performance, workshop and program at
                Creatica.</p>
            <div class="values-grid">
                <div class="value-card reveal">
                    <div class="value-icon"><img src="/content/images/Icons/palette.png" width="30px" alt=""></div>
                    <div class="value-title">Creative Excellence</div>
                    <p class="value-text">We pursue the highest standards of artistic craft in every performance and
                        program we deliver.</p>
                </div>
                <div class="value-card reveal">
                    <div class="value-icon"><img src="/content/images/Icons/handshake.png" width="30px" alt=""></div>
                    <div class="value-title">Inclusive Access</div>
                    <p class="value-text">Art belongs to everyone — we actively work to remove financial and social
                        barriers to participation.</p>
                </div>
                <div class="value-card reveal">
                    <div class="value-icon"><img src="/content/images/Icons/plant.png" width="30px" alt=""></div>
                    <div class="value-title">Youth Empowerment</div>
                    <p class="value-text">Young people are at the centre of our work — we invest in their potential and
                        creative future.</p>
                </div>
                <div class="value-card reveal">
                    <div class="value-icon"><img src="/content/images/Icons/government.png" width="30px" alt=""></div>
                    <div class="value-title">Cultural Heritage</div>
                    <p class="value-text">We celebrate and preserve traditional art forms while embracing contemporary
                        creative expression.</p>
                </div>
                <div class="value-card reveal">
                    <div class="value-icon"><img src="/content/images/Icons/idea.png" width="30px" alt=""></div>
                    <div class="value-title">Innovation</div>
                    <p class="value-text">We constantly explore new forms and methods to keep our programs exciting,
                        relevant and impactful.</p>
                </div>
                <div class="value-card reveal">
                    <div class="value-icon"><img src="/content/images/Icons/worldwide.png" width="30px" alt=""></div>
                    <div class="value-title">Global Vision</div>
                    <p class="value-text">We connect local talent with international platforms, giving artists a stage
                        beyond boundaries.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- ── JOURNEY TIMELINE ── -->
    <section class="section history-section">
        <div class="section-inner">
            <h2 class="section-title reveal">Our Journey</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">Key milestones in the Creatica story — from a local dream to an
                international stage.</p>
            <div class="timeline">
                <div class="timeline-item reveal">
                    <div class="timeline-dot"></div>
                    <div class="timeline-year">Foundation</div>
                    <div class="timeline-title">Creatica Theatre Hub Founded</div>
                    <p class="timeline-text">Creatica Charitable Trust was established in Siddhpur, Gujarat with a
                        vision to make performing arts accessible to every young person.</p>
                </div>
                <div class="timeline-item reveal">
                    <div class="timeline-dot" style="background:#2E6F95;box-shadow:0 0 0 3px #2E6F95"></div>
                    <div class="timeline-year" style="background:#2E6F95">First Programs</div>
                    <div class="timeline-title">Dance, Drama & Acting Programs Launched</div>
                    <p class="timeline-text">Our first batch of students joined programs in dance, drama and acting,
                        marking the beginning of our training journey.</p>
                </div>
                <div class="timeline-item reveal">
                    <div class="timeline-dot" style="background:#0EB555;box-shadow:0 0 0 3px #0EB555"></div>
                    <div class="timeline-year" style="background:#0EB555">Milestone</div>
                    <div class="timeline-title">500+ Students Trained</div>
                    <p class="timeline-text">Creatica reached a landmark achievement of training over 500 students
                        across all performing arts disciplines.</p>
                </div>
                <div class="timeline-item reveal">
                    <div class="timeline-dot" style="background:#F2C94C;box-shadow:0 0 0 3px #F2C94C"></div>
                    <div class="timeline-year" style="background:#F2C94C;color:#1a1a1a">International</div>
                    <div class="timeline-title">6th International PEARL Festival – Thailand 🇹🇭</div>
                    <p class="timeline-text">Creatica Theatre Hub represented India at the prestigious 6th International
                        PEARL World Heritage Site Festival in Thailand — a proud moment for the entire organisation.</p>
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

        /* ── COUNTER ANIMATION ── */
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