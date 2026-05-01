<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Program-Drama</title>	
    <jsp:include page="../user/links/Userheadlink.jsp"></jsp:include>

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
                <i class="fa-solid fa-masks-theater" style="color:#F2C94C;margin-right:12px;font-size:0.85em"></i>Drama <span>Program</span>
            </h1>
            <p class="hero-desc">Discover the power of storytelling through theatre. Build your craft in dialogue, direction and performance — and bring scripts to life on stage.</p>
            <div class="hero-btns">
                <a href="#apply" class="btn-gold"><i class="fa-solid fa-pen-to-square"></i> Apply Now</a>
                <a href="#overview" class="btn-ghost-white"><i class="fa-solid fa-circle-info"></i> Learn More</a>
            </div>
            <div class="hero-badges">
                <div class="hero-badge"><i class="fa-solid fa-user-graduate"></i> Beginner Friendly</div>
                <div class="hero-badge"><i class="fa-solid fa-clock"></i> 4 Month Duration</div>
                <div class="hero-badge"><i class="fa-solid fa-calendar-days"></i> Evening Batches</div>
                <div class="hero-badge"><i class="fa-solid fa-certificate"></i> Certificate Provided</div>
            </div>
        </div>
        <div class="breadcrumb-trail">
            <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house" style="margin-right:4px"></i>Home</a>
            <span class="sep">/</span>
            <a href="/creatica_theater_hub/user/ourprogram">Programs</a>
            <span class="sep">/</span>
            <span class="active">Drama</span>
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
            <div class="strip-val">Arjun Mehta</div>
        </div>
        <div class="info-strip-item reveal">
            <div class="strip-i"><i class="fa-solid fa-clock"></i></div>
            <div class="strip-label">Duration</div>
            <div class="strip-val">4 Months</div>
        </div>
        <div class="info-strip-item reveal">
            <div class="strip-i"><i class="fa-solid fa-calendar-days"></i></div>
            <div class="strip-label">Schedule</div>
            <div class="strip-val">Evening</div>
        </div>
        <div class="info-strip-item reveal">
            <div class="strip-i"><i class="fa-solid fa-signal"></i></div>
            <div class="strip-label">Level</div>
            <div class="strip-val">Beginner</div>
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
                    <img src="/content/images/drama.jpg" alt="Drama Program" onerror="this.style.display='none'">
                    <div class="visual-card-placeholder">
                        <i class="fa-solid fa-masks-theater"></i>
                        <p>Drama Program · Creatica Theatre Hub</p>
                    </div>
                </div>
                <div class="float-badge">
                    <i class="fa-solid fa-masks-theater"></i>
                    <div>
                        <div class="float-badge-num">50+</div>
                        <div class="float-badge-label">Productions</div>
                    </div>
                </div>
            </div>
            <div class="reveal">
                <div class="section-tag">About the Program</div>
                <h2 class="ov-heading">Where Stories Come <span>Alive</span><br>on Stage</h2>
                <p class="ov-body">Our Drama Program takes students on a complete journey through the theatrical arts — from reading and analysing scripts to delivering powerful performances before a live audience. Guided by experienced directors and actors, you will develop stage craft, emotional depth and creative confidence.</p>
                <p class="ov-body">Whether you are a complete beginner or someone with stage experience looking to refine your skills, this program provides the structured training and creative freedom to grow into a well-rounded theatre artist.</p>
                <div class="ov-features">
                    <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Script reading, analysis and interpretation</div>
                    <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Dialogue delivery and emotional expression</div>
                    <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Stage blocking, movement and direction</div>
                    <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Street plays and awareness theatre production</div>
                    <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Full-scale end-of-term stage production</div>
                    <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Official certificate on program completion</div>
                </div>
                <div style="display:flex;gap:1rem;flex-wrap:wrap;">
                    <a href="#apply" class="btn btn-theme2"><i class="fa-solid fa-pen-to-square" style="margin-right:6px"></i>Apply Now</a>
                    <a href="/creatica_theater_hub/user/contact" class="btn btn-theme1"><i class="fa-solid fa-phone" style="margin-right:6px"></i>Enquire</a>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="rainbow-bar"></div>
<!-- ── DRAMA DISCIPLINES ── -->
<section class="section styles-section" id="disciplines">
    <div class="section-inner">
        <h2 class="section-title reveal">Drama Disciplines We Cover</h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal">A rich and varied curriculum covering every dimension of the dramatic arts — from classical to contemporary.</p>
        <div class="styles-grid">

            <div class="style-card reveal">
                <div class="style-img-wrap"><i class="fa-solid fa-scroll style-main-icon"></i></div>
                <div class="style-body">
                    <div class="style-name">Script Theatre</div>
                    <p class="style-desc">In-depth work with written scripts — reading, analysis, character mapping and full staged production for both classical and contemporary plays.</p>
                    <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Classical</span>
                </div>
            </div>

            <div class="style-card reveal">
                <div class="style-img-wrap"><i class="fa-solid fa-people-arrows style-main-icon"></i></div>
                <div class="style-body">
                    <div class="style-name">Street Theatre</div>
                    <p class="style-desc">High-energy, non-costumed performance in public spaces — using drama as a tool for social awareness, community engagement and cultural expression.</p>
                    <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Social Impact</span>
                </div>
            </div>

            <div class="style-card reveal">
                <div class="style-img-wrap"><i class="fa-solid fa-comments style-main-icon"></i></div>
                <div class="style-body">
                    <div class="style-name">Dialogue &amp; Monologue</div>
                    <p class="style-desc">Mastering the spoken word — tone, pause, rhythm and emotional truth in both two-person scenes and powerful solo monologue performance.</p>
                    <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Voice Work</span>
                </div>
            </div>

            <div class="style-card reveal">
                <div class="style-img-wrap"><i class="fa-solid fa-people-group style-main-icon"></i></div>
                <div class="style-body">
                    <div class="style-name">Ensemble Theatre</div>
                    <p class="style-desc">Collaborative group productions exploring synchronised movement, choral speaking and collective storytelling to create immersive theatrical experiences.</p>
                    <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Group Work</span>
                </div>
            </div>

            <div class="style-card reveal">
                <div class="style-img-wrap"><i class="fa-solid fa-pen-fancy style-main-icon"></i></div>
                <div class="style-body">
                    <div class="style-name">Playwriting</div>
                    <p class="style-desc">Introduction to dramatic writing — structuring scenes, creating compelling characters and writing original short plays for student productions.</p>
                    <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Creative Writing</span>
                </div>
            </div>

            <div class="style-card reveal">
                <div class="style-img-wrap"><i class="fa-solid fa-theater-masks style-main-icon"></i></div>
                <div class="style-body">
                    <div class="style-name">Physical Theatre</div>
                    <p class="style-desc">Using the body as the primary instrument — mime, gesture, spatial awareness and physicality to tell stories without relying solely on dialogue.</p>
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
        <p class="section-subtitle reveal">A well-structured 4-month journey from drama fundamentals to a full staged production.</p>
        <div class="curriculum-grid">

            <div class="curriculum-level reveal">
                <div class="level-header">
                    <div class="level-icon"><i class="fa-solid fa-seedling"></i></div>
                    <div>
                        <div class="level-name">Foundation Level</div>
                        <div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Month 1</div>
                    </div>
                </div>
                <div class="level-body">
                    <ul class="level-topics">
                        <li><i class="fa-solid fa-circle-dot"></i> Introduction to theatre and its history</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Body warm-up, relaxation and awareness</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Voice projection and breathing techniques</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Basic improvisation and trust exercises</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Stage terminology and theatre etiquette</li>
                    </ul>
                </div>
            </div>

            <div class="curriculum-level reveal">
                <div class="level-header">
                    <div class="level-icon"><i class="fa-solid fa-scroll"></i></div>
                    <div>
                        <div class="level-name">Script &amp; Character</div>
                        <div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Month 2</div>
                    </div>
                </div>
                <div class="level-body">
                    <ul class="level-topics">
                        <li><i class="fa-solid fa-circle-dot"></i> Script reading and scene breakdown</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Character analysis and motivation</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Dialogue delivery and emotional truth</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Monologue preparation and performance</li>
                        <li><i class="fa-solid fa-circle-dot"></i> First scene presentation assessment</li>
                    </ul>
                </div>
            </div>

            <div class="curriculum-level reveal">
                <div class="level-header">
                    <div class="level-icon"><i class="fa-solid fa-masks-theater"></i></div>
                    <div>
                        <div class="level-name">Stage Craft</div>
                        <div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Month 3</div>
                    </div>
                </div>
                <div class="level-body">
                    <ul class="level-topics">
                        <li><i class="fa-solid fa-circle-dot"></i> Stage blocking and spatial composition</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Lighting, sound and technical basics</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Ensemble scenes and group coordination</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Costume, props and set design basics</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Rehearsal discipline and stage management</li>
                    </ul>
                </div>
            </div>

            <div class="curriculum-level reveal">
                <div class="level-header">
                    <div class="level-icon"><i class="fa-solid fa-star"></i></div>
                    <div>
                        <div class="level-name">Final Production</div>
                        <div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Month 4</div>
                    </div>
                </div>
                <div class="level-body">
                    <ul class="level-topics">
                        <li><i class="fa-solid fa-circle-dot"></i> Full-length play preparation and rehearsal</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Dress rehearsal with lights, sound &amp; costume</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Live stage performance before audience</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Director and peer feedback session</li>
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
        <p class="section-subtitle reveal">Multiple batch options designed to fit around school, college and work schedules.</p>
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
                        <div class="timetable-cell"><span class="batch-badge batch-intro"><i class="fa-solid fa-seedling"></i> Beginner</span></div>
                        <div class="timetable-cell">5:00 PM – 7:00 PM</div>
                        <div class="timetable-cell">Mon / Wed / Fri</div>
                    </div>
                    <div class="timetable-row">
                        <div class="timetable-cell"><span class="batch-badge batch-stage"><i class="fa-solid fa-masks-theater"></i> Stage</span></div>
                        <div class="timetable-cell">6:00 PM – 8:00 PM</div>
                        <div class="timetable-cell">Tue / Thu / Sat</div>
                    </div>
                    <div class="timetable-row">
                        <div class="timetable-cell"><span class="batch-badge batch-adv"><i class="fa-solid fa-star"></i> Advanced</span></div>
                        <div class="timetable-cell">9:00 AM – 12:00 PM</div>
                        <div class="timetable-cell">Sat &amp; Sun</div>
                    </div>
                    <div class="timetable-row">
                        <div class="timetable-cell"><span class="batch-badge batch-prod"><i class="fa-solid fa-people-arrows"></i> Street Play</span></div>
                        <div class="timetable-cell">4:00 PM – 6:00 PM</div>
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
                        <div class="fee-amount">₹ 750 / month</div>
                    </div>
                    <div class="fee-item">
                        <div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Full Program (4M)</div>
                        <div class="fee-amount">₹ 2,800</div>
                    </div>
                    <div class="fee-item">
                        <div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Street Play Module</div>
                        <div class="fee-amount">₹ 500 / month</div>
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
        <h2 class="section-title reveal">Our Drama Trainers</h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal">Learn from passionate theatre directors and performers with years of stage experience.</p>
        <div class="trainers-grid">

            <div class="trainer-card reveal">
                <div class="trainer-img-wrap">
                    <img src="/content/images/drama-trainer1.jpg" alt="Arjun Mehta" onerror="this.style.display='none'">
                    <div class="trainer-placeholder"><i class="fa-solid fa-user"></i></div>
                    <div class="trainer-role-badge">Head Drama Trainer</div>
                </div>
                <div class="trainer-body">
                    <div class="trainer-name">Arjun Mehta</div>
                    <div class="trainer-spec">Theatre Direction &amp; Script Work</div>
                    <div class="trainer-exp"><i class="fa-solid fa-award"></i> 14+ Years Experience</div>
                    <div class="trainer-socials">
                        <a href="#"><i class="fa-brands fa-instagram"></i></a>
                        <a href="#"><i class="fa-brands fa-youtube"></i></a>
                        <a href="#"><i class="fa-brands fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>

            <div class="trainer-card reveal">
                <div class="trainer-img-wrap">
                    <img src="/content/images/drama-trainer2.jpg" alt="Sunita Rao" onerror="this.style.display='none'">
                    <div class="trainer-placeholder"><i class="fa-solid fa-user"></i></div>
                    <div class="trainer-role-badge">Stage &amp; Movement Coach</div>
                </div>
                <div class="trainer-body">
                    <div class="trainer-name">Sunita Rao</div>
                    <div class="trainer-spec">Physical Theatre &amp; Ensemble Work</div>
                    <div class="trainer-exp"><i class="fa-solid fa-award"></i> 9+ Years Experience</div>
                    <div class="trainer-socials">
                        <a href="#"><i class="fa-brands fa-instagram"></i></a>
                        <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                        <a href="#"><i class="fa-solid fa-envelope"></i></a>
                    </div>
                </div>
            </div>

            <div class="trainer-card reveal">
                <div class="trainer-img-wrap">
                    <img src="/content/images/drama-trainer3.jpg" alt="Ravi Joshi" onerror="this.style.display='none'">
                    <div class="trainer-placeholder"><i class="fa-solid fa-user"></i></div>
                    <div class="trainer-role-badge">Street Theatre Coach</div>
                </div>
                <div class="trainer-body">
                    <div class="trainer-name">Ravi Joshi</div>
                    <div class="trainer-spec">Street Theatre &amp; Social Drama</div>
                    <div class="trainer-exp"><i class="fa-solid fa-award"></i> 7+ Years Experience</div>
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
        <h2 class="section-title reveal">From Our Drama Studio</h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal">Glimpses from rehearsals, street plays and stage productions — where every scene tells a story.</p>
    </div>
    <div class="gallery-mosaic">
        <div class="gallery-cell reveal">
            <img src="/content/images/drama-gallery1.jpg" alt="Drama Gallery 1" onerror="this.style.display='none'">
            <i class="gallery-icon-placeholder fa-solid fa-masks-theater"></i>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
        <div class="gallery-cell reveal">
            <img src="/content/images/drama-gallery2.jpg" alt="Drama Gallery 2" onerror="this.style.display='none'">
            <i class="gallery-icon-placeholder fa-solid fa-scroll"></i>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
        <div class="gallery-cell reveal">
            <img src="/content/images/drama-gallery3.jpg" alt="Drama Gallery 3" onerror="this.style.display='none'">
            <i class="gallery-icon-placeholder fa-solid fa-people-arrows"></i>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
        <div class="gallery-cell reveal">
            <img src="/content/images/drama-gallery4.jpg" alt="Drama Gallery 4" onerror="this.style.display='none'">
            <i class="gallery-icon-placeholder fa-solid fa-theater-masks"></i>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
        <div class="gallery-cell reveal">
            <img src="/content/images/drama-gallery5.jpg" alt="Drama Gallery 5" onerror="this.style.display='none'">
            <i class="gallery-icon-placeholder fa-solid fa-star"></i>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
    </div>
    <div style="text-align:center;">
        <a href="/creatica_theater_hub/user/gallery" class="btn btn-theme2"><i class="fa-solid fa-images" style="margin-right:6px"></i>View Full Gallery</a>
    </div>
</section>
    <!-- ── APPLY ── -->
<section class="apply-section" id="apply">
    <div class="apply-grid">
        <div class="reveal">
            <div class="apply-eyebrow"><i class="fa-solid fa-circle-dot"></i> Admissions Open</div>
            <h2 class="apply-heading">Enroll in the<br><span>Drama Program</span> Today</h2>
            <p class="apply-body">Secure your place in our next batch. Fill in the quick form and our team will confirm your enrolment within 24 hours. Limited seats per batch — apply early.</p>
            <div class="apply-perks">
                <div class="apply-perk">
                    <div class="apply-perk-icon"><i class="fa-solid fa-user-graduate"></i></div>
                    Training by experienced theatre directors
                </div>
                <div class="apply-perk">
                    <div class="apply-perk-icon"><i class="fa-solid fa-masks-theater"></i></div>
                    Full-scale end-of-term stage production
                </div>
                <div class="apply-perk">
                    <div class="apply-perk-icon"><i class="fa-solid fa-people-arrows"></i></div>
                    Street play and social awareness theatre
                </div>
                <div class="apply-perk">
                    <div class="apply-perk-icon"><i class="fa-solid fa-certificate"></i></div>
                    Official NGO certificate on completion
                </div>
                <div class="apply-perk">
                    <div class="apply-perk-icon"><i class="fa-solid fa-users"></i></div>
                    Small batches for personalised direction
                </div>
            </div>
            <div class="apply-btns">
                <a href="/creatica_theater_hub/user/contact" class="btn-gold"><i class="fa-solid fa-phone"></i> Call Us Now</a>
                <a href="/creatica_theater_hub/user/contact" class="btn-ghost-white"><i class="fa-solid fa-envelope"></i> Email Enquiry</a>
            </div>
        </div>

        <div class="reveal">
            <div class="apply-form-card">
                <div class="apply-form-header">
                    <i class="fa-solid fa-pen-to-square"></i>
                    <div class="apply-form-header-title">Drama Program Application</div>
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
                                    <option>Beginner – Evening</option>
                                    <option>Stage – Evening</option>
                                    <option>Advanced – Weekend</option>
                                    <option>Street Play – Sunday</option>
                                </select>
                            </div>
                        </div>
                        <div class="af-group">
                            <label class="af-label"><i class="fa-solid fa-masks-theater"></i> Drama Interest</label>
                            <select class="af-select">
                                <option>Stage Theatre / Production</option>
                                <option>Street Theatre / Social Plays</option>
                                <option>Playwriting</option>
                                <option>Physical Theatre</option>
                                <option>No Specific Preference</option>
                            </select>
                        </div>
                        <button type="submit" class="btn-af-submit">
                            <i class="fa-solid fa-paper-plane"></i> Submit Application
                        </button>
                        <div style="text-align:center;font-size:0.75rem;color:#aaa;margin-top:0.8rem;display:flex;align-items:center;justify-content:center;gap:0.4rem;">
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
    <p class="section-subtitle reveal">Real words from students who found their stage at Creatica.</p>
    <div class="t-grid">
        <div class="t-card reveal">
            <div class="t-quote"><i class="fa-solid fa-quote-left"></i></div>
            <p class="t-text">The Drama Program unlocked a side of me I never knew existed. Arjun sir's direction is sharp, patient and incredibly inspiring — every class felt like a revelation.</p>
            <div class="t-author">
                <div class="t-avatar" style="background:#0EB555;"><i class="fa-solid fa-user"></i></div>
                <div>
                    <div class="t-name">Dhruv Patel</div>
                    <div class="t-role">Stage Theatre · Batch 2024</div>
                    <div class="t-stars"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                </div>
            </div>
        </div>
        <div class="t-card reveal">
            <div class="t-quote"><i class="fa-solid fa-quote-left"></i></div>
            <p class="t-text">I joined for fun and ended up performing in a full-scale production before an audience of 300 people. The experience completely transformed my confidence and communication skills.</p>
            <div class="t-author">
                <div class="t-avatar" style="background:#F29B2E;"><i class="fa-solid fa-user"></i></div>
                <div>
                    <div class="t-name">Isha Sharma</div>
                    <div class="t-role">Ensemble Theatre · Batch 2024</div>
                    <div class="t-stars"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                </div>
            </div>
        </div>
        <div class="t-card reveal">
            <div class="t-quote"><i class="fa-solid fa-quote-left"></i></div>
            <p class="t-text">The street theatre module was unlike anything I had done before — performing for communities, driving real social conversations. Powerful, humbling and absolutely unforgettable.</p>
            <div class="t-author">
                <div class="t-avatar" style="background:#2E6F95;"><i class="fa-solid fa-user"></i></div>
                <div>
                    <div class="t-name">Manav Joshi</div>
                    <div class="t-role">Street Theatre · Batch 2024</div>
                    <div class="t-stars"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
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
    function handleApply(e) {
        e.preventDefault();
        const btn = e.target.querySelector('.btn-af-submit');
        btn.innerHTML = '<i class="fa-solid fa-circle-check"></i> Application Submitted!';
        btn.style.background = '#0a9447';
        btn.disabled = true;
        setTimeout(() => {
            btn.innerHTML = '<i class="fa-solid fa-paper-plane"></i> Submit Application';
            btn.style.background = '#0EB555';
            btn.disabled = false;
            e.target.reset();
        }, 3500);
    }

    const revealEls = document.querySelectorAll('.reveal');
    const revealObs = new IntersectionObserver((entries) => {
        entries.forEach((entry, i) => {
            if (entry.isIntersecting) setTimeout(() => entry.target.classList.add('visible'), i * 80);
        });
    }, { threshold: 0.08 });
    revealEls.forEach(el => revealObs.observe(el));
</script>
</body>

</html>