<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
    
    <!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Contact Us</title>
	<jsp:include page="../user/links/Userheadlink.jsp"></jsp:include>

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
                <h1 class="breadcrumb-title">Contact <span>Us</span></h1>
            </div>
            <div class="breadcrumb-trail">
                <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house" style="margin-right:4px"></i>Home</a>
                <span class="sep">/</span>
                <span class="active">Contact Us</span>
            </div>
        </div>
    </section>


    <div class="rainbow-bar"></div>

    <!-- ── CONTACT STRIP ── -->
    <div class="contact-strip">
        <div class="contact-strip-grid">
            <div class="contact-strip-card reveal">
                <div class="strip-icon"><i class="fa-solid fa-location-dot"></i></div>
                <div class="strip-label">Our Location</div>
                <div class="strip-value">Siddhpur, Gujarat, India</div>
            </div>
            <div class="contact-strip-card reveal">
                <div class="strip-icon"><i class="fa-solid fa-phone"></i></div>
                <div class="strip-label">Call Us</div>
                <div class="strip-value"><a href="tel:+917016093507">+91 7016093507</a></div>
            </div>
            <div class="contact-strip-card reveal">
                <div class="strip-icon"><i class="fa-solid fa-envelope"></i></div>
                <div class="strip-label">Email Us</div>
                <div class="strip-value"><a href="mailto:creatica@gmail.com">creatica@gmail.com</a></div>
            </div>
            <div class="contact-strip-card reveal">
                <div class="strip-icon"><i class="fa-solid fa-clock"></i></div>
                <div class="strip-label">Working Hours</div>
                <div class="strip-value">Mon – Sat: 10 AM – 7 PM</div>
            </div>
        </div>
    </div>

    <!-- ── CONTACT MAIN ── -->
    <section class="section contact-main" id="contact">
        <div class="section-inner">
            <div class="contact-grid">

                <!-- LEFT: INFO + SOCIAL + QUICK LINKS -->
                <div class="reveal">
                    <div class="section-tag">Reach Out</div>
                    <h2 class="info-heading">Get In Touch</h2>
                    <p class="info-sub">Have questions about our programs, events or training courses? We are here to
                        help. Reach out through any of the channels below.</p>

                    <div class="info-item">
                        <div class="info-icon"><i class="fa-solid fa-location-dot"></i></div>
                        <div>
                            <div class="info-text-label">Address</div>
                            <div class="info-text-val">Siddhpur, Gujarat – 384151, India</div>
                        </div>
                    </div>
                    <div class="info-item">
                        <div class="info-icon"><i class="fa-solid fa-phone"></i></div>
                        <div>
                            <div class="info-text-label">Phone</div>
                            <div class="info-text-val"><a href="tel:+917016093507">+91 7016093507</a></div>
                        </div>
                    </div>
                    <div class="info-item">
                        <div class="info-icon"><i class="fa-solid fa-envelope"></i></div>
                        <div>
                            <div class="info-text-label">Email</div>
                            <div class="info-text-val"><a href="mailto:creatica@gmail.com">creatica@gmail.com</a></div>
                        </div>
                    </div>
                    <div class="info-item">
                        <div class="info-icon"><i class="fa-solid fa-clock"></i></div>
                        <div>
                            <div class="info-text-label">Working Hours</div>
                            <div class="info-text-val">Monday – Saturday: 10 AM – 7 PM</div>
                        </div>
                    </div>

                    <div class="social-block">
                        <div class="social-block-title">Follow Us On</div>
                        <div class="social-row">
                            <a href="#" title="Facebook"><i class="fa-brands fa-facebook-f"></i></a>
                            <a href="#" title="Instagram"><i class="fa-brands fa-instagram"></i></a>
                            <a href="#" title="YouTube"><i class="fa-brands fa-youtube"></i></a>
                            <a href="#" title="LinkedIn"><i class="fa-brands fa-linkedin-in"></i></a>
                        </div>
                    </div>

                    <div class="quick-links-block">
                        <div class="quick-links-title">
                            <i class="fa-solid fa-link"></i> Quick Links
                        </div>
                        <ul class="quick-links-list">
                            <li><a href="/creatica_theater_hub/user/ourprogram"><i class="fa-solid fa-arrow-right"></i> View Our Programs</a>
                            </li>
                            <li><a href="/creatica_theater_hub/user/about/volunteer"><i class="fa-solid fa-arrow-right"></i> Volunteer With
                                    Us</a></li>
                            <li><a href="/creatica_theater_hub/user/about"><i class="fa-solid fa-arrow-right"></i> About Creatica Trust</a>
                            </li>
                            <li><a href="/creatica_theater_hub/user/event"><i class="fa-solid fa-arrow-right"></i> Upcoming Events</a></li>
                            <li><a href="/creatica_theater_hub/user/donation"><i class="fa-solid fa-arrow-right"></i> Donate to Support Us</a></li>
                        </ul>
                    </div>
                </div>

                <!-- RIGHT: CONTACT FORM -->
                <div class="reveal">
                    <div class="form-card">
                        <div class="form-header">
                            <div class="form-header-icon">
                                <i class="fa-solid fa-paper-plane"></i>
                            </div>
                            <div class="form-title">Send Us a Message</div>
                            <div class="form-subtitle">We will get back to you within 24 hours.</div>
                        </div>
                        <div class="form-body">
                            <form action="/creatica_theater_hub/user/contactPost" method="POST">
                                <div class="form-row">
                                    <div class="form-group">
                                        <label class="form-label"><i class="fa-solid fa-user"></i> First Name</label>
                                        <input type="text" name="firstName" class="form-control" placeholder="Your first name" required>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label"><i class="fa-solid fa-user"></i> Last Name</label>
                                        <input type="text" name="lastName" class="form-control" placeholder="Your last name" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-envelope"></i> Email Address</label>
                                    <input type="email" name="email" class="form-control" placeholder="you@example.com" required>
                                </div>
                                <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-phone"></i> Phone Number</label>
                                    <input type="tel" name="phone" class="form-control" placeholder="+91 00000 00000">
                                </div>
                                <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-sliders"></i> Enquiry Type</label>
                                    <select name="subject" class="form-select">
                                        <option>Program Enquiry</option>
                                        <option>Event Information</option>
                                        <option>Volunteer Registration</option>
                                        <option>Donation / Sponsorship</option>
                                        <option>Media / Press</option>
                                        <option>General Enquiry</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="form-label"><i class="fa-solid fa-pen-to-square"></i> Your
                                        Message</label>
                                    <textarea name="message" class="form-textarea" placeholder="Write your message here..."></textarea>
                                </div>
                                <button type="submit" class="btn-submit">
                                    <i class="fa-solid fa-paper-plane"></i> Send Message
                                </button>
                                <div class="form-note">
                                    <i class="fa-solid fa-shield-halved"></i>
                                    Your information is safe and will never be shared.
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>


    <!-- ── FAQ SECTION ── -->
    <section class="section faq-section" id="faq">
        <div class="section-inner">
            <h2 class="section-title reveal">Frequently Asked Questions</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">Quick answers to the most common questions we receive.</p>
            <div class="faq-grid">
                <div class="faq-item reveal">
                    <div class="faq-q"><i class="fa-solid fa-circle-question"></i> How can I enrol in a program?</div>
                    <p class="faq-a">Click "Apply Now" on any program page, fill in your details and our team will
                        contact you within 48 hours to confirm your seat.</p>
                </div>
                <div class="faq-item reveal">
                    <div class="faq-q"><i class="fa-solid fa-circle-question"></i> Are programs open to all age groups?
                    </div>
                    <p class="faq-a">Yes! We welcome students of all ages — from children to adults. Some programs have
                        specific age categories, which are listed on the program page.</p>
                </div>
                <div class="faq-item reveal">
                    <div class="faq-q"><i class="fa-solid fa-circle-question"></i> Is Creatica a registered NGO?</div>
                    <p class="faq-a">Yes, Creatica Charitable Trust is fully registered under the Trust and Society Act
                        in Gujarat, India. You can view our registration certificate on our website.</p>
                </div>
                <div class="faq-item reveal">
                    <div class="faq-q"><i class="fa-solid fa-circle-question"></i> How can I donate or sponsor Creatica?
                    </div>
                    <p class="faq-a">You can donate through our Donate button or contact us directly via email or phone.
                        All donations go towards our programs and youth arts initiatives.</p>
                </div>
                <div class="faq-item reveal">
                    <div class="faq-q"><i class="fa-solid fa-circle-question"></i> Are there volunteer opportunities
                        available?</div>
                    <p class="faq-a">Absolutely! Visit our Volunteer With Us page to see open roles and submit your
                        application. We welcome volunteers from all backgrounds.</p>
                </div>
                <div class="faq-item reveal">
                    <div class="faq-q"><i class="fa-solid fa-circle-question"></i> Where is Creatica Theatre Hub
                        located?</div>
                    <p class="faq-a">We are based in Siddhpur, Gujarat, India. Check the map below for our exact
                        location or call us for directions.</p>
                </div>
            </div>
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
            btn.innerHTML = '<i class="fa-solid fa-circle-check"></i> Message Sent!';
            btn.style.background = '#0EB555';
            btn.disabled = true;
            setTimeout(() => {
                btn.innerHTML = '<i class="fa-solid fa-paper-plane"></i> Send Message';
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