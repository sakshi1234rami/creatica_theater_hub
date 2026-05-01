<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
    
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Program-Dance</title>
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
   

    <!-- ── HERO ── -->
    <section class="breadcrumb-hero">
        <div class="breadcrumb-hero-inner">
            <div>
                <div class="breadcrumb-eyebrow">
                    <i class="fa-solid fa-circle-dot"></i>
                    Our Programs · Creatica Theatre Hub
                </div>
                <h1 class="breadcrumb-title">
                    <i class="fa-solid fa-music" style="color:#F2C94C;margin-right:12px;font-size:0.85em"></i>Dance
                    <span>Program</span>
                </h1>
                <p class="hero-desc">
                    Professional dance training that blends classical tradition with contemporary expression. Build
                    technique, stage confidence and a lifelong love of movement.
                </p>
                <div class="hero-btns">
                    <a href="#apply" class="btn-gold">
                        <i class="fa-solid fa-pen-to-square"></i> Apply Now
                    </a>
                    <a href="#overview" class="btn-ghost-white">
                        <i class="fa-solid fa-circle-info"></i> Learn More
                    </a>
                </div>
                <div class="hero-badges">
                    <div class="hero-badge"><i class="fa-solid fa-user-graduate"></i> Beginner to Advanced</div>
                    <div class="hero-badge"><i class="fa-solid fa-clock"></i> 6 Month Duration</div>
                    <div class="hero-badge"><i class="fa-solid fa-calendar-days"></i> Sat &amp; Sun Batches</div>
                    <div class="hero-badge"><i class="fa-solid fa-certificate"></i> Certificate Provided</div>
                </div>
            </div>
            <div class="breadcrumb-trail" style="align-self:flex-start; margin-top:0.5rem;">
                <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house" style="margin-right:4px"></i>Home</a>
                <span class="sep">/</span>
                <a href="/creatica_theater_hub/user/ourprogram">Programs</a>
                <span class="sep">/</span>
                <span class="active">Dance</span>
            </div>
        </div>
    </section>

    <div class="rainbow-bar"></div>

    <!-- ── QUICK INFO STRIP ── -->
    <div class="info-strip">
        <div class="info-strip-grid">
            <div class="info-strip-item reveal">
                <div class="strip-i"><i class="fa-solid fa-user-tie"></i></div>
                <div class="strip-label">Head Trainer</div>
                <div class="strip-val">Rahul Patel</div>
            </div>
            <div class="info-strip-item reveal">
                <div class="strip-i"><i class="fa-solid fa-clock"></i></div>
                <div class="strip-label">Duration</div>
                <div class="strip-val">6 Months</div>
            </div>
            <div class="info-strip-item reveal">
                <div class="strip-i"><i class="fa-solid fa-calendar-days"></i></div>
                <div class="strip-label">Schedule</div>
                <div class="strip-val">Sat &amp; Sun</div>
            </div>
            <div class="info-strip-item reveal">
                <div class="strip-i"><i class="fa-solid fa-signal"></i></div>
                <div class="strip-label">Level</div>
                <div class="strip-val">All Levels</div>
            </div>
            <div class="info-strip-item reveal">
                <div class="strip-i"><i class="fa-solid fa-certificate"></i></div>
                <div class="strip-label">Certificate</div>
                <div class="strip-val">Yes, Included</div>
            </div>
        </div>
    </div>

    <!-- ── OVERVIEW ── -->
    <section class="section overview-section" id="overview">
        <div class="section-inner">
            <div class="overview-grid">
                <!-- Visual -->
                <div class="overview-visual reveal">
                    <div class="corner-tl"></div>
                    <div class="corner-br"></div>
                    <div class="visual-card">
                        <img src="/content/images/dance.jpg" alt="Dance Program" onerror="this.style.display='none'">
                        <div class="visual-card-placeholder">
                            <i class="fa-solid fa-music"></i>
                            <p>Dance Program · Creatica Theatre Hub</p>
                        </div>
                    </div>
                    <div class="float-badge">
                        <i class="fa-solid fa-user-graduate"></i>
                        <div>
                            <div class="float-badge-num">500+</div>
                            <div class="float-badge-label">Students Trained</div>
                        </div>
                    </div>
                </div>
                <!-- Text -->
                <div class="reveal">
                    <div class="section-tag">About the Program</div>
                    <h2 class="ov-heading">Learn to <span>Dance</span> with<br>Passion &amp; Purpose</h2>
                    <p class="ov-body">Our Dance Program is designed to nurture talent at every level — from first-time
                        beginners to advanced performers. Under expert guidance, students explore a rich range of dance
                        forms while building technique, expression and stage confidence.</p>
                    <p class="ov-body">Each batch combines structured training with creative freedom, ensuring students
                        not only master steps but develop a deep connection with the art of movement.</p>
                    <div class="ov-features">
                        <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Training across classical, folk
                            and contemporary styles</div>
                        <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Live stage performance
                            opportunities each term</div>
                        <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Expert choreographers and
                            trained instructors</div>
                        <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Flexible morning and evening
                            batch options</div>
                        <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Official certificate on
                            successful program completion</div>
                        <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Annual dance showcase for
                            family and community</div>
                    </div>
                    <div style="display:flex;gap:1rem;flex-wrap:wrap;">
                        <a href="#apply" class="btn btn-theme1">
                            <i class="fa-solid fa-pen-to-square" style="margin-right:6px"></i>Apply Now
                        </a>
                        <a href="/creatica_theater_hub/user/contact" class="btn btn-theme2">
                            <i class="fa-solid fa-phone" style="margin-right:6px"></i>Enquire
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="rainbow-bar"></div>

    <!-- ── DANCE STYLES ── -->
    <section class="section styles-section" id="styles">
        <div class="section-inner">
            <h2 class="section-title reveal">Dance Styles We Teach</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">Our program covers a wide spectrum of dance forms to give every student a
                complete artistic foundation.</p>
            <div class="styles-grid">

                <div class="style-card reveal">
                    <div class="style-img-wrap">
                        <i class="fa-solid fa-spa style-main-icon"></i>
                    </div>
                    <div class="style-body">
                        <div class="style-name">Classical Dance</div>
                        <p class="style-desc">Foundation in Bharatanatyam and Kathak — exploring mudras, abhinaya and
                            rhythmic footwork rooted in Indian classical tradition.</p>
                        <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Foundation</span>
                    </div>
                </div>

                <div class="style-card reveal">
                    <div class="style-img-wrap">
                        <i class="fa-solid fa-drumstick-bite style-main-icon"></i>
                    </div>
                    <div class="style-body">
                        <div class="style-name">Folk Dance</div>
                        <p class="style-desc">Celebration of Gujarat's rich cultural heritage through Garba, Dandiya and
                            regional folk dance forms for festive performances.</p>
                        <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Cultural</span>
                    </div>
                </div>

                <div class="style-card reveal">
                    <div class="style-img-wrap">
                        <i class="fa-solid fa-person-running style-main-icon"></i>
                    </div>
                    <div class="style-body">
                        <div class="style-name">Contemporary Dance</div>
                        <p class="style-desc">Modern movement vocabulary combining fluidity, improvisation and
                            expressive storytelling for stage and screen performances.</p>
                        <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Modern</span>
                    </div>
                </div>

                <div class="style-card reveal">
                    <div class="style-img-wrap">
                        <i class="fa-solid fa-film style-main-icon"></i>
                    </div>
                    <div class="style-body">
                        <div class="style-name">Bollywood Dance</div>
                        <p class="style-desc">High-energy Bollywood choreography for stage shows, events and
                            competitions — combining filmi moves with theatrical flair.</p>
                        <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Performance</span>
                    </div>
                </div>

                <div class="style-card reveal">
                    <div class="style-img-wrap">
                        <i class="fa-solid fa-music style-main-icon"></i>
                    </div>
                    <div class="style-body">
                        <div class="style-name">Western Dance</div>
                        <p class="style-desc">Jazz, hip-hop and freestyle dance forms designed to build rhythm,
                            coordination and confidence for competitive stages.</p>
                        <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Competitive</span>
                    </div>
                </div>

                <div class="style-card reveal">
                    <div class="style-img-wrap">
                        <i class="fa-solid fa-star style-main-icon"></i>
                    </div>
                    <div class="style-body">
                        <div class="style-name">Fusion Choreography</div>
                        <p class="style-desc">Blending classical and contemporary styles into original compositions —
                            our showcase specialty that highlights creative storytelling.</p>
                        <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Advanced</span>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- ── CURRICULUM ── -->
    <section class="section curriculum-section" id="curriculum">
        <div class="section-inner">
            <h2 class="section-title reveal">Program Curriculum</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">A structured 6-month journey from foundational skills to full stage
                performance readiness.</p>
            <div class="curriculum-grid">

                <div class="curriculum-level reveal">
                    <div class="level-header">
                        <div class="level-icon"><i class="fa-solid fa-seedling"></i></div>
                        <div class="level-title-wrap">
                            <div class="level-name">Foundation Level</div>
                            <div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Month 1 – 2
                            </div>
                        </div>
                    </div>
                    <div class="level-body">
                        <ul class="level-topics">
                            <li><i class="fa-solid fa-circle-dot"></i> Body posture, alignment and stretching</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Introduction to rhythm and beat counting</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Basic footwork patterns and hand gestures</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Warm-up routines and cool-down exercises</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Dance etiquette and studio discipline</li>
                        </ul>
                    </div>
                </div>

                <div class="curriculum-level reveal">
                    <div class="level-header">
                        <div class="level-icon"><i class="fa-solid fa-person-walking"></i></div>
                        <div class="level-title-wrap">
                            <div class="level-name">Intermediate Level</div>
                            <div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Month 3 – 4
                            </div>
                        </div>
                    </div>
                    <div class="level-body">
                        <ul class="level-topics">
                            <li><i class="fa-solid fa-circle-dot"></i> Classical and folk style introduction</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Group choreography and synchronisation</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Expression, emotion and abhinaya</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Music interpretation and improvisation</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Mid-term performance assessment</li>
                        </ul>
                    </div>
                </div>

                <div class="curriculum-level reveal">
                    <div class="level-header">
                        <div class="level-icon"><i class="fa-solid fa-person-running"></i></div>
                        <div class="level-title-wrap">
                            <div class="level-name">Advanced Level</div>
                            <div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Month 5
                            </div>
                        </div>
                    </div>
                    <div class="level-body">
                        <ul class="level-topics">
                            <li><i class="fa-solid fa-circle-dot"></i> Bollywood and western fusion styles</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Solo and duet performance preparation</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Costume, makeup and stage presentation</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Rehearsal discipline and performance mindset</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Video recording and self-assessment</li>
                        </ul>
                    </div>
                </div>

                <div class="curriculum-level reveal">
                    <div class="level-header">
                        <div class="level-icon"><i class="fa-solid fa-star"></i></div>
                        <div class="level-title-wrap">
                            <div class="level-name">Final Showcase</div>
                            <div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Month 6
                            </div>
                        </div>
                    </div>
                    <div class="level-body">
                        <ul class="level-topics">
                            <li><i class="fa-solid fa-circle-dot"></i> Final choreography creation and polishing</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Full dress rehearsal with lights &amp; sound</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Live stage performance before audience</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Certificates and appreciation ceremony</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Professional performance feedback</li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- ── SCHEDULE & FEE ── -->
    <section class="section schedule-section" id="schedule">
        <div class="section-inner">
            <h2 class="section-title reveal">Schedule &amp; Fee Structure</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">Flexible batch timings to suit every student's availability.</p>
            <div class="schedule-grid">

                <!-- Timetable -->
                <div class="timetable-card reveal">
                    <div class="timetable-header">
                        <i class="fa-solid fa-calendar-days"></i>
                        <div class="timetable-header-title">Batch Timetable</div>
                    </div>
                    <div class="timetable-body">
                        <div class="timetable-row header-row">
                            <div class="timetable-cell th"><i class="fa-solid fa-layer-group"></i> Batch</div>
                            <div class="timetable-cell th"><i class="fa-solid fa-clock"></i> Time</div>
                            <div class="timetable-cell th"><i class="fa-solid fa-calendar"></i> Days</div>
                        </div>
                        <div class="timetable-row">
                            <div class="timetable-cell"><span class="batch-badge batch-morning"><i
                                        class="fa-solid fa-sun"></i> Morning</span></div>
                            <div class="timetable-cell">7:00 AM – 9:00 AM</div>
                            <div class="timetable-cell">Mon / Wed / Fri</div>
                        </div>
                        <div class="timetable-row">
                            <div class="timetable-cell"><span class="batch-badge batch-evening"><i
                                        class="fa-solid fa-moon"></i> Evening</span></div>
                            <div class="timetable-cell">5:00 PM – 7:00 PM</div>
                            <div class="timetable-cell">Tue / Thu / Sat</div>
                        </div>
                        <div class="timetable-row">
                            <div class="timetable-cell"><span class="batch-badge batch-weekend"><i
                                        class="fa-solid fa-calendar-week"></i> Weekend</span></div>
                            <div class="timetable-cell">9:00 AM – 12:00 PM</div>
                            <div class="timetable-cell">Sat &amp; Sun</div>
                        </div>
                        <div class="timetable-row">
                            <div class="timetable-cell"><span class="batch-badge batch-special"><i
                                        class="fa-solid fa-star"></i> Kids</span></div>
                            <div class="timetable-cell">4:00 PM – 5:30 PM</div>
                            <div class="timetable-cell">Mon to Sat</div>
                        </div>
                    </div>
                </div>

                <!-- Fee -->
                <div class="fee-card reveal">
                    <div class="fee-header">
                        <i class="fa-solid fa-indian-rupee-sign"></i>
                        <div class="fee-header-title">Fee Structure</div>
                    </div>
                    <div class="fee-body">
                        <div class="fee-item">
                            <div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Registration Fee</div>
                            <div class="fee-amount">₹ 500</div>
                        </div>
                        <div class="fee-item">
                            <div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Monthly Fee</div>
                            <div class="fee-amount">₹ 800 / month</div>
                        </div>
                        <div class="fee-item">
                            <div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Full Program (6M)</div>
                            <div class="fee-amount">₹ 4,500</div>
                        </div>
                        <div class="fee-item">
                            <div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Kids Batch</div>
                            <div class="fee-amount">₹ 600 / month</div>
                        </div>
                        <div class="fee-item">
                            <div class="fee-name"><i class="fa-solid fa-certificate"></i> Certificate Fee</div>
                            <div class="fee-amount">Included</div>
                        </div>
                        <div class="fee-note">
                            <i class="fa-solid fa-shield-halved"></i>
                            Subsidised fees available for deserving students — contact us to know more.
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- ── TRAINERS ── -->
    <section class="section trainers-section" id="trainers">
        <div class="section-inner">
            <h2 class="section-title reveal">Our Dance Trainers</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">Learn from dedicated professionals with years of performance and teaching
                experience.</p>
            <div class="trainers-grid">

                <div class="trainer-card reveal">
                    <div class="trainer-img-wrap">
                        <img src="/content/images/dance-trainer1.jpg" alt="Rahul Patel"
                            onerror="this.style.display='none'">
                        <div class="trainer-placeholder"><i class="fa-solid fa-user"></i></div>
                        <div class="trainer-role-badge">Head Trainer</div>
                    </div>
                    <div class="trainer-body">
                        <div class="trainer-name">Rahul Patel</div>
                        <div class="trainer-spec">Classical &amp; Contemporary Dance</div>
                        <div class="trainer-exp"><i class="fa-solid fa-award"></i> 10+ Years Experience</div>
                        <div class="trainer-socials">
                            <a href="#"><i class="fa-brands fa-instagram"></i></a>
                            <a href="#"><i class="fa-brands fa-youtube"></i></a>
                            <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                        </div>
                    </div>
                </div>

                <div class="trainer-card reveal">
                    <div class="trainer-img-wrap">
                        <img src="/content/images/dance-trainer2.jpg" alt="Priya Sharma"
                            onerror="this.style.display='none'">
                        <div class="trainer-placeholder"><i class="fa-solid fa-user"></i></div>
                        <div class="trainer-role-badge">Folk &amp; Bollywood Trainer</div>
                    </div>
                    <div class="trainer-body">
                        <div class="trainer-name">Priya Sharma</div>
                        <div class="trainer-spec">Folk, Garba &amp; Bollywood Dance</div>
                        <div class="trainer-exp"><i class="fa-solid fa-award"></i> 7+ Years Experience</div>
                        <div class="trainer-socials">
                            <a href="#"><i class="fa-brands fa-instagram"></i></a>
                            <a href="#"><i class="fa-brands fa-youtube"></i></a>
                            <a href="#"><i class="fa-solid fa-envelope"></i></a>
                        </div>
                    </div>
                </div>

                <div class="trainer-card reveal">
                    <div class="trainer-img-wrap">
                        <img src="/content/images/dance-trainer3.jpg" alt="Kiran Mehta"
                            onerror="this.style.display='none'">
                        <div class="trainer-placeholder"><i class="fa-solid fa-user"></i></div>
                        <div class="trainer-role-badge">Western Dance Trainer</div>
                    </div>
                    <div class="trainer-body">
                        <div class="trainer-name">Kiran Mehta</div>
                        <div class="trainer-spec">Hip-Hop, Jazz &amp; Western Dance</div>
                        <div class="trainer-exp"><i class="fa-solid fa-award"></i> 5+ Years Experience</div>
                        <div class="trainer-socials">
                            <a href="#"><i class="fa-brands fa-instagram"></i></a>
                            <a href="#"><i class="fa-brands fa-linkedin-in"></i></a>
                            <a href="#"><i class="fa-brands fa-youtube"></i></a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- ── GALLERY TEASER ── -->
    <section class="section gallery-section" id="gallery">
        <div class="section-inner">
            <h2 class="section-title reveal">From Our Dance Studio</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">Moments from rehearsals, performances and workshops — where every step
                tells a story.</p>
        </div>
        <div class="gallery-mosaic">
            <div class="gallery-cell reveal">
                <img src="/content/images/dance-gallery1.jpg" alt="Dance Gallery 1" onerror="this.style.display='none'">
                <i class="gallery-icon-placeholder fa-solid fa-music"></i>
                <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
            </div>
            <div class="gallery-cell reveal">
                <img src="/content/images/dance-gallery2.jpg" alt="Dance Gallery 2" onerror="this.style.display='none'">
                <i class="gallery-icon-placeholder fa-solid fa-person-running"></i>
                <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
            </div>
            <div class="gallery-cell reveal">
                <img src="/content/images/dance-gallery3.jpg" alt="Dance Gallery 3" onerror="this.style.display='none'">
                <i class="gallery-icon-placeholder fa-solid fa-star"></i>
                <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
            </div>
            <div class="gallery-cell reveal">
                <img src="/content/images/dance-gallery4.jpg" alt="Dance Gallery 4" onerror="this.style.display='none'">
                <i class="gallery-icon-placeholder fa-solid fa-spa"></i>
                <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
            </div>
            <div class="gallery-cell reveal">
                <img src="/content/images/dance-gallery5.jpg" alt="Dance Gallery 5" onerror="this.style.display='none'">
                <i class="gallery-icon-placeholder fa-solid fa-film"></i>
                <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
            </div>
        </div>
        <div style="text-align:center;">
            <a href="/creatica_theater_hub/user/gallery" class="btn btn-theme1">
                <i class="fa-solid fa-images" style="margin-right:6px"></i>View Full Gallery
            </a>
        </div>
    </section>

    <!-- ── APPLY SECTION ── -->
    <section class="apply-section" id="apply">
        <div class="apply-grid">
            <!-- Left info -->
            <div class="apply-info reveal">
                <div class="apply-eyebrow">
                    <i class="fa-solid fa-circle-dot"></i> Admissions Open
                </div>
                <h2 class="apply-heading">Enrol in the<br><span>Dance Program</span> Today</h2>
                <p class="apply-body">Secure your seat in our next batch. Fill in the quick form and our team will
                    confirm your enrolment within 24 hours. Limited seats per batch — apply early.</p>
                <div class="apply-perks">
                    <div class="apply-perk">
                        <div class="apply-perk-icon"><i class="fa-solid fa-user-graduate"></i></div>
                        Professional training with certified instructors
                    </div>
                    <div class="apply-perk">
                        <div class="apply-perk-icon"><i class="fa-solid fa-masks-theater"></i></div>
                        Live stage performance every term
                    </div>
                    <div class="apply-perk">
                        <div class="apply-perk-icon"><i class="fa-solid fa-certificate"></i></div>
                        Official certificate on completion
                    </div>
                    <div class="apply-perk">
                        <div class="apply-perk-icon"><i class="fa-solid fa-indian-rupee-sign"></i></div>
                        Subsidised fee structure for all students
                    </div>
                    <div class="apply-perk">
                        <div class="apply-perk-icon"><i class="fa-solid fa-users"></i></div>
                        Small batch size for personalised attention
                    </div>
                </div>
                <div class="apply-btns">
                    <a href="/creatica_theater_hub/user/contact" class="btn-gold">
                        <i class="fa-solid fa-phone"></i> Call Us Now
                    </a>
                    <a href="/creatica_theater_hub/user/contact" class="btn-ghost-white">
                        <i class="fa-solid fa-envelope"></i> Email Enquiry
                    </a>
                </div>
            </div>

            <!-- Right form -->
            <div class="reveal">
                <div class="apply-form-card">
                    <div class="apply-form-header">
                        <i class="fa-solid fa-pen-to-square"></i>
                        <div class="apply-form-header-title">Dance Program Application</div>
                    </div>
                    <div class="apply-form-body">
                        <form onsubmit="handleApply(event)">
                            <div class="af-row">
                                <div class="af-group">
                                    <label class="af-label"><i class="fa-solid fa-user"></i> First Name</label>
                                    <input type="text" class="af-input" placeholder="First name" required>
                                </div>
                                <div class="af-group">
                                    <label class="af-label"><i class="fa-solid fa-user"></i> Last Name</label>
                                    <input type="text" class="af-input" placeholder="Last name" required>
                                </div>
                            </div>
                            <div class="af-group">
                                <label class="af-label"><i class="fa-solid fa-phone"></i> Phone Number</label>
                                <input type="tel" class="af-input" placeholder="+91 00000 00000" required>
                            </div>
                            <div class="af-group">
                                <label class="af-label"><i class="fa-solid fa-envelope"></i> Email Address</label>
                                <input type="email" class="af-input" placeholder="you@example.com">
                            </div>
                            <div class="af-row">
                                <div class="af-group">
                                    <label class="af-label"><i class="fa-solid fa-signal"></i> Dance Level</label>
                                    <select class="af-select">
                                        <option>Beginner</option>
                                        <option>Intermediate</option>
                                        <option>Advanced</option>
                                    </select>
                                </div>
                                <div class="af-group">
                                    <label class="af-label"><i class="fa-solid fa-calendar"></i> Preferred Batch</label>
                                    <select class="af-select">
                                        <option>Morning Batch</option>
                                        <option>Evening Batch</option>
                                        <option>Weekend Batch</option>
                                        <option>Kids Batch</option>
                                    </select>
                                </div>
                            </div>
                            <div class="af-group">
                                <label class="af-label"><i class="fa-solid fa-spa"></i> Dance Style Interest</label>
                                <select class="af-select">
                                    <option>Classical Dance</option>
                                    <option>Folk Dance (Garba / Dandiya)</option>
                                    <option>Bollywood Dance</option>
                                    <option>Contemporary Dance</option>
                                    <option>Western / Hip-Hop</option>
                                    <option>No Preference</option>
                                </select>
                            </div>
                            <button type="submit" class="btn-af-submit">
                                <i class="fa-solid fa-paper-plane"></i> Submit Application
                            </button>
                            <div
                                style="text-align:center;font-size:0.75rem;color:#aaa;margin-top:0.8rem;display:flex;align-items:center;justify-content:center;gap:0.4rem;">
                                <i class="fa-solid fa-shield-halved" style="color:#0EB555"></i>
                                Your details are safe and will not be shared.
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ── TESTIMONIALS ── -->
    <section class="testimonials-section" id="testimonials">
        <h2 class="section-title reveal">What Our Students Say</h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal">Real words from real students who found their rhythm at Creatica.</p>
        <div class="t-grid">
            <div class="t-card reveal">
                <div class="t-quote"><i class="fa-solid fa-quote-left"></i></div>
                <p class="t-text">The Dance Program at Creatica completely transformed my confidence. I went from having
                    two left feet to performing on stage in just three months!</p>
                <div class="t-author">
                    <div class="t-avatar" style="background:#F29B2E;"><i class="fa-solid fa-user"></i></div>
                    <div>
                        <div class="t-name">Anjali Patel</div>
                        <div class="t-role">Classical Dance · Batch 2024</div>
                        <div class="t-stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="t-card reveal">
                <div class="t-quote"><i class="fa-solid fa-quote-left"></i></div>
                <p class="t-text">Rahul sir is an exceptional teacher. The weekend batch fits perfectly around my
                    schedule and the training quality is truly outstanding.</p>
                <div class="t-author">
                    <div class="t-avatar" style="background:#2E6F95;"><i class="fa-solid fa-user"></i></div>
                    <div>
                        <div class="t-name">Rohan Shah</div>
                        <div class="t-role">Bollywood Dance · Batch 2024</div>
                        <div class="t-stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="t-card reveal">
                <div class="t-quote"><i class="fa-solid fa-quote-left"></i></div>
                <p class="t-text">My daughter joined the kids batch and the change in her personality has been
                    remarkable — so much confidence and joy on stage. Highly recommended!</p>
                <div class="t-author">
                    <div class="t-avatar" style="background:#0EB555;"><i class="fa-solid fa-user"></i></div>
                    <div>
                        <div class="t-name">Kavya Desai</div>
                        <div class="t-role">Kids Batch Parent · 2024</div>
                        <div class="t-stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ── OTHER PROGRAMS ── -->
    <section class="section other-programs" id="other">
        <div class="section-inner">
            <h2 class="section-title reveal">Explore Other Programs</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">Discover more creative programs at Creatica Theatre Hub.</p>
            <div class="other-grid">
                <a href="/creatica_theater_hub/user/ourprogram/drama" class="other-card reveal">
                    <div class="other-icon"><i class="fa-solid fa-masks-theater"></i></div>
                    <div class="other-name">Drama Training</div>
                    <p class="other-desc">Theatre, dialogue delivery and stage acting for all levels.</p>
                </a>
                <a href="/creatica_theater_hub/user/ourprogram/acting" class="other-card reveal">
                    <div class="other-icon"><i class="fa-solid fa-video"></i></div>
                    <div class="other-name">Acting Workshop</div>
                    <p class="other-desc">Film acting, camera skills and screen presence training.</p>
                </a>
                <a href="/creatica_theater_hub/user/ourprogram/music" class="other-card reveal">
                    <div class="other-icon"><i class="fa-solid fa-guitar"></i></div>
                    <div class="other-name">Music Program</div>
                    <p class="other-desc">Vocals, instruments and rhythm training from professionals.</p>
                </a>
                <a href="/creatica_theater_hub/user/ourprogram/pd" class="other-card reveal">
                    <div class="other-icon"><i class="fa-solid fa-person-rays"></i></div>
                    <div class="other-name">Personality Dev.</div>
                    <p class="other-desc">Confidence, public speaking and stage presence building.</p>
                </a>
            </div>
        </div>
    </section>

	 <!-- -----------------------------Footer css------------------------------------------------ -->
    
   <jsp:include page="../user/footer.jsp"></jsp:include>
   
   <!-- -----------------------------Footer css end------------------------------------------------ -->
    

   <jsp:include page="../user/links/Userfootlink.jsp"></jsp:include>
    <script>
        /* ── APPLY FORM ── */
        function handleApply(e) {
            e.preventDefault();
            const btn = e.target.querySelector('.btn-af-submit');
            btn.innerHTML = '<i class="fa-solid fa-circle-check"></i> Application Submitted!';
            btn.style.background = '#0EB555';
            btn.disabled = true;
            setTimeout(() => {
                btn.innerHTML = '<i class="fa-solid fa-paper-plane"></i> Submit Application';
                btn.style.background = '#F29B2E';
                btn.disabled = false;
                e.target.reset();
            }, 3500);
        }

        /* ── SCROLL REVEAL ── */
        const revealEls = document.querySelectorAll('.reveal');
        const revealObs = new IntersectionObserver((entries) => {
            entries.forEach((entry, i) => {
                if (entry.isIntersecting) {
                    setTimeout(() => entry.target.classList.add('visible'), i * 80);
                }
            });
        }, { threshold: 0.08 });
        revealEls.forEach(el => revealObs.observe(el));
    </script>

</body>

</html>