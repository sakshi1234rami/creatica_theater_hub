<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
    
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About page-Volunteer</title>
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
                <div class="breadcrumb-eyebrow">
                    <i class="fa-solid fa-circle-dot"></i>
                    Creatica Charitable Trust
                </div>
                <h1 class="breadcrumb-title">Volunteer <span>With Us</span></h1>
            </div>
            <div class="breadcrumb-trail">
                <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house" style="margin-right:4px"></i>Home</a>
                <span class="sep">/</span>
                <a href="/creatica_theater_hub/user/about">About Us</a>
                <span class="sep">/</span>
                <span class="active">Volunteer</span>
            </div>
        </div>
    </section>

    <div class="rainbow-bar"></div>

    <!-- ── WHY VOLUNTEER ── -->
    <section class="section benefits-section" id="benefits">
        <div class="section-inner">
            <h2 class="section-title reveal">Why Volunteer With Us?</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">Join the Creatica family and gain experiences that go far beyond the
                stage.</p>
            <div class="benefits-grid">
                <div class="benefit-card reveal">
                    <div class="benefit-icon"><i class="fa-solid fa-masks-theater"></i></div>
                    <div class="benefit-title">Event Experience</div>
                    <p class="benefit-text">Work hands-on in theatre productions, cultural festivals and live
                        performances that build your real-world arts experience.</p>
                </div>
                <div class="benefit-card reveal">
                    <div class="benefit-icon"><i class="fa-solid fa-users"></i></div>
                    <div class="benefit-title">Networking</div>
                    <p class="benefit-text">Connect with artists, directors, performers and creative professionals who
                        can open doors for your career.</p>
                </div>
                <div class="benefit-card reveal">
                    <div class="benefit-icon"><i class="fa-solid fa-certificate"></i></div>
                    <div class="benefit-title">Certification</div>
                    <p class="benefit-text">Receive an official volunteer certificate from a registered NGO — a valuable
                        addition to your portfolio and resume.</p>
                </div>
                <div class="benefit-card reveal">
                    <div class="benefit-icon"><i class="fa-solid fa-lightbulb"></i></div>
                    <div class="benefit-title">Skill Development</div>
                    <p class="benefit-text">Learn event management, stage coordination, promotion and creative
                        production skills from industry professionals.</p>
                </div>
                <div class="benefit-card reveal">
                    <div class="benefit-icon"><i class="fa-solid fa-earth-asia"></i></div>
                    <div class="benefit-title">Cultural Exposure</div>
                    <p class="benefit-text">Participate in national and international cultural events, broadening your
                        artistic and personal horizons.</p>
                </div>
                <div class="benefit-card reveal">
                    <div class="benefit-icon"><i class="fa-solid fa-heart"></i></div>
                    <div class="benefit-title">Community Impact</div>
                    <p class="benefit-text">Make a real difference in the lives of young artists and help build a
                        stronger, more creative community.</p>
                </div>
            </div>
        </div>
    </section>

    <div class="rainbow-bar"></div>

    <!-- ── ROLES + FORM ── -->
    <section class="section volunteer-main" id="register">
        <div class="section-inner">
            <div class="volunteer-grid">

                <!-- LEFT: Volunteer Roles -->
                <div class="reveal">
                    <div class="section-tag">Open Roles</div>
                    <h2 class="roles-heading">Areas You Can Contribute</h2>
                    <p class="roles-sub">We welcome volunteers from all backgrounds. Choose the area that matches your
                        passion and skills.</p>

                    <div class="role-item">
                        <div class="role-icon"><i class="fa-solid fa-calendar-days"></i></div>
                        <div class="role-info">
                            <div class="role-name">Event Management</div>
                            <div class="role-desc">Coordinate and manage theatre festivals, cultural events and
                                workshops.</div>
                        </div>
                    </div>
                    <div class="role-item">
                        <div class="role-icon"><i class="fa-solid fa-stage"></i></div>
                        <div class="role-info">
                            <div class="role-name">Stage Management</div>
                            <div class="role-desc">Oversee stage setup, props, lighting and backstage operations during
                                productions.</div>
                        </div>
                    </div>
                    <div class="role-item">
                        <div class="role-icon"><i class="fa-solid fa-bullhorn"></i></div>
                        <div class="role-info">
                            <div class="role-name">Promotion &amp; Marketing</div>
                            <div class="role-desc">Help spread the word through social media, posters and community
                                outreach.</div>
                        </div>
                    </div>
                    <div class="role-item">
                        <div class="role-icon"><i class="fa-solid fa-camera"></i></div>
                        <div class="role-info">
                            <div class="role-name">Photography &amp; Media</div>
                            <div class="role-desc">Capture performances, events and behind-the-scenes moments for our
                                archive.</div>
                        </div>
                    </div>
                    <div class="role-item">
                        <div class="role-icon"><i class="fa-solid fa-chalkboard-user"></i></div>
                        <div class="role-info">
                            <div class="role-name">Teaching Assistant</div>
                            <div class="role-desc">Support trainers in dance, drama, music and acting workshops for
                                young students.</div>
                        </div>
                    </div>
                    <div class="role-item">
                        <div class="role-icon"><i class="fa-solid fa-laptop"></i></div>
                        <div class="role-info">
                            <div class="role-name">Digital &amp; Design</div>
                            <div class="role-desc">Create graphics, manage website content and handle digital
                                communications.</div>
                        </div>
                    </div>
                </div>

                <!-- RIGHT: Registration Form -->
                <div class="reveal">
                    <div class="form-card">
                        <div class="form-header">
                            <div class="form-header-icon">
                                <i class="fa-solid fa-hands-helping"></i>
                            </div>
                            <div class="form-title">Volunteer Registration</div>
                            <div class="form-subtitle">Fill in your details and we'll get back to you within 48 hours.
                            </div>
                        </div>
                        <div class="form-body">
                            <form onsubmit="handleSubmit(event)">
                                <div class="form-row">
                                    <div class="form-group">
                                        <label class="form-label"><i class="fa-solid fa-user"></i> First Name</label>
                                        <input type="text" class="form-control" placeholder="Your first name" required>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label"><i class="fa-solid fa-user"></i> Last Name</label>
                                        <input type="text" class="form-control" placeholder="Your last name" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-envelope"></i> Email Address</label>
                                    <input type="email" class="form-control" placeholder="you@example.com" required>
                                </div>
                                <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-phone"></i> Phone Number</label>
                                    <input type="tel" class="form-control" placeholder="+91 00000 00000" required>
                                </div>
                                <div class="form-row">
                                    <div class="form-group">
                                        <label class="form-label"><i class="fa-solid fa-location-dot"></i> City</label>
                                        <input type="text" class="form-control" placeholder="Your city">
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label"><i class="fa-solid fa-calendar"></i>
                                            Availability</label>
                                        <select class="form-select">
                                            <option>Weekends Only</option>
                                            <option>Weekdays Only</option>
                                            <option>Flexible / Both</option>
                                            <option>Event-Based</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-sliders"></i> Area of
                                        Interest</label>
                                    <select class="form-select">
                                        <option>Event Management</option>
                                        <option>Stage Management</option>
                                        <option>Promotion &amp; Marketing</option>
                                        <option>Photography &amp; Media</option>
                                        <option>Teaching Assistant</option>
                                        <option>Digital &amp; Design</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-pen-to-square"></i> Tell Us About
                                        Yourself</label>
                                    <textarea class="form-textarea"
                                        placeholder="Brief introduction — your background, skills or why you want to volunteer..."></textarea>
                                </div>
                                <button type="submit" class="btn-submit">
                                    <i class="fa-solid fa-paper-plane"></i> Submit Application
                                </button>
                                <div class="form-note">
                                    <i class="fa-solid fa-shield-halved"></i>
                                    Your information is safe and will not be shared with third parties.
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- ── PROCESS STEPS ── -->
    <section class="section process-section" id="process" style="background:#fff;">
        <div class="section-inner">
            <h2 class="section-title reveal">How It Works</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">From application to action — our simple 4-step volunteer process.</p>
            <div class="steps-row">
                <div class="step-box reveal">
                    <div class="step-circle" style="position:relative">
                        <i class="fa-solid fa-file-pen"></i>
                        <div class="step-num-badge">1</div>
                    </div>
                    <div class="step-label">Apply Online</div>
                    <p class="step-desc">Fill out the registration form with your details and area of interest.</p>
                </div>
                <div class="step-box reveal">
                    <div class="step-circle" style="position:relative">
                        <i class="fa-solid fa-phone-volume"></i>
                        <div class="step-num-badge">2</div>
                    </div>
                    <div class="step-label">We Call You</div>
                    <p class="step-desc">Our team will reach out within 48 hours to discuss your role and fit.</p>
                </div>
                <div class="step-box reveal">
                    <div class="step-circle" style="position:relative">
                        <i class="fa-solid fa-id-card"></i>
                        <div class="step-num-badge">3</div>
                    </div>
                    <div class="step-label">Orientation</div>
                    <p class="step-desc">Attend a short orientation session to understand our programs and values.</p>
                </div>
                <div class="step-box reveal">
                    <div class="step-circle" style="position:relative">
                        <i class="fa-solid fa-star"></i>
                        <div class="step-num-badge">4</div>
                    </div>
                    <div class="step-label">Start Volunteering</div>
                    <p class="step-desc">Begin your volunteer journey and make a real difference through the arts!</p>
                </div>
            </div>
        </div>
    </section>

    <!-- ── VOLUNTEER TESTIMONIALS ── -->
    <section class="vol-testimonials" id="testimonials">
        <h2 class="section-title reveal">What Our Volunteers Say</h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal">Hear from people who have already made a difference with Creatica.</p>
        <div class="t-grid">
            <div class="t-card reveal">
                <div class="t-quote-icon"><i class="fa-solid fa-quote-left"></i></div>
                <p class="t-text">Volunteering at Creatica was one of the most fulfilling experiences of my life. I
                    learned so much about event production and met incredible artists.</p>
                <div class="t-author">
                    <div class="t-avatar" style="background:#F29B2E;"><i class="fa-solid fa-user"></i></div>
                    <div>
                        <div class="t-name">Anita Patel</div>
                        <div class="t-role">Event Management Volunteer</div>
                        <div class="t-stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="t-card reveal">
                <div class="t-quote-icon"><i class="fa-solid fa-quote-left"></i></div>
                <p class="t-text">The certificate I received opened doors for me professionally. But more than that,
                    working with the young students was deeply rewarding.</p>
                <div class="t-author">
                    <div class="t-avatar" style="background:#2E6F95;"><i class="fa-solid fa-user"></i></div>
                    <div>
                        <div class="t-name">Rohan Shah</div>
                        <div class="t-role">Teaching Assistant Volunteer</div>
                        <div class="t-stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="t-card reveal">
                <div class="t-quote-icon"><i class="fa-solid fa-quote-left"></i></div>
                <p class="t-text">I handled photography for two festivals and built a portfolio I am truly proud of.
                    Creatica gives volunteers real responsibility and trust.</p>
                <div class="t-author">
                    <div class="t-avatar" style="background:#0EB555;"><i class="fa-solid fa-user"></i></div>
                    <div>
                        <div class="t-name">Kavya Desai</div>
                        <div class="t-role">Photography Volunteer</div>
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

    <!-- ── CTA BANNER ── -->
    <section class="cta-section">
        <div class="breadcrumb-eyebrow" style="justify-content:center; margin-bottom:1.2rem;">
            <i class="fa-solid fa-circle-dot"></i> Be the Change
        </div>
        <h2 class="cta-title reveal">Ready to <span>Make a Difference?</span></h2>
        <p class="cta-sub reveal">Join our growing family of volunteers and help us bring the joy of performing arts to
            more young people across India.</p>
        <div class="cta-btns reveal">
            <a href="/creatica_theater_hub/user/registration" class="btn-white">
                <i class="fa-solid fa-hands-helping" style="margin-right:6px"></i>Register Now
            </a>
            <a href="/creatica_theater_hub/user/contact" class="btn-ghost-white">
                <i class="fa-solid fa-envelope" style="margin-right:6px"></i>Contact Us
            </a>
        </div>
    </section>

	 <!-- -----------------------------Footer css------------------------------------------------ -->
    
   <jsp:include page="../user/footer.jsp"></jsp:include>
   
   <!-- -----------------------------Footer css end------------------------------------------------ -->
    
    <jsp:include page="../user/links/Userfootlink.jsp"></jsp:include>
    <script>
        /* ── FORM SUBMIT ── */
        function handleSubmit(e) {
            e.preventDefault();
            const btn = e.target.querySelector('.btn-submit');
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