<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
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
	


    <!------------------------------------HERO SECTION----------------------------------------------->

    <!-- ── HERO CAROUSEL ── -->
<div class="hero-carousel" id="heroCarousel">
    <div class="carousel-track" id="carouselTrack">
        <!-- Slide 1 -->
        <div class="carousel-slide">
            <img src='<c:url value="/Resources/user/images/Creatica Theatre Hub at the 6th International PEARL World Heritage Site Festival – Thailand 🇹🀮heic (1).jpg"></c:url>'
			  alt="Creatica at Thailand Festival"
                 onerror="this.style.display='none'">
            <div class="slide-overlay">
                <div class="slide-content">
                    <div class="slide-tag"> International Performance</div>
                    <h1 class="slide-title">Theatre is an art<br>of <span>LIFE</span></h1>
                    <p class="slide-desc">Creatica Theater Hub at the 6th International PEARL World Heritage Site Festival – Thailand 🇹🇭</p>
                    <div class="slide-btns">
                        <a href="/creatica_theater_hub/user/ourprogram" class="btn btn-theme1">Explore Programs</a>
                        <a href="/creatica_theater_hub/user/about" class="btn btn-outline-orange" style="border-color:#fff;color:#fff">About Us</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Slide 2 -->
        <div class="carousel-slide">
            <img src='<c:url value="/Resources/user/images/Creatica Theatre Hub at the 6th International PEARL World Heritage Site Festival – Thailand 🇹🀮heic.jpg"></c:url>'
                 alt="Creatica Performance"
                 onerror="this.style.display='none'">
            <div class="slide-overlay">
                <div class="slide-content">
                    <div class="slide-tag"> Nurturing Young Talent</div>
                    <h1 class="slide-title">Where <span>Creativity</span><br>Comes Alive</h1>
                    <p class="slide-desc">Professional training in dance, drama, acting and music for aspiring artists of all ages.</p>
                    <div class="slide-btns">
                        <a href="/creatica_theater_hub/user/ourprogram" class="btn btn-theme1">Join a Program</a>
                        <a href="/creatica_theater_hub/user/about/volunteer" class="btn" style="background:transparent;color:#fff;border:2px solid rgba(255,255,255,0.5)">Volunteer</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Slide 3 -->
        <div class="carousel-slide">
            <div style="height:500px;background:linear-gradient(135deg,#1F2933,#2E6F95)"></div>
            <div class="slide-overlay">
                <div class="slide-content">
                    <div class="slide-tag"> Make a Difference</div>
                    <h1 class="slide-title">Support <span>Art &</span><br><span>Culture</span></h1>
                    <p class="slide-desc">Your contribution helps us reach more young artists and build a stronger creative community.</p>
                    <div class="slide-btns">
                        <a href="/creatica_theater_hub/user/donation" class="btn btn-theme3">Donate Now</a>
                        <a href="/creatica_theater_hub/user/contact" class="btn" style="background:transparent;color:#fff;border:2px solid rgba(255,255,255,0.5)">Contact Us</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <button class="carousel-btn carousel-prev" id="carouselPrev"><i class="fa-solid fa-chevron-left"></i></button>
    <button class="carousel-btn carousel-next" id="carouselNext"><i class="fa-solid fa-chevron-right"></i></button>
    <div class="carousel-dots" id="carouselDots">
        <button class="carousel-dot active" data-index="0"></button>
        <button class="carousel-dot" data-index="1"></button>
        <button class="carousel-dot" data-index="2"></button>
    </div>
</div>

<div class="rainbow-bar"></div>

  <!--------------------------------- About-------------------------------------------->

    <section class="section about-section" id="about">
    <div class="about-grid reveal">
        <div class="about-img-wrap">
        
            <img src='<c:url value="/Resources/user/images/creatica_logo-removebg-preview.png"></c:url>' alt="Creatica Theatre Hub"
                 onerror="this.style.padding='3rem';this.style.background='linear-gradient(135deg,#F8F9FA,#e8f0f7)'">
            <div class="about-badge">Est. · Creatica Trust</div>
        </div>
        <div class="about-text-block">
            <div class="about-tag">Who We Are</div>
            <h2 class="about-heading">About <span>Creatica</span><br>Theatre Hub</h2>
            <p class="about-body">Creatica Theatre Hub is a creative platform dedicated to nurturing young talent in theatre, dance, acting and performing arts. We provide professional training, stage exposure and cultural development for aspiring artists.</p>
            <p class="about-body">As a registered Charitable Trust, we are committed to making art accessible to every young person — regardless of background — and to building a vibrant artistic community in Gujarat and beyond.</p>
            <div class="about-features">
                <div class="about-feature"><i class="fa-solid fa-circle-check"></i> Registered Charitable Trust & NGO</div>
                <div class="about-feature"><i class="fa-solid fa-circle-check"></i> Professional stage and performance training</div>
                <div class="about-feature"><i class="fa-solid fa-circle-check"></i> Cultural development for youth artists</div>
                <div class="about-feature"><i class="fa-solid fa-circle-check"></i> International performances & festivals</div>
            </div>
            <a href="/creatica_theater_hub/user/about" class="btn btn-theme1">Read More <i class="fa-solid fa-arrow-right" style="margin-left:6px"></i></a>
        </div>
    </div>
</section>

<div class="rainbow-bar"></div>

    <!-------------------------------OUR PROGRAM--------------------------------------->

   <section class="section programs-section" id="programs">
    <h2 class="section-title reveal">Our Programs</h2>
    <div class="section-divider reveal"></div>
    <p class="section-subtitle reveal">Professional arts training that transforms young talent into confident, creative performers.</p>
    <div class="programs-grid">
        <div class="program-card reveal">
            <div class="program-icon"><i class="fa-solid fa-music"></i></div>
            <h4>Dance</h4>
            <p>Professional dance training, choreography and stage performance for all skill levels.</p>
            <a href="/creatica_theater_hub/user/ourprogram/dance" class="btn btn-theme2">Apply Now</a>
        </div>
        <div class="program-card reveal">
            <div class="program-icon"><i class="fa-solid fa-masks-theater"></i></div>
            <h4>Drama</h4>
            <p>Theatre performance, script writing and stage acting techniques from the ground up.</p>
            <a href="/creatica_theater_hub/user/ourprogram/drama" class="btn btn-theme2">Apply Now</a>
        </div>
        <div class="program-card reveal">
            <div class="program-icon"><i class="fa-solid fa-video"></i></div>
            <h4>Acting</h4>
            <p>Camera acting, film performance and on-screen presence training for aspiring actors.</p>
            <a href="/creatica_theater_hub/user/ourprogram/acting" class="btn btn-theme2">Apply Now</a>
        </div>
        <div class="program-card reveal">
            <div class="program-icon"><i class="fa-solid fa-guitar"></i></div>
            <h4>Music</h4>
            <p>Learn rhythm, voice training and a variety of musical instruments from professionals.</p>
            <a href="/creatica_theater_hub/user/ourprogram/music" class="btn btn-theme2">Apply Now</a>
        </div>
        <div class="program-card reveal" style="grid-column: 1/-1; max-width:260px; margin:0 auto;">
            <div class="program-icon"><i class="fa-solid fa-star"></i></div>
            <h4>Personality Development</h4>
            <p>Build confidence, communication skills and a winning stage presence.</p>
            <a href="/creatica_theater_hub/user/ourprogram/pd" class="btn btn-theme2">Apply Now</a>
        </div>
    </div>
</section>

<!--------------------------------COUNTING------------------------------------------------->

        <section class="impact-section">
    <div class="impact-grid">
        <div class="impact-item reveal">
            <div class="impact-icon"><img src="/content/images/Icons/graduate-hat.png" width="30px" alt=""></div>
            <div class="impact-num" data-target="500">0</div>
            <div class="impact-label">Students Trained</div>
        </div>
        <div class="impact-item reveal">
            <div class="impact-icon"><img src="/content/images/Icons/theater-mask.png" width="30px" alt=""></div>
            <div class="impact-num" data-target="120">0</div>
            <div class="impact-label">Volunteers</div>
        </div>
        <div class="impact-item reveal">
            <div class="impact-icon"><img src=" /content/images/Icons/trophy (1).png" width="30px" alt=""></div>
            <div class="impact-num" data-target="50">0</div>
            <div class="impact-label">Performances</div>
        </div>
        <div class="impact-item reveal">
            <div class="impact-icon"><img src="/content/images/Icons/heart.png" width="30px" alt=""></div>
            <div class="impact-num" data-target="25">0</div>
            <div class="impact-label">Lakh+ Donations</div>
        </div>
    </div>
</section>
<!-----------------------------------------Donation Section----------------------------------------------------->

    <section class="donate-strip" id="donate">
    <div class="donate-strip-inner">
        <div class="donate-strip-layout">

            <!-- LEFT: Text + Amounts + Buttons -->
            <div class="donate-strip-left">
                <div class="donate-strip-eyebrow">Support the Arts</div>
                <h2 class="donate-strip-heading">Help Keep the<br><span>Curtain Rising</span></h2>
                <p class="donate-strip-sub">Your donation directly funds young artists, stage productions and free training for underprivileged youth across Gujarat.</p>

                <div class="donate-amounts">
                    <button class="amt-pill" onclick="selectAmt(this)">₹500</button>
                    <button class="amt-pill " onclick="selectAmt(this)">₹1,000</button>
                    <button class="amt-pill" onclick="selectAmt(this)">₹2,500</button>
                    <button class="amt-pill" onclick="selectAmt(this)">₹5,000</button>
                    <button class="amt-pill" onclick="selectAmt(this)">Custom</button>
                </div>

                <div class="donate-strip-actions">
                    <a href="/creatica_theater_hub/user/donation" class="btn-donate-primary">
                        <i class="fa-solid fa-heart" style="font-size:13px"></i>
                        Donate Now
                    </a>
                    <a href="/creatica_theater_hub/user/contact" class="btn-donate-secondary">
                        <i class="fa-solid fa-handshake" style="font-size:13px"></i>
                        Become a Sponsor
                    </a>
                </div>

                <div class="donate-80g-note">
                    <span class="donate-80g-dot"></span>
                    80G Tax Exemption Eligible &nbsp;·&nbsp; CSR Funding Accepted &nbsp;·&nbsp; Registered NGO
                </div>
            </div>

            <!-- RIGHT: 3 mini stat cards -->
            <div class="donate-strip-right">
                <div class="donate-stat-card">
                    <div class="stat-icon-wrap stat-icon-orange">
                        <i class="fa-solid fa-graduation-cap" style="color:#F29B2E;font-size:16px"></i>
                    </div>
                    <div>
                        <div class="stat-text-val">500+</div>
                        <div class="stat-text-lbl">Students Supported</div>
                    </div>
                </div>
                <div class="donate-stat-card">
                    <div class="stat-icon-wrap stat-icon-green">
                        <i class="fa-solid fa-masks-theater" style="color:#0EB555;font-size:16px"></i>
                    </div>
                    <div>
                        <div class="stat-text-val">50+</div>
                        <div class="stat-text-lbl">Performances Funded</div>
                    </div>
                </div>
                <div class="donate-stat-card">
                    <div class="stat-icon-wrap stat-icon-blue">
                        <i class="fa-solid fa-heart" style="color:#296498;font-size:16px"></i>
                    </div>
                    <div>
                        <div class="stat-text-val">₹25 Lakh+</div>
                        <div class="stat-text-lbl">Raised So Far</div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
 

<!---------------------------------------------Event Section----------------------------------------------------->

    <section class="section events-section" id="events">
    <h2 class="section-title reveal">Upcoming Events</h2>
    <div class="section-divider reveal"></div>
    <p class="section-subtitle reveal">Don't miss our exciting performances, workshops and creative festivals.</p>
    <div class="events-grid">
        <div class="event-card reveal">
            <div class="event-img-wrap">
                <img src="/content/images/event1.jpg" alt="Theatre Festival" onerror="this.style.display='none'">
                <div class="event-placeholder"><img src="/content/images/Icons/theater-mask.png" alt=""></div>
                <div class="event-badge">Upcoming</div>
            </div>
            <div class="event-body">
                <div class="event-date"><i class="fa-regular fa-calendar" style="margin-right:5px"></i>Coming Soon</div>
                <h5 class="event-title">Theatre Festival</h5>
                <p class="event-desc">Annual theatre festival showcasing young talent from across the region.</p>
            </div>
        </div>
        <div class="event-card reveal">
            <div class="event-img-wrap">
                <img src="/content/images/event2.jpg" alt="Dance Competition" onerror="this.style.display='none'">
                <div class="event-placeholder"><img src="/content/images/Icons/dancer.png" alt=""></div>
                <div class="event-badge" style="background:#0EB555">Open</div>
            </div>
            <div class="event-body">
                <div class="event-date"><i class="fa-regular fa-calendar" style="margin-right:5px"></i>Coming Soon</div>
                <h5 class="event-title">Dance Competition</h5>
                <p class="event-desc">Creative dance performances by our talented students and guest artists.</p>
            </div>
        </div>
        <div class="event-card reveal">
            <div class="event-img-wrap">
                <img src="/content/images/event3.jpg" alt="Acting Workshop" onerror="this.style.display='none'">
                <div class="event-placeholder"><img src="/content/images/Icons/music.png" alt=""></div>
                <div class="event-badge" style="background:#296498">Workshop</div>
            </div>
            <div class="event-body">
                <div class="event-date"><i class="fa-regular fa-calendar" style="margin-right:5px"></i>Coming Soon</div>
                <h5 class="event-title">Acting Workshop</h5>
                <p class="event-desc">Professional acting training session led by industry experts.</p>
            </div>
        </div>
    </div>
</section>

<!-----------------------------------------Gallery section--------------------------------------------------------->

    <section class="section gallery-section" id="gallery">
    <h2 class="section-title reveal">Our Gallery</h2>
    <div class="section-divider reveal"></div>
    <p class="section-subtitle reveal">Glimpses of our performances, workshops and moments of creativity.</p>
    <div class="gallery-grid">
        <div class="gallery-item reveal">
            <img src="/content/images/gallery1.jpg" alt="Gallery 1" onerror="this.style.display='none'">
            <div class="gallery-placeholder">🎭</div>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
        <div class="gallery-item reveal" style="background:linear-gradient(135deg,#0EB555,#2E6F95)">
            <img src="/content/images/gallery2.jpg" alt="Gallery 2" onerror="this.style.display='none'">
            <div class="gallery-placeholder">🎶</div>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
        <div class="gallery-item reveal" style="background:linear-gradient(135deg,#F29B2E,#F2C94C)">
            <img src="/content/images/gallery3.jpg" alt="Gallery 3" onerror="this.style.display='none'">
            <div class="gallery-placeholder">💃</div>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
        <div class="gallery-item reveal" style="background:linear-gradient(135deg,#296498,#1F2933)">
            <img src="/content/images/gallery4.jpg" alt="Gallery 4" onerror="this.style.display='none'">
            <div class="gallery-placeholder">🎬</div>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
    </div>
    <div style="text-align:center; margin-top:2.5rem;">
        <a href="/creatica_theater_hub/user/gallery" class="btn btn-theme1">View Full Gallery <i class="fa-solid fa-images" style="margin-left:6px"></i></a>
    </div>
</section>

<!-- -----------------------------------Testimonial Section--------------------------------------------------- -->
    <section class="testimonial-section" id="testimonials">
    <h2 class="section-title reveal">What People Say</h2>
    <div class="section-divider reveal"></div>
    <p class="section-subtitle reveal">Hear from the students, artists and volunteers who are part of our journey.</p>
    <div class="testimonials-grid">
        <div class="testimonial-card reveal">
            <div class="t-quote">"</div>
            <p class="t-text">Creatica Theatre Hub gave me confidence, stage experience and a second family. The training here is truly world-class.</p>
            <div class="t-author">
                <div class="t-avatar" style="background:#F29B2E">S</div>
                <div>
                    <div class="t-name">Priya Sharma</div>
                    <div class="t-role">Student · Dance Program</div>
                    <div class="t-stars">
                        <i class="fa-solid fa-star fa-2xs" style="color: rgb(235, 239, 244);"></i>
                        <i class="fa-solid fa-star fa-2xs" style="color: rgb(235, 239, 244);"></i>
                        <i class="fa-solid fa-star fa-2xs" style="color: rgb(235, 239, 244);"></i>
                        <i class="fa-solid fa-star fa-2xs" style="color: rgb(235, 239, 244);"></i>
                        <i class="fa-solid fa-star fa-2xs" style="color: rgb(235, 239, 244);"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="testimonial-card reveal">
            <div class="t-quote">"</div>
            <p class="t-text">Amazing place for learning acting and theatre arts. The mentors are experienced and deeply passionate about the craft.</p>
            <div class="t-author">
                <div class="t-avatar" style="background:#2E6F95">A</div>
                <div>
                    <div class="t-name">Rahul Mehta</div>
                    <div class="t-role">Artist · Acting Program</div>
                    <div class="t-stars">
                         <i class="fa-solid fa-star fa-2xs" style="color: rgb(255, 212, 59);"></i>
                         <i class="fa-solid fa-star fa-2xs" style="color: rgb(255, 212, 59);"></i>
                         <i class="fa-solid fa-star fa-2xs" style="color: rgb(255, 212, 59);"></i>
                         <i class="fa-solid fa-star fa-2xs" style="color: rgb(255, 212, 59);"></i>
                         <i class="fa-solid fa-star fa-2xs" style="color: rgb(255, 212, 59);"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="testimonial-card reveal">
            <div class="t-quote">"</div>
            <p class="t-text">Great platform for young creative talent. Volunteering here has been one of the most rewarding experiences of my life.</p>
            <div class="t-author">
                <div class="t-avatar" style="background:#0EB555">V</div>
                <div>
                    <div class="t-name">Anita Patel</div>
                    <div class="t-role">Volunteer · Events Team</div>
                    <div class="t-stars">
                        <i class="fa-solid fa-star fa-2xs" style="color: rgb(255, 212, 59);"></i>
                        <i class="fa-solid fa-star fa-2xs" style="color: rgb(255, 212, 59);"></i>
                        <i class="fa-solid fa-star fa-2xs" style="color: rgb(255, 212, 59);"></i>
                        <i class="fa-solid fa-star fa-2xs" style="color: rgb(255, 212, 59);"></i>
                        <i class="fa-solid fa-star fa-2xs" style="color: rgb(255, 212, 59);"></i>
                    </div>
                </div>
            </div>
            
            
        </div>
    </div>
</section>

    <!-- -----------------------------Footer css------------------------------------------------ -->
    
   <jsp:include page="../user/footer.jsp"></jsp:include>
   
   <!-- -----------------------------Footer css end------------------------------------------------ -->
   
   
    <jsp:include page="../user/links/Userfootlink.jsp"></jsp:include>
     <script>
        
    /* ── CAROUSEL ── */
    const track = document.getElementById('carouselTrack');
    const dots = document.querySelectorAll('.carousel-dot');
    let current = 0, total = 3, timer;

    function goTo(n) {
        current = (n + total) % total;
        track.style.transform = `translateX(-${current * 100}%)`;
        dots.forEach((d, i) => d.classList.toggle('active', i === current));
    }
    document.getElementById('carouselPrev').addEventListener('click', () => { goTo(current - 1); resetTimer(); });
    document.getElementById('carouselNext').addEventListener('click', () => { goTo(current + 1); resetTimer(); });
    dots.forEach(d => d.addEventListener('click', () => { goTo(+d.dataset.index); resetTimer(); }));
    function resetTimer() { clearInterval(timer); timer = setInterval(() => goTo(current + 1), 5000); }
    timer = setInterval(() => goTo(current + 1), 5000);

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
            else el.textContent = target;
        }
        requestAnimationFrame(step);
    }

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

    // donation pill

    function selectAmt(el) {
    document.querySelectorAll('.amt-pill').forEach(p => p.classList.remove('active'));
    el.classList.add('active');
}
     </script>
</body>

</html>