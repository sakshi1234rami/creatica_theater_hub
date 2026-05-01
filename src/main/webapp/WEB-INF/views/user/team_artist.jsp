<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About page-Team&Artist</title>
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



    <!----------------------------------------Team---------------------------------------------->
    <!-- ── BREADCRUMB HERO ── -->
    <section class="breadcrumb-hero">
        <div class="breadcrumb-hero-inner">
            <div>
                <div class="breadcrumb-eyebrow">
                    <i class="fa-solid fa-circle-dot"></i>
                    Creatica Charitable Trust
                </div>
                <h1 class="breadcrumb-title">Team <span>& Artist</span></h1>
            </div>
            <div class="breadcrumb-trail">
                <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house" style="margin-right:4px"></i>Home</a>
                <span class="sep">/</span>
                <span class="active">About-us</span>
                <span class="sep">/</span>
                <span class="active">Team & Artists</span>
            </div>
        </div>
    </section>

    <!-- FILTER BAR -->
    <div class="filter-bar">
        <div class="filter-inner">
            <div class="search-wrap">
                <i class="fa-solid fa-search"></i>
                <input type="text" placeholder="Search team members...">
            </div>
            <div class="filter-wrap">
                <i class="fa-solid fa-filter"></i>
                <select>
                    <option>All Departments</option>
                    <option>Dance</option>
                    <option>Drama</option>
                    <option>Acting</option>
                    <option>Music</option>
                    <option>Administration</option>
                </select>
            </div>
        </div>
    </div>

    <!-- TEAM SECTION -->
    <section class="team-section">
        <div class="team-container">
            <div class="section-header">
                <div class="section-tag">
                    <i class="fa-solid fa-users"></i>
                    Our People
                </div>
                <h2 class="section-title">Team <span>&</span> Staff</h2>
                <div class="section-divider"></div>
                <p class="section-subtitle">Meet the talented professionals dedicated to fostering excellence in
                    performing arts</p>
            </div>

            <div class="team-grid">
                <!-- Team Member 1 -->
                <div class="team-card">
                    <div class="team-img-wrap">
                        <i class="fa-solid fa-user-tie team-placeholder"></i>
                        <span class="member-role-badge">Director</span>
                    </div>
                    <div class="team-body">
                        <h3 class="team-name">Rajesh Patel</h3>
                        <p class="team-position">Executive Director</p>
                        <p class="team-bio">Visionary leader with 25+ years in arts education and cultural development.
                        </p>
                        <div class="team-socials">
                            <a href="#" class="team-social-link" title="LinkedIn"><i
                                    class="fa-brands fa-linkedin-in"></i></a>
                            <a href="#" class="team-social-link" title="Twitter"><i
                                    class="fa-brands fa-twitter"></i></a>
                            <a href="#" class="team-social-link" title="Email"><i class="fa-solid fa-envelope"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Team Member 2 -->
                <div class="team-card">
                    <div class="team-img-wrap">
                        <i class="fa-solid fa-user team-placeholder"></i>
                        <span class="member-role-badge">Dance Head</span>
                    </div>
                    <div class="team-body">
                        <h3 class="team-name">Priya Sharma</h3>
                        <p class="team-position">Dance Department Head</p>
                        <p class="team-bio">Expert in classical and contemporary dance with international exposure.</p>
                        <div class="team-socials">
                            <a href="#" class="team-social-link" title="LinkedIn"><i
                                    class="fa-brands fa-linkedin-in"></i></a>
                            <a href="#" class="team-social-link" title="Instagram"><i
                                    class="fa-brands fa-instagram"></i></a>
                            <a href="#" class="team-social-link" title="Email"><i class="fa-solid fa-envelope"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Team Member 3 -->
                <div class="team-card">
                    <div class="team-img-wrap">
                        <i class="fa-solid fa-user team-placeholder"></i>
                        <span class="member-role-badge">Drama Head</span>
                    </div>
                    <div class="team-body">
                        <h3 class="team-name">Arjun Desai</h3>
                        <p class="team-position">Drama Department Head</p>
                        <p class="team-bio">Award-winning dramatist and theatre director with 20 years experience.</p>
                        <div class="team-socials">
                            <a href="#" class="team-social-link" title="LinkedIn"><i
                                    class="fa-brands fa-linkedin-in"></i></a>
                            <a href="#" class="team-social-link" title="Twitter"><i
                                    class="fa-brands fa-twitter"></i></a>
                            <a href="#" class="team-social-link" title="Email"><i class="fa-solid fa-envelope"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Team Member 4 -->
                <div class="team-card">
                    <div class="team-img-wrap">
                        <i class="fa-solid fa-user team-placeholder"></i>
                        <span class="member-role-badge">Music Head</span>
                    </div>
                    <div class="team-body">
                        <h3 class="team-name">Alisha Kapoor</h3>
                        <p class="team-position">Music Department Head</p>
                        <p class="team-bio">Accomplished musician specializing in Indian classical and fusion music.</p>
                        <div class="team-socials">
                            <a href="#" class="team-social-link" title="LinkedIn"><i
                                    class="fa-brands fa-linkedin-in"></i></a>
                            <a href="#" class="team-social-link" title="Instagram"><i
                                    class="fa-brands fa-instagram"></i></a>
                            <a href="#" class="team-social-link" title="Email"><i class="fa-solid fa-envelope"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Team Member 5 -->
                <div class="team-card">
                    <div class="team-img-wrap">
                        <i class="fa-solid fa-user team-placeholder"></i>
                        <span class="member-role-badge">Instructor</span>
                    </div>
                    <div class="team-body">
                        <h3 class="team-name">Vikram Singh</h3>
                        <p class="team-position">Senior Acting Instructor</p>
                        <p class="team-bio">Professional actor with credits in films, television, and theatre
                            productions.</p>
                        <div class="team-socials">
                            <a href="#" class="team-social-link" title="LinkedIn"><i
                                    class="fa-brands fa-linkedin-in"></i></a>
                            <a href="#" class="team-social-link" title="Twitter"><i
                                    class="fa-brands fa-twitter"></i></a>
                            <a href="#" class="team-social-link" title="Email"><i class="fa-solid fa-envelope"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Team Member 6 -->
                <div class="team-card">
                    <div class="team-img-wrap">
                        <i class="fa-solid fa-user team-placeholder"></i>
                        <span class="member-role-badge">Coordinator</span>
                    </div>
                    <div class="team-body">
                        <h3 class="team-name">Neha Gupta</h3>
                        <p class="team-position">Programs Coordinator</p>
                        <p class="team-bio">Dynamic professional managing community outreach and student engagement.</p>
                        <div class="team-socials">
                            <a href="#" class="team-social-link" title="LinkedIn"><i
                                    class="fa-brands fa-linkedin-in"></i></a>
                            <a href="#" class="team-social-link" title="Instagram"><i
                                    class="fa-brands fa-instagram"></i></a>
                            <a href="#" class="team-social-link" title="Email"><i class="fa-solid fa-envelope"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Team Member 7 -->
                <div class="team-card">
                    <div class="team-img-wrap">
                        <i class="fa-solid fa-user team-placeholder"></i>
                        <span class="member-role-badge">Instructor</span>
                    </div>
                    <div class="team-body">
                        <h3 class="team-name">Sanjay Kumar</h3>
                        <p class="team-position">Choreographer</p>
                        <p class="team-bio">Talented choreographer blending traditional and modern dance forms.</p>
                        <div class="team-socials">
                            <a href="#" class="team-social-link" title="LinkedIn"><i
                                    class="fa-brands fa-linkedin-in"></i></a>
                            <a href="#" class="team-social-link" title="Instagram"><i
                                    class="fa-brands fa-instagram"></i></a>
                            <a href="#" class="team-social-link" title="Email"><i class="fa-solid fa-envelope"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Team Member 8 -->
                <div class="team-card">
                    <div class="team-img-wrap">
                        <i class="fa-solid fa-user team-placeholder"></i>
                        <span class="member-role-badge">Manager</span>
                    </div>
                    <div class="team-body">
                        <h3 class="team-name">Anjali Nair</h3>
                        <p class="team-position">Operations Manager</p>
                        <p class="team-bio">Organized professional ensuring smooth operations and facility management.
                        </p>
                        <div class="team-socials">
                            <a href="#" class="team-social-link" title="LinkedIn"><i
                                    class="fa-brands fa-linkedin-in"></i></a>
                            <a href="#" class="team-social-link" title="Twitter"><i
                                    class="fa-brands fa-twitter"></i></a>
                            <a href="#" class="team-social-link" title="Email"><i class="fa-solid fa-envelope"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- FEATURED ARTISTS SECTION -->
    <section class="featured-section">
        <div class="featured-container">
            <div class="section-header" style="margin-bottom: 3rem;">
                <div class="section-tag">
                    <i class="fa-solid fa-star"></i>
                    Guest Artists
                </div>
                <h2 class="section-title">Featured <span>Artists</span></h2>
                <div class="section-divider"></div>
                <p class="section-subtitle">Renowned performers and mentors enriching our programs</p>
            </div>

            <div class="featured-grid">
                <!-- Featured Artist 1 -->
                <div class="featured-card">
                    <div class="featured-img-wrap">
                        <i class="fa-solid fa-user-astronaut featured-placeholder"></i>
                        <div class="featured-badge">
                            <i class="fa-solid fa-star"></i>
                            Guest Artist
                        </div>
                    </div>
                    <div class="featured-body">
                        <h3 class="featured-title">Dr. Anita Kapoor</h3>
                        <p class="featured-subtitle">Bharatanatyam Specialist</p>
                        <p class="featured-bio">Renowned classical dancer and choreographer with international acclaim.
                            Recipient of national awards and founder of her own dance school. Specializes in blending
                            traditional forms with contemporary expressions.</p>
                        <div class="featured-expertise">
                            <span class="expertise-tag"><i class="fa-solid fa-check"></i>Classical Dance</span>
                            <span class="expertise-tag"><i class="fa-solid fa-check"></i>Choreography</span>
                            <span class="expertise-tag"><i class="fa-solid fa-check"></i>Training</span>
                        </div>
                    </div>
                </div>

                <!-- Featured Artist 2 -->
                <div class="featured-card">
                    <div class="featured-img-wrap">
                        <i class="fa-solid fa-user-astronaut featured-placeholder"></i>
                        <div class="featured-badge">
                            <i class="fa-solid fa-star"></i>
                            Guest Artist
                        </div>
                    </div>
                    <div class="featured-body">
                        <h3 class="featured-title">Rohan Menon</h3>
                        <p class="featured-subtitle">Theatre Director</p>
                        <p class="featured-bio">Celebrated theatre director and playwright with productions across
                            national and international platforms. Known for innovative storytelling and directing
                            unconventional plays that challenge social norms.</p>
                        <div class="featured-expertise">
                            <span class="expertise-tag"><i class="fa-solid fa-check"></i>Direction</span>
                            <span class="expertise-tag"><i class="fa-solid fa-check"></i>Playwriting</span>
                            <span class="expertise-tag"><i class="fa-solid fa-check"></i>Acting</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- STATS SECTION -->
    <section class="stats-section">
        <div class="stats-container">
            <div class="stats-grid">
                <div class="stat-item">
                    <div class="stat-icon-wrap">
                        <i class="fa-solid fa-users"></i>
                    </div>
                    <div class="stat-num">50+</div>
                    <div class="stat-label">Team Members</div>
                </div>
                <div class="stat-item">
                    <div class="stat-icon-wrap">
                        <i class="fa-solid fa-star"></i>
                    </div>
                    <div class="stat-num">25+</div>
                    <div class="stat-label">Guest Artists</div>
                </div>
                <div class="stat-item">
                    <div class="stat-icon-wrap">
                        <i class="fa-solid fa-award"></i>
                    </div>
                    <div class="stat-num">100+</div>
                    <div class="stat-label">Awards & Recognitions</div>
                </div>
                <div class="stat-item">
                    <div class="stat-icon-wrap">
                        <i class="fa-solid fa-graduation-cap"></i>
                    </div>
                    <div class="stat-num">5000+</div>
                    <div class="stat-label">Students Trained</div>
                </div>
            </div>
        </div>
    </section>

    <!-- TESTIMONIALS SECTION -->
    <section class="testimonials-section">
        <div class="testimonials-container">
            <div class="section-header" style="margin-bottom: 3rem;">
                <div class="section-tag">
                    <i class="fa-solid fa-quote-left"></i>
                    What They Say
                </div>
                <h2 class="section-title">Testimonials</h2>
                <div class="section-divider"></div>
            </div>

            <div class="testimonials-grid">
                <!-- Testimonial 1 -->
                <div class="testimonial-card">
                    <div class="testimonial-quote">
                        <i class="fa-solid fa-quote-left"></i>
                    </div>
                    <p class="testimonial-text">Creatica has been instrumental in my journey as a performer. The
                        faculty's dedication and the supportive environment helped me grow both as an artist and as a
                        person.</p>
                    <div class="testimonial-author">
                        <div class="author-avatar">SA</div>
                        <div class="author-info">
                            <div class="author-name">Shreya Agarwal</div>
                            <div class="author-role">Student, Acting</div>
                        </div>
                    </div>
                </div>

                <!-- Testimonial 2 -->
                <div class="testimonial-card">
                    <div class="testimonial-quote">
                        <i class="fa-solid fa-quote-left"></i>
                    </div>
                    <p class="testimonial-text">Working with the Creatica team has been enriching. Their passion for
                        arts education and community development is truly inspiring and makes a real difference.</p>
                    <div class="testimonial-author">
                        <div class="author-avatar">RK</div>
                        <div class="author-info">
                            <div class="author-name">Rajesh Kumar</div>
                            <div class="author-role">Guest Artist, Music</div>
                        </div>
                    </div>
                </div>

                <!-- Testimonial 3 -->
                <div class="testimonial-card">
                    <div class="testimonial-quote">
                        <i class="fa-solid fa-quote-left"></i>
                    </div>
                    <p class="testimonial-text">The facilities and teaching methods are world-class. I've seen
                        remarkable transformation in my child's confidence and artistic abilities through Creatica's
                        programs.</p>
                    <div class="testimonial-author">
                        <div class="author-avatar">PM</div>
                        <div class="author-info">
                            <div class="author-name">Priyanka Malhotra</div>
                            <div class="author-role">Parent, Dance Student</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- CTA SECTION -->
    <section class="cta-section">
        <div class="cta-container">
            <h2 class="cta-title">Join Our Creative <span>Community</span></h2>
            <p class="cta-text">Whether you're a student looking to learn, an artist seeking to collaborate, or an
                organization interested in partnerships, we'd love to hear from you.</p>
            <div class="cta-buttons">
                <a href="/creatica_theater_hub/user/ourprogram" class="btn-cta-primary">
                    <i class="fa-solid fa-pencil" style="margin-right:6px;"></i>
                    Enroll Now
                </a>
                <a href="/creatica_theater_hub/user/contact" class="btn-cta-secondary">
                    <i class="fa-solid fa-handshake" style="margin-right:6px;"></i>
                    Partner With Us
                </a>
            </div>
        </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="newsletter-section">
        <h2 class="newsletter-title reveal">Stay Connected</h2>
        <p class="newsletter-sub reveal">Subscribe to stay updated on our team, events, and community initiatives.</p>
        <form class="newsletter-form reveal" onsubmit="return false">
            <input type="email" placeholder="Enter your email address">
            <button type="submit"><i class="fa-solid fa-paper-plane" style="margin-right:6px"></i>Subscribe</button>
        </form>
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
                }
            });
        }, { threshold: 0.1 });
        revealEls.forEach(el => revealObs.observe(el));

        /* ── FILTER FUNCTIONALITY ── */
        const searchInput = document.querySelector('.search-wrap input');
        const filterSelect = document.querySelector('.filter-wrap select');

        if (searchInput) {
            searchInput.addEventListener('input', (e) => {
                const searchValue = e.target.value.toLowerCase();
                const cards = document.querySelectorAll('.team-card');
                cards.forEach(card => {
                    const name = card.querySelector('.team-name').textContent.toLowerCase();
                    const position = card.querySelector('.team-position').textContent.toLowerCase();
                    const matches = name.includes(searchValue) || position.includes(searchValue);
                    card.style.display = matches ? 'flex' : 'none';
                });
            });
        }
    </script>
</body>

</html>