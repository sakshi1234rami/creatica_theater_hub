<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
    
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Program-Music</title>
	<jsp:include page="../user/links/Userheadlink.jsp"></jsp:include>
</head>

<body>
	
	
	 <!-----------------------------------------Header section--------------------------------------->

   <jsp:include page="../user/header.jsp"></jsp:include>

    <!-----------------------------------------Header section end--------------------------------------->
	
   

    <!-------------------------------- BREADCRUMB -------------------------------->

   <!-- HERO -->
<section class="breadcrumb-hero">
    <div class="breadcrumb-hero-inner">
        <div>
            <div class="breadcrumb-eyebrow"><i class="fa-solid fa-circle-dot"></i> Our Programs · Creatica Theatre Hub</div>
            <h1 class="breadcrumb-title">
                <i class="fa-solid fa-guitar" style="color:#F2C94C;margin-right:12px;font-size:0.85em"></i>Music <span>Program</span>
            </h1>
            <p class="hero-desc">Discover the joy of music through guided training in vocals, instruments and rhythm. Build your musical identity from the ground up under expert musicians.</p>
            <div class="hero-btns">
                <a href="#apply" class="btn-gold"><i class="fa-solid fa-pen-to-square"></i> Apply Now</a>
                <a href="#overview" class="btn-ghost-white"><i class="fa-solid fa-circle-info"></i> Learn More</a>
            </div>
            <div class="hero-badges">
                <div class="hero-badge"><i class="fa-solid fa-user-graduate"></i> All Levels Welcome</div>
                <div class="hero-badge"><i class="fa-solid fa-clock"></i> 6 Month Duration</div>
                <div class="hero-badge"><i class="fa-solid fa-calendar-days"></i> Mon / Wed Batches</div>
                <div class="hero-badge"><i class="fa-solid fa-certificate"></i> Certificate Provided</div>
            </div>
        </div>
        <div class="breadcrumb-trail">
            <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house" style="margin-right:4px"></i>Home</a>
            <span class="sep">/</span>
            <a href="/creatica_theater_hub/user/ourprogram">Programs</a>
            <span class="sep">/</span>
            <span class="active">Music</span>
        </div>
    </div>
</section>

<div class="rainbow-bar"></div>



   <!-- INFO STRIP -->
<div class="info-strip">
    <div class="info-strip-grid">
        <div class="info-strip-item reveal">
            <div class="strip-i"><i class="fa-solid fa-user-tie"></i></div>
            <div class="strip-label">Head Trainer</div>
            <div class="strip-val">Sonal Dave</div>
        </div>
        <div class="info-strip-item reveal">
            <div class="strip-i"><i class="fa-solid fa-clock"></i></div>
            <div class="strip-label">Duration</div>
            <div class="strip-val">6 Months</div>
        </div>
        <div class="info-strip-item reveal">
            <div class="strip-i"><i class="fa-solid fa-calendar-days"></i></div>
            <div class="strip-label">Schedule</div>
            <div class="strip-val">Mon / Wed</div>
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

   

    <!-- OVERVIEW -->
<section class="section overview-section" id="overview">
    <div class="section-inner">
        <div class="overview-grid">
            <div class="overview-visual reveal">
                <div class="corner-tl"></div>
                <div class="corner-br"></div>
                <div class="visual-card">
                    <img src="/content/images/music.jpg" alt="Music Program" onerror="this.style.display='none'">
                    <div class="visual-card-placeholder">
                        <i class="fa-solid fa-guitar"></i>
                        <p>Music Program · Creatica Theatre Hub</p>
                    </div>
                </div>
                <div class="float-badge">
                    <i class="fa-solid fa-music"></i>
                    <div>
                        <div class="float-badge-num">6+</div>
                        <div class="float-badge-label">Instruments</div>
                    </div>
                </div>
            </div>
            <div class="reveal">
                <div class="section-tag">About the Program</div>
                <h2 class="ov-heading">Find Your <span>Rhythm</span>,<br>Find Your Voice</h2>
                <p class="ov-body">Our Music Program is a comprehensive course that immerses students in the world of sound — from voice training and music theory to hands-on instrument tuition. Taught by professional musicians, each student receives personalised guidance tailored to their goals and musical interests.</p>
                <p class="ov-body">Whether you dream of performing on stage, composing your own music or simply learning an instrument for the joy of it — this program gives you the foundation, technique and creative freedom to grow as a musician.</p>
                <div class="ov-features">
                    <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Vocal training — classical, light and folk styles</div>
                    <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Instrument tuition — guitar, keyboard, tabla, flute &amp; more</div>
                    <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Music theory, notation and ear training</div>
                    <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Rhythm, beat and composition workshops</div>
                    <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Live performance at end-of-term recitals</div>
                    <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Official certificate on program completion</div>
                </div>
                <div style="display:flex;gap:1rem;flex-wrap:wrap;">
                    <a href="#apply" class="btn btn-theme1"><i class="fa-solid fa-pen-to-square" style="margin-right:6px"></i>Apply Now</a>
                    <a href="/creatica_theater_hub/user/contact" class="btn btn-theme2"><i class="fa-solid fa-phone" style="margin-right:6px"></i>Enquire</a>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="rainbow-bar"></div>



   <!-- DISCIPLINES -->
<section class="section styles-section" id="disciplines">
    <div class="section-inner">
        <h2 class="section-title reveal">Music Disciplines We Teach</h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal">A rich musical curriculum spanning vocals, instruments, theory and performance across classical and contemporary styles.</p>
        <div class="styles-grid">
            <div class="style-card reveal">
                <div class="style-img-wrap"><i class="fa-solid fa-microphone style-main-icon"></i></div>
                <div class="style-body">
                    <div class="style-name">Vocal Training</div>
                    <p class="style-desc">Classical, light and folk singing — covering breath control, sur-taal, raga basics and expressive delivery for stage and studio performance.</p>
                    <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Voice</span>
                </div>
            </div>
            <div class="style-card reveal">
                <div class="style-img-wrap"><i class="fa-solid fa-guitar style-main-icon"></i></div>
                <div class="style-body">
                    <div class="style-name">Guitar</div>
                    <p class="style-desc">Acoustic and electric guitar — chords, scales, fingerpicking techniques and song-based learning for beginners through to advanced players.</p>
                    <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Instrument</span>
                </div>
            </div>
            <div class="style-card reveal">
                <div class="style-img-wrap"><i class="fa-solid fa-keyboard style-main-icon"></i></div>
                <div class="style-body">
                    <div class="style-name">Keyboard &amp; Piano</div>
                    <p class="style-desc">Western and Indian keyboard — scales, chords, melodies and classical compositions from beginner exercises to intermediate performance pieces.</p>
                    <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Instrument</span>
                </div>
            </div>
            <div class="style-card reveal">
                <div class="style-img-wrap"><i class="fa-solid fa-drum style-main-icon"></i></div>
                <div class="style-body">
                    <div class="style-name">Tabla &amp; Percussion</div>
                    <p class="style-desc">Traditional tabla and hand percussion — taal, bols, layakari and rhythmic composition rooted in the Indian classical tradition.</p>
                    <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Rhythm</span>
                </div>
            </div>
            <div class="style-card reveal">
                <div class="style-img-wrap"><i class="fa-solid fa-wind style-main-icon"></i></div>
                <div class="style-body">
                    <div class="style-name">Flute &amp; Wind</div>
                    <p class="style-desc">Bansuri and basic wind instrument training — breath technique, fingering, classical ragas and folk melodies for beginner and intermediate students.</p>
                    <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Instrument</span>
                </div>
            </div>
            <div class="style-card reveal">
                <div class="style-img-wrap"><i class="fa-solid fa-music style-main-icon"></i></div>
                <div class="style-body">
                    <div class="style-name">Music Theory &amp; Composition</div>
                    <p class="style-desc">Notation reading, scales, harmony and basic composition — giving every student the intellectual foundation to understand and create music.</p>
                    <span class="style-tag"><i class="fa-solid fa-circle-dot"></i> Theory</span>
                </div>
            </div>
        </div>
    </div>
</section>



    <!-- INSTRUMENTS STRIP -->
<section class="instruments-section" id="instruments">
    <div style="max-width:1100px;margin:0 auto 2.5rem;">
        <h2 class="section-title reveal">Instruments Available</h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal">Students choose their primary instrument on enrolment. All instruments are available at the studio.</p>
    </div>
    <div class="instruments-grid">
        <div class="instrument-card reveal">
            <div class="instrument-icon"><i class="fa-solid fa-guitar"></i></div>
            <div class="instrument-name">Guitar</div>
            <div class="instrument-type">String</div>
        </div>
        <div class="instrument-card reveal">
            <div class="instrument-icon"><i class="fa-solid fa-keyboard"></i></div>
            <div class="instrument-name">Keyboard</div>
            <div class="instrument-type">Keys</div>
        </div>
        <div class="instrument-card reveal">
            <div class="instrument-icon"><i class="fa-solid fa-drum"></i></div>
            <div class="instrument-name">Tabla</div>
            <div class="instrument-type">Percussion</div>
        </div>
        <div class="instrument-card reveal">
            <div class="instrument-icon"><i class="fa-solid fa-wind"></i></div>
            <div class="instrument-name">Bansuri / Flute</div>
            <div class="instrument-type">Wind</div>
        </div>
        <div class="instrument-card reveal">
            <div class="instrument-icon"><i class="fa-solid fa-microphone"></i></div>
            <div class="instrument-name">Vocals</div>
            <div class="instrument-type">Voice</div>
        </div>
        <div class="instrument-card reveal">
            <div class="instrument-icon"><i class="fa-solid fa-music"></i></div>
            <div class="instrument-name">Harmonium</div>
            <div class="instrument-type">Keys</div>
        </div>
    </div>
</section>



    <!-- CURRICULUM -->
<section class="section curriculum-section" id="curriculum">
    <div class="section-inner">
        <h2 class="section-title reveal">Program Curriculum</h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal">A structured 6-month journey from musical foundations to confident live performance.</p>
        <div class="curriculum-grid">
            <div class="curriculum-level reveal">
                <div class="level-header">
                    <div class="level-icon"><i class="fa-solid fa-seedling"></i></div>
                    <div><div class="level-name">Foundation Level</div><div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Month 1 – 2</div></div>
                </div>
                <div class="level-body">
                    <ul class="level-topics">
                        <li><i class="fa-solid fa-circle-dot"></i> Introduction to music and basic theory</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Instrument familiarisation and posture</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Scales, notes and basic chord patterns</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Ear training and rhythmic exercises</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Simple songs and practice pieces</li>
                    </ul>
                </div>
            </div>
            <div class="curriculum-level reveal">
                <div class="level-header">
                    <div class="level-icon"><i class="fa-solid fa-music"></i></div>
                    <div><div class="level-name">Technical Development</div><div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Month 3 – 4</div></div>
                </div>
                <div class="level-body">
                    <ul class="level-topics">
                        <li><i class="fa-solid fa-circle-dot"></i> Advanced scales, arpeggios and techniques</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Music notation reading and writing</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Taal and rhythm pattern exercises</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Intermediate repertoire and compositions</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Mid-term solo performance assessment</li>
                    </ul>
                </div>
            </div>
            <div class="curriculum-level reveal">
                <div class="level-header">
                    <div class="level-icon"><i class="fa-solid fa-star"></i></div>
                    <div><div class="level-name">Expression &amp; Ensemble</div><div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Month 5</div></div>
                </div>
                <div class="level-body">
                    <ul class="level-topics">
                        <li><i class="fa-solid fa-circle-dot"></i> Ensemble playing and group harmony</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Musical improvisation and expression</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Song arrangement and accompaniment</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Introduction to basic composition</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Rehearsal for final recital preparation</li>
                    </ul>
                </div>
            </div>
            <div class="curriculum-level reveal">
                <div class="level-header">
                    <div class="level-icon"><i class="fa-solid fa-trophy"></i></div>
                    <div><div class="level-name">Final Recital</div><div class="level-dur"><i class="fa-solid fa-clock" style="margin-right:4px"></i>Month 6</div></div>
                </div>
                <div class="level-body">
                    <ul class="level-topics">
                        <li><i class="fa-solid fa-circle-dot"></i> Final piece selection and polishing</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Sound check and stage rehearsal</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Live recital performance before audience</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Professional feedback from musicians</li>
                        <li><i class="fa-solid fa-circle-dot"></i> Certificate and appreciation ceremony</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- SCHEDULE & FEE -->
<section class="section schedule-section" id="schedule">
    <div class="section-inner">
        <h2 class="section-title reveal">Schedule &amp; Fee Structure</h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal">Flexible batches to suit students of all ages and skill levels.</p>
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
                        <div class="timetable-cell"><span class="batch-badge batch-vocal"><i class="fa-solid fa-microphone"></i> Vocals</span></div>
                        <div class="timetable-cell">6:00 PM – 7:30 PM</div>
                        <div class="timetable-cell">Mon / Wed</div>
                    </div>
                    <div class="timetable-row">
                        <div class="timetable-cell"><span class="batch-badge batch-instr"><i class="fa-solid fa-guitar"></i> Instruments</span></div>
                        <div class="timetable-cell">4:00 PM – 5:30 PM</div>
                        <div class="timetable-cell">Tue / Thu</div>
                    </div>
                    <div class="timetable-row">
                        <div class="timetable-cell"><span class="batch-badge batch-theory"><i class="fa-solid fa-music"></i> Theory</span></div>
                        <div class="timetable-cell">10:00 AM – 11:30 AM</div>
                        <div class="timetable-cell">Saturday</div>
                    </div>
                    <div class="timetable-row">
                        <div class="timetable-cell"><span class="batch-badge batch-perf"><i class="fa-solid fa-star"></i> Ensemble</span></div>
                        <div class="timetable-cell">9:00 AM – 12:00 PM</div>
                        <div class="timetable-cell">Sat &amp; Sun</div>
                    </div>
                </div>
            </div>
            <div class="fee-card reveal">
                <div class="fee-header">
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <div class="fee-header-title">Fee Structure</div>
                </div>
                <div class="fee-body">
                    <div class="fee-item"><div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Registration Fee</div><div class="fee-amount">₹ 500</div></div>
                    <div class="fee-item"><div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Monthly Fee</div><div class="fee-amount">₹ 850 / month</div></div>
                    <div class="fee-item"><div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Full Program (6M)</div><div class="fee-amount">₹ 4,800</div></div>
                    <div class="fee-item"><div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Theory Only</div><div class="fee-amount">₹ 400 / month</div></div>
                    <div class="fee-item"><div class="fee-name"><i class="fa-solid fa-certificate"></i> Certificate Fee</div><div class="fee-amount">Included</div></div>
                    <div class="fee-note"><i class="fa-solid fa-shield-halved"></i> Subsidised fees available for deserving students — contact us to know more.</div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- TRAINERS -->
<section class="section trainers-section" id="trainers">
    <div class="section-inner">
        <h2 class="section-title reveal">Our Music Trainers</h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal">Learn from accomplished musicians who bring passion, professionalism and patience to every class.</p>
        <div class="trainers-grid">
            <div class="trainer-card reveal">
                <div class="trainer-img-wrap">
                    <img src="/content/images/music-trainer1.jpg" alt="Sonal Dave" onerror="this.style.display='none'">
                    <div class="trainer-placeholder"><i class="fa-solid fa-user"></i></div>
                    <div class="trainer-role-badge">Head Music Trainer</div>
                </div>
                <div class="trainer-body">
                    <div class="trainer-name">Sonal Dave</div>
                    <div class="trainer-spec">Vocals &amp; Music Direction</div>
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
                    <img src="/content/images/music-trainer2.jpg" alt="Nikhil Sharma" onerror="this.style.display='none'">
                    <div class="trainer-placeholder"><i class="fa-solid fa-user"></i></div>
                    <div class="trainer-role-badge">Guitar &amp; Keyboard Trainer</div>
                </div>
                <div class="trainer-body">
                    <div class="trainer-name">Nikhil Sharma</div>
                    <div class="trainer-spec">Guitar, Keyboard &amp; Theory</div>
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
                    <img src="/content/images/music-trainer3.jpg" alt="Ramesh Patel" onerror="this.style.display='none'">
                    <div class="trainer-placeholder"><i class="fa-solid fa-user"></i></div>
                    <div class="trainer-role-badge">Tabla &amp; Rhythm Trainer</div>
                </div>
                <div class="trainer-body">
                    <div class="trainer-name">Ramesh Patel</div>
                    <div class="trainer-spec">Tabla, Percussion &amp; Taal</div>
                    <div class="trainer-exp"><i class="fa-solid fa-award"></i> 10+ Years Experience</div>
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

<!-- GALLERY -->
<section class="section gallery-section" id="gallery">
    <div class="section-inner">
        <h2 class="section-title reveal">From Our Music Studio</h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal">Moments from practice sessions, recitals and workshops — where every note tells a story.</p>
    </div>
    <div class="gallery-mosaic">
        <div class="gallery-cell reveal">
            <img src="/content/images/music-gallery1.jpg" alt="Gallery 1" onerror="this.style.display='none'">
            <i class="gallery-icon-placeholder fa-solid fa-guitar"></i>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
        <div class="gallery-cell reveal">
            <img src="/content/images/music-gallery2.jpg" alt="Gallery 2" onerror="this.style.display='none'">
            <i class="gallery-icon-placeholder fa-solid fa-microphone"></i>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
        <div class="gallery-cell reveal">
            <img src="/content/images/music-gallery3.jpg" alt="Gallery 3" onerror="this.style.display='none'">
            <i class="gallery-icon-placeholder fa-solid fa-drum"></i>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
        <div class="gallery-cell reveal">
            <img src="/content/images/music-gallery4.jpg" alt="Gallery 4" onerror="this.style.display='none'">
            <i class="gallery-icon-placeholder fa-solid fa-keyboard"></i>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
        <div class="gallery-cell reveal">
            <img src="/content/images/music-gallery5.jpg" alt="Gallery 5" onerror="this.style.display='none'">
            <i class="gallery-icon-placeholder fa-solid fa-music"></i>
            <div class="gallery-overlay"><i class="fa-solid fa-magnifying-glass-plus"></i></div>
        </div>
    </div>
    <div style="text-align:center;">
        <a href="/creatica_theater_hub/user/gallery" class="btn btn-theme1"><i class="fa-solid fa-images" style="margin-right:6px"></i>View Full Gallery</a>
    </div>
</section>

<!-- APPLY -->
<section class="apply-section" id="apply">
    <div class="apply-grid">
        <div class="reveal">
            <div class="apply-eyebrow"><i class="fa-solid fa-circle-dot"></i> Admissions Open</div>
            <h2 class="apply-heading">Enrol in the<br><span>Music Program</span> Today</h2>
            <p class="apply-body">Secure your seat in our next batch. Fill in the form below and our team will confirm your enrolment within 24 hours. Limited seats per batch — apply early.</p>
            <div class="apply-perks">
                <div class="apply-perk"><div class="apply-perk-icon"><i class="fa-solid fa-user-graduate"></i></div>Training by professional performing musicians</div>
                <div class="apply-perk"><div class="apply-perk-icon"><i class="fa-solid fa-guitar"></i></div>Choice of 6+ instruments on enrolment</div>
                <div class="apply-perk"><div class="apply-perk-icon"><i class="fa-solid fa-music"></i></div>Live recital performance every term</div>
                <div class="apply-perk"><div class="apply-perk-icon"><i class="fa-solid fa-certificate"></i></div>Official NGO certificate on completion</div>
                <div class="apply-perk"><div class="apply-perk-icon"><i class="fa-solid fa-users"></i></div>Small batches for personalised tuition</div>
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
                    <div class="apply-form-header-title">Music Program Application</div>
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
                                    <option>Vocals – Mon/Wed</option>
                                    <option>Instruments – Tue/Thu</option>
                                    <option>Theory – Saturday</option>
                                    <option>Ensemble – Weekend</option>
                                </select>
                            </div>
                        </div>
                        <div class="af-group">
                            <label class="af-label"><i class="fa-solid fa-guitar"></i> Choose Instrument / Track</label>
                            <select class="af-select">
                                <option>Vocals</option>
                                <option>Guitar</option>
                                <option>Keyboard / Piano</option>
                                <option>Tabla / Percussion</option>
                                <option>Bansuri / Flute</option>
                                <option>Harmonium</option>
                                <option>Music Theory Only</option>
                            </select>
                        </div>
                        <button type="submit" class="btn-af-submit">
                            <i class="fa-solid fa-paper-plane"></i> Submit Application
                        </button>
                        <div style="text-align:center;font-size:0.75rem;color:#aaa;margin-top:0.8rem;display:flex;align-items:center;justify-content:center;gap:0.4rem;">
                            <i class="fa-solid fa-shield-halved" style="color:#0EB555"></i> Your details are safe and will not be shared.
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- TESTIMONIALS -->
<section class="testimonials-section" id="testimonials">
    <h2 class="section-title reveal">What Our Students Say</h2>
    <div class="section-divider reveal"></div>
    <p class="section-subtitle reveal">Real words from students who found their musical voice at Creatica.</p>
    <div class="t-grid">
        <div class="t-card reveal">
            <div class="t-quote"><i class="fa-solid fa-quote-left"></i></div>
            <p class="t-text">I had zero experience before joining. In just three months I was playing my first song on guitar. Nikhil sir's teaching style is patient, clear and genuinely inspiring.</p>
            <div class="t-author">
                <div class="t-avatar" style="background:#F29B2E;"><i class="fa-solid fa-user"></i></div>
                <div>
                    <div class="t-name">Kartik Patel</div>
                    <div class="t-role">Guitar · Batch 2024</div>
                    <div class="t-stars"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                </div>
            </div>
        </div>
        <div class="t-card reveal">
            <div class="t-quote"><i class="fa-solid fa-quote-left"></i></div>
            <p class="t-text">Sonal ma'am helped me discover my singing voice properly for the first time. The vocal training is thorough, structured and deeply rooted in both classical and contemporary styles.</p>
            <div class="t-author">
                <div class="t-avatar" style="background:#F2C94C;color:#1F2933;"><i class="fa-solid fa-user"></i></div>
                <div>
                    <div class="t-name">Pooja Mehta</div>
                    <div class="t-role">Vocals · Batch 2024</div>
                    <div class="t-stars"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                </div>
            </div>
        </div>
        <div class="t-card reveal">
            <div class="t-quote"><i class="fa-solid fa-quote-left"></i></div>
            <p class="t-text">Learning tabla at Creatica was one of the best decisions of my life. Ramesh sir has an extraordinary ability to make complex rhythms feel natural and accessible to any student.</p>
            <div class="t-author">
                <div class="t-avatar" style="background:#2E6F95;"><i class="fa-solid fa-user"></i></div>
                <div>
                    <div class="t-name">Varun Shah</div>
                    <div class="t-role">Tabla · Batch 2024</div>
                    <div class="t-stars"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- OTHER PROGRAMS -->
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
            <a href="/creatica_theater_hub/user/ourprogram/acting" class="other-card reveal">
                <div class="other-icon"><i class="fa-solid fa-video"></i></div>
                <div class="other-name">Acting Workshop</div>
                <p class="other-desc">Film acting, camera skills and screen presence training.</p>
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
                btn.style.background = '#F29B2E';
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