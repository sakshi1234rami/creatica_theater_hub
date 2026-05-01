<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Acting</title>

   <jsp:include page="../user/links/Userheadlink.jsp"></jsp:include>

</head>

<body>

   

<jsp:include page="../user/header.jsp"></jsp:include>

    <!-------------------------------- BREADCRUMB -------------------------------->

    <section class="breadcrumb-hero">
        <div class="breadcrumb-hero-inner">
            <div>
                <div class="breadcrumb-eyebrow">
                    <i class="fa-solid fa-circle-dot"></i>
                    Our Programs · Creatica Theatre Hub
                </div>
                <h1 class="breadcrumb-title">
                    <i class="fa-solid fa-video" style="color:#F2C94C;margin-right:12px;font-size:0.85em"></i>Acting
                    <span>Program</span>
                </h1>
                <p class="hero-desc">
                    Professional acting training for film, television and stage. Develop your presence, technique and
                    authentic performance skills under expert guidance.
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
                    <div class="hero-badge"><i class="fa-solid fa-user-graduate"></i> All Levels Welcome</div>
                    <div class="hero-badge"><i class="fa-solid fa-clock"></i> 3 Month Duration</div>
                    <div class="hero-badge"><i class="fa-solid fa-calendar-days"></i> Weekend Batches</div>
                    <div class="hero-badge"><i class="fa-solid fa-certificate"></i> Certificate Provided</div>
                </div>
            </div>
            <div class="breadcrumb-trail">
                <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house" style="margin-right:4px"></i>Home</a>
                <span class="sep">/</span>
                <a href="/creatica_theater_hub/user/ourprogram">Programs</a>
                <span class="sep">/</span>
                <span class="active">Acting</span>
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
                <div class="strip-val">Meera Shah</div>
            </div>
            <div class="info-strip-item reveal">
                <div class="strip-i"><i class="fa-solid fa-clock"></i></div>
                <div class="strip-label">Duration</div>
                <div class="strip-val">3 Months</div>
            </div>
            <div class="info-strip-item reveal">
                <div class="strip-i"><i class="fa-solid fa-calendar-days"></i></div>
                <div class="strip-label">Schedule</div>
                <div class="strip-val">Weekend</div>
            </div>
            <div class="info-strip-item reveal">
                <div class="strip-i"><i class="fa-solid fa-signal"></i></div>
                <div class="strip-label">Level</div>
                <div class="strip-val">Intermediate</div>
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
                <div class="overview-visual reveal">
                    <div class="corner-tl"></div>
                    <div class="corner-br"></div>
                    <div class="visual-card">
                        <img src="/content/images/acting.jpg" alt="Acting Program" onerror="this.style.display='none'">
                        <div class="visual-card-placeholder">
                            <i class="fa-solid fa-video"></i>
                            <p>Acting Program · Creatica Theatre Hub</p>
                        </div>
                    </div>
                    <div class="float-badge">
                        <i class="fa-solid fa-film"></i>
                        <div>
                            <div class="float-badge-num">50+</div>
                            <div class="float-badge-label">Performances</div>
                        </div>
                    </div>
                </div>
                <div class="reveal">
                    <div class="section-tag">About the Program</div>
                    <h2 class="ov-heading">Master the Art of <span>Performance</span><br>on Stage &amp; Screen</h2>
                    <p class="ov-body">Our Acting Program is a comprehensive course that trains students in the full
                        spectrum of performance — from stage presence and voice modulation to camera acting and
                        character development. Guided by experienced coaches, students grow into confident, versatile
                        performers.</p>
                    <p class="ov-body">Whether your goal is theatre, film, television or simply building communication
                        confidence, this program gives you the tools, mindset and exposure to succeed.</p>
                    <div class="ov-features">
                        <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Stage acting and theatre
                            performance techniques</div>
                        <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Camera acting and screen
                            presence training</div>
                        <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Voice modulation, diction and
                            dialogue delivery</div>
                        <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Character building and script
                            interpretation</div>
                        <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Live performance assessment
                            every month</div>
                        <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Official certificate on program
                            completion</div>
                    </div>
                    <div style="display:flex;gap:1rem;flex-wrap:wrap;">
                        <a href="#apply" class="btn btn-theme3">
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


    <!-- ── ACTING DISCIPLINES ── -->
    <section class="section styles-section" id="disciplines">
        <div class="section-inner">
            <h2 class="section-title reveal">Acting Disciplines We Cover</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">A well-rounded curriculum covering every dimension of the acting craft
                across stage and screen.</p>
            <div class="styles-grid">

                <div class="style-card reveal">
                    <div class="style-img-wrap">
                        <i class="fa-solid fa-masks-theater style-main-icon"></i>
                    </div>
                    <div class="style-body">
                        <div class="style-name">Stage Acting</div>
                        <p class="style-desc">Classical and contemporary theatre performance — building commanding stage
                            presence, projection and live audience engagement.</p>
                        <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Theatre</span>
                    </div>
                </div>

                <div class="style-card reveal">
                    <div class="style-img-wrap">
                        <i class="fa-solid fa-video style-main-icon"></i>
                    </div>
                    <div class="style-body">
                        <div class="style-name">Camera Acting</div>
                        <p class="style-desc">On-screen performance training covering close-up technique, eye contact
                            with the lens and natural on-camera presence.</p>
                        <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Film &amp; TV</span>
                    </div>
                </div>

                <div class="style-card reveal">
                    <div class="style-img-wrap">
                        <i class="fa-solid fa-microphone style-main-icon"></i>
                    </div>
                    <div class="style-body">
                        <div class="style-name">Voice &amp; Dialogue</div>
                        <p class="style-desc">Voice modulation, diction, accent and breath control for powerful dialogue
                            delivery across theatre and screen mediums.</p>
                        <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Voice Work</span>
                    </div>
                </div>

                <div class="style-card reveal">
                    <div class="style-img-wrap">
                        <i class="fa-solid fa-brain style-main-icon"></i>
                    </div>
                    <div class="style-body">
                        <div class="style-name">Character Development</div>
                        <p class="style-desc">In-depth study of character building — backstory creation, emotional
                            memory and psychological realism in performance.</p>
                        <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Character Work</span>
                    </div>
                </div>

                <div class="style-card reveal">
                    <div class="style-img-wrap">
                        <i class="fa-solid fa-scroll style-main-icon"></i>
                    </div>
                    <div class="style-body">
                        <div class="style-name">Script Reading &amp; Analysis</div>
                        <p class="style-desc">Breaking down scripts, identifying subtext, understanding the writer's
                            intention and translating it into performance.</p>
                        <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Script Work</span>
                    </div>
                </div>

                <div class="style-card reveal">
                    <div class="style-img-wrap">
                        <i class="fa-solid fa-people-group style-main-icon"></i>
                    </div>
                    <div class="style-body">
                        <div class="style-name">Improvisation</div>
                        <p class="style-desc">Spontaneous scene work and improvisation exercises to sharpen instinct,
                            listening and authentic response in performance.</p>
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
            <p class="section-subtitle reveal">A focused 3-month journey from acting fundamentals to confident stage and
                screen performance.</p>
            <div class="curriculum-grid">

                <div class="curriculum-level reveal">
                    <div class="level-header">
                        <div class="level-icon"><i class="fa-solid fa-seedling"></i></div>
                        <div>
                            <div class="level-name">Foundation Level</div>
                            <div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Week 1 – 3
                            </div>
                        </div>
                    </div>
                    <div class="level-body">
                        <ul class="level-topics">
                            <li><i class="fa-solid fa-circle-dot"></i> Introduction to acting principles and methods
                            </li>
                            <li><i class="fa-solid fa-circle-dot"></i> Body awareness, posture and movement</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Voice warm-up and breathing exercises</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Basic emotional expression and observation</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Trust games and ensemble building</li>
                        </ul>
                    </div>
                </div>

                <div class="curriculum-level reveal">
                    <div class="level-header">
                        <div class="level-icon"><i class="fa-solid fa-masks-theater"></i></div>
                        <div>
                            <div class="level-name">Stage Techniques</div>
                            <div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Week 4 – 6
                            </div>
                        </div>
                    </div>
                    <div class="level-body">
                        <ul class="level-topics">
                            <li><i class="fa-solid fa-circle-dot"></i> Dialogue delivery and scene study</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Character analysis and motivation</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Blocking, stage directions and cues</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Improvisation and cold reading exercises</li>
                            <li><i class="fa-solid fa-circle-dot"></i> First performance assessment</li>
                        </ul>
                    </div>
                </div>

                <div class="curriculum-level reveal">
                    <div class="level-header">
                        <div class="level-icon"><i class="fa-solid fa-video"></i></div>
                        <div>
                            <div class="level-name">Camera &amp; Screen</div>
                            <div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Week 7 – 10
                            </div>
                        </div>
                    </div>
                    <div class="level-body">
                        <ul class="level-topics">
                            <li><i class="fa-solid fa-circle-dot"></i> Camera angles, marks and continuity</li>
                            <li><i class="fa-solid fa-circle-dot"></i> On-screen naturalism and subtlety</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Audition technique for film and TV</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Monologue preparation and delivery</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Self-tape and showreel basics</li>
                        </ul>
                    </div>
                </div>

                <div class="curriculum-level reveal">
                    <div class="level-header">
                        <div class="level-icon"><i class="fa-solid fa-star"></i></div>
                        <div>
                            <div class="level-name">Final Showcase</div>
                            <div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Week 11 –
                                12</div>
                        </div>
                    </div>
                    <div class="level-body">
                        <ul class="level-topics">
                            <li><i class="fa-solid fa-circle-dot"></i> Scene preparation and final rehearsal</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Live stage performance before audience</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Filmed scene for showreel creation</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Professional feedback from trainers</li>
                            <li><i class="fa-solid fa-circle-dot"></i> Certificate and appreciation ceremony</li>
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
            <p class="section-subtitle reveal">Flexible batch options designed to fit around your daily schedule.</p>
            <div class="schedule-grid">

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
                            <div class="timetable-cell"><span class="batch-badge batch-basic"><i
                                        class="fa-solid fa-seedling"></i> Basic</span></div>
                            <div class="timetable-cell">9:00 AM – 11:00 AM</div>
                            <div class="timetable-cell">Sat &amp; Sun</div>
                        </div>
                        <div class="timetable-row">
                            <div class="timetable-cell"><span class="batch-badge batch-inter"><i
                                        class="fa-solid fa-masks-theater"></i> Stage</span></div>
                            <div class="timetable-cell">11:30 AM – 1:30 PM</div>
                            <div class="timetable-cell">Sat &amp; Sun</div>
                        </div>
                        <div class="timetable-row">
                            <div class="timetable-cell"><span class="batch-badge batch-adv"><i
                                        class="fa-solid fa-video"></i> Camera</span></div>
                            <div class="timetable-cell">5:00 PM – 7:00 PM</div>
                            <div class="timetable-cell">Mon / Wed / Fri</div>
                        </div>
                        <div class="timetable-row">
                            <div class="timetable-cell"><span class="batch-badge batch-film"><i
                                        class="fa-solid fa-film"></i> Intensive</span></div>
                            <div class="timetable-cell">9:00 AM – 1:00 PM</div>
                            <div class="timetable-cell">Sunday Only</div>
                        </div>
                    </div>
                </div>

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
                            <div class="fee-amount">₹ 900 / month</div>
                        </div>
                        <div class="fee-item">
                            <div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Full Program (3M)</div>
                            <div class="fee-amount">₹ 2,500</div>
                        </div>
                        <div class="fee-item">
                            <div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Intensive Sunday</div>
                            <div class="fee-amount">₹ 1,200 / month</div>
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
            <h2 class="section-title reveal">Our Acting Coaches</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">Learn from professional performers and coaches with real industry
                experience.</p>
            <div class="trainers-grid">

                <div class="trainer-card reveal">
                    <div class="trainer-img-wrap">
                        <img src="/content/images/acting-trainer1.jpg" alt="Meera Shah"
                            onerror="this.style.display='none'">
                        <div class="trainer-placeholder"><i class="fa-solid fa-user"></i></div>
                        <div class="trainer-role-badge">Head Acting Coach</div>
                    </div>
                    <div class="trainer-body">
                        <div class="trainer-name">Meera Shah</div>
                        <div class="trainer-spec">Stage &amp; Screen Acting</div>
                        <div class="trainer-exp"><i class="fa-solid fa-award"></i> 12+ Years Experience</div>
                        <div class="trainer-socials">
                            <a href="#"><i class="fa-brands fa-instagram"></i></a>
                            <a href="#"><i class="fa-brands fa-youtube"></i></a>
                            <a href="#"><i class="fa-brands fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>

                <div class="trainer-card reveal">
                    <div class="trainer-img-wrap">
                        <img src="/content/images/acting-trainer2.jpg" alt="Vikram Desai"
                            onerror="this.style.display='none'">
                        <div class="trainer-placeholder"><i class="fa-solid fa-user"></i></div>
                        <div class="trainer-role-badge">Camera &amp; Film Coach</div>
                    </div>
                    <div class="trainer-body">
                        <div class="trainer-name">Vikram Desai</div>
                        <div class="trainer-spec">Camera Acting &amp; Film Direction</div>
                        <div class="trainer-exp"><i class="fa-solid fa-award"></i> 8+ Years Experience</div>
                        <div class="trainer-socials">
                            <a href="#"><i class="fa-brands fa-instagram"></i></a>
                            <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                            <a href="#"><i class="fa-solid fa-envelope"></i></a>
                        </div>
                    </div>
                </div>

                <div class="trainer-card reveal">
                    <div class="trainer-img-wrap">
                        <img src="/content/images/acting-trainer3.jpg" alt="Nisha Patel"
                            onerror="this.style.display='none'">
                        <div class="trainer-placeholder"><i class="fa-solid fa-user"></i></div>
                        <div class="trainer-role-badge">Voice &amp; Dialogue Coach</div>
                    </div>
                    <div class="trainer-body">
                        <div class="trainer-name">Nisha Patel</div>
                        <div class="trainer-spec">Voice, Diction &amp; Dialogue</div>
                        <div class="trainer-exp"><i class="fa-solid fa-award"></i> 6+ Years Experience</div>
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

    <!-- ── GALLERY ── -->
    <section class="section gallery-section" id="gallery">
        <div class="section-inner">
            <h2 class="section-title reveal">From Our Acting Studio</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">Scenes from rehearsals, workshops and stage performances — where every
                emotion tells a story.</p>
        </div>
        <div class="gallery-mosaic">
            <div class="gallery-cell reveal">
                <img src="/content/images/acting-gallery1.jpg" alt="Acting Gallery 1"
                    onerror="this.style.display='none'">
                <i class="gallery-icon-placeholder fa-solid fa-video"></i>
                <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
            </div>
            <div class="gallery-cell reveal">
                <img src="/content/images/acting-gallery2.jpg" alt="Acting Gallery 2"
                    onerror="this.style.display='none'">
                <i class="gallery-icon-placeholder fa-solid fa-masks-theater"></i>
                <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
            </div>
            <div class="gallery-cell reveal">
                <img src="/content/images/acting-gallery3.jpg" alt="Acting Gallery 3"
                    onerror="this.style.display='none'">
                <i class="gallery-icon-placeholder fa-solid fa-microphone"></i>
                <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
            </div>
            <div class="gallery-cell reveal">
                <img src="/content/images/acting-gallery4.jpg" alt="Acting Gallery 4"
                    onerror="this.style.display='none'">
                <i class="gallery-icon-placeholder fa-solid fa-film"></i>
                <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
            </div>
            <div class="gallery-cell reveal">
                <img src="/content/images/acting-gallery5.jpg" alt="Acting Gallery 5"
                    onerror="this.style.display='none'">
                <i class="gallery-icon-placeholder fa-solid fa-star"></i>
                <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
            </div>
        </div>
        <div style="text-align:center;">
            <a href="/creatica_theater_hub/user/gallery" class="btn btn-theme3">
                <i class="fa-solid fa-images" style="margin-right:6px"></i>View Full Gallery
            </a>
        </div>
    </section>

    <!-- ── APPLY ── -->
    <section class="apply-section" id="apply">
        <div class="apply-grid">
            <div class="apply-info reveal">
                <div class="apply-eyebrow">
                    <i class="fa-solid fa-circle-dot"></i> Admissions Open
                </div>
                <h2 class="apply-heading">Enrol in the<br><span>Acting Program</span> Today</h2>
                <p class="apply-body">Secure your seat in our next batch. Fill in the quick form and our team will
                    confirm your enrolment within 24 hours. Limited seats per batch — apply early.</p>
                <div class="apply-perks">
                    <div class="apply-perk">
                        <div class="apply-perk-icon"><i class="fa-solid fa-user-graduate"></i></div>
                        Training by professional actors and directors
                    </div>
                    <div class="apply-perk">
                        <div class="apply-perk-icon"><i class="fa-solid fa-video"></i></div>
                        Filmed scene for your personal showreel
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
                        Small batches for personalised coaching
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

            <div class="reveal">
                <div class="apply-form-card">
                    <div class="apply-form-header">
                        <i class="fa-solid fa-pen-to-square"></i>
                        <div class="apply-form-header-title">Acting Program Application</div>
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
                                    <label class="af-label"><i class="fa-solid fa-signal"></i> Experience Level</label>
                                    <select class="af-select">
                                        <option>No Experience</option>
                                        <option>Some Experience</option>
                                        <option>Intermediate</option>
                                        <option>Advanced</option>
                                    </select>
                                </div>
                                <div class="af-group">
                                    <label class="af-label"><i class="fa-solid fa-calendar"></i> Preferred Batch</label>
                                    <select class="af-select">
                                        <option>Basic – Weekend AM</option>
                                        <option>Stage – Weekend PM</option>
                                        <option>Camera – Weekdays</option>
                                        <option>Intensive – Sunday</option>
                                    </select>
                                </div>
                            </div>
                            <div class="af-group">
                                <label class="af-label"><i class="fa-solid fa-video"></i> Acting Goal</label>
                                <select class="af-select">
                                    <option>Theatre / Stage Performance</option>
                                    <option>Film &amp; Television Acting</option>
                                    <option>Personal Confidence</option>
                                    <option>Audition Preparation</option>
                                    <option>No Specific Goal</option>
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
        <p class="section-subtitle reveal">Real words from students who found their voice at Creatica.</p>
        <div class="t-grid">
            <div class="t-card reveal">
                <div class="t-quote"><i class="fa-solid fa-quote-left"></i></div>
                <p class="t-text">The Acting Program gave me the confidence to audition for roles I would never have
                    considered before. Meera ma'am's coaching is truly world-class.</p>
                <div class="t-author">
                    <div class="t-avatar" style="background:#296498;"><i class="fa-solid fa-user"></i></div>
                    <div>
                        <div class="t-name">Aryan Mehta</div>
                        <div class="t-role">Stage Acting · Batch 2024</div>
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
                <p class="t-text">Learning camera acting here changed everything. The self-tape sessions and showreel
                    work were invaluable. I got my first professional audition call within a month.</p>
                <div class="t-author">
                    <div class="t-avatar" style="background:#F29B2E;"><i class="fa-solid fa-user"></i></div>
                    <div>
                        <div class="t-name">Priya Joshi</div>
                        <div class="t-role">Camera Acting · Batch 2024</div>
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
                <p class="t-text">I joined just to improve my public speaking and ended up discovering a genuine passion
                    for theatre. The voice and dialogue module was exceptional.</p>
                <div class="t-author">
                    <div class="t-avatar" style="background:#0EB555;"><i class="fa-solid fa-user"></i></div>
                    <div>
                        <div class="t-name">Sanjay Patel</div>
                        <div class="t-role">Voice &amp; Dialogue · Batch 2024</div>
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
                <a href="/creatica_theater_hub/user/ourprogram/dance" class="other-card reveal">
                    <div class="other-icon"><i class="fa-solid fa-music"></i></div>
                    <div class="other-name">Dance Program</div>
                    <p class="other-desc">Classical, folk, Bollywood and contemporary dance training.</p>
                </a>
                <a href="/creatica_theater_hub/user/ourprogram/drama" class="other-card reveal">
                    <div class="other-icon"><i class="fa-solid fa-masks-theater"></i></div>
                    <div class="other-name">Drama Training</div>
                    <p class="other-desc">Theatre, dialogue delivery and stage direction techniques.</p>
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
        function handleApply(e) {
            e.preventDefault();
            const btn = e.target.querySelector('.btn-af-submit');
            btn.innerHTML = '<i class="fa-solid fa-circle-check"></i> Application Submitted!';
            btn.style.background = '#0EB555';
            btn.disabled = true;
            setTimeout(() => {
                btn.innerHTML = '<i class="fa-solid fa-paper-plane"></i> Submit Application';
                btn.style.background = '#296498';
                btn.disabled = false;
                e.target.reset();
            }, 3500);
        }

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