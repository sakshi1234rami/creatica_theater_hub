<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ page isELIgnored = "false" %>
    
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${program.BDName} - Creatica Theatre Hub</title>
   <jsp:include page="../user/links/Userheadlink.jsp"></jsp:include>
    <style>
        @font-face {
            font-family: "Raleway";
            src: url('/content/font/Raleway/Raleway-Medium.ttf');
        }
    </style>
</head>

<body>

   
	 <!------------------------------------------Header section---------------------------------------->

   <jsp:include page="../user/header.jsp"></jsp:include>

    <!------------------------------------------Header section end---------------------------------------->
   

    <!-- ── HERO ── -->
    <section class="breadcrumb-hero">
        <div class="breadcrumb-hero-inner">
            <div>
                <div class="breadcrumb-eyebrow">
                    <i class="fa-solid fa-circle-dot"></i>
                    Our Programs · Creatica Theatre Hub
                </div>
                <h1 class="breadcrumb-title">
                    <c:choose>
                        <c:when test="${program.BDCategory == 'Dance'}">
                            <i class="fa-solid fa-music" style="color:#F2C94C;margin-right:12px;font-size:0.85em"></i>
                        </c:when>
                        <c:when test="${program.BDCategory == 'Acting'}">
                            <i class="fa-solid fa-video" style="color:#F2C94C;margin-right:12px;font-size:0.85em"></i>
                        </c:when>
                        <c:when test="${program.BDCategory == 'Drama'}">
                            <i class="fa-solid fa-masks-theater" style="color:#F2C94C;margin-right:12px;font-size:0.85em"></i>
                        </c:when>
                        <c:when test="${program.BDCategory == 'music'}">
                            <i class="fa-solid fa-guitar" style="color:#F2C94C;margin-right:12px;font-size:0.85em"></i>
                        </c:when>
                        <c:when test="${program.BDCategory == 'PD'}">
                            <i class="fa-solid fa-person-rays" style="color:#F2C94C;margin-right:12px;font-size:0.85em"></i>
                        </c:when>
                        <c:otherwise>
                            <i class="fa-solid fa-star" style="color:#F2C94C;margin-right:12px;font-size:0.85em"></i>
                        </c:otherwise>
                    </c:choose>${program.BDName}
                    <span>Program</span>
                </h1>
                <p class="hero-desc">
                    ${program.BDDescription}
                </p>
                <div class="hero-btns">
                    <a href="#apply" class="btn-gold">
                        <i class="fa-solid fa-pen-to-square"></i> Book Now
                    </a>
                    <a href="#overview" class="btn-ghost-white">
                        <i class="fa-solid fa-circle-info"></i> Learn More
                    </a>
                </div>
                <div class="hero-badges">
                    <div class="hero-badge"><i class="fa-solid fa-user-graduate"></i> ${program.BDLevel}</div>
                    <div class="hero-badge"><i class="fa-solid fa-clock"></i> ${program.BDMonths} Duration</div>
                    <div class="hero-badge"><i class="fa-solid fa-calendar-days"></i> ${program.SDTimeslote}</div>
                    <c:if test="${program.certificate}">
                        <div class="hero-badge"><i class="fa-solid fa-certificate"></i> Certificate Provided</div>
                    </c:if>
                </div>
            </div>
            <div class="breadcrumb-trail" style="align-self:flex-start; margin-top:0.5rem;">
                <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house" style="margin-right:4px"></i>Home</a>
                <span class="sep">/</span>
                <a href="/creatica_theater_hub/user/ourprogram">Programs</a>
                <span class="sep">/</span>
                <span class="active">${program.BDName}</span>
            </div>
        </div>
    </section>

    <div class="rainbow-bar"></div>

    <!-- ── BOOKING SUCCESS MESSAGE ── -->
    <c:if test="${bookingSuccess}">
        <div style="background: linear-gradient(135deg, #0EB555 0%, #0a8a40 100%); color:#fff; text-align:center; padding:1.2rem 2rem; font-size:1.05rem; font-weight:600; letter-spacing:0.3px;">
            <i class="fa-solid fa-circle-check" style="margin-right:8px; font-size:1.2rem;"></i>
            Your booking has been submitted successfully! Our team will contact you within 24 hours to confirm your enrollment.
        </div>
    </c:if>

    <!-- ── QUICK INFO STRIP ── -->
    <div class="info-strip">
        <div class="info-strip-grid">
            <div class="info-strip-item reveal">
                <div class="strip-i"><i class="fa-solid fa-user-tie"></i></div>
                <div class="strip-label">Head Trainer</div>
                <div class="strip-val">${program.TIName}</div>
            </div>
            <div class="info-strip-item reveal">
                <div class="strip-i"><i class="fa-solid fa-clock"></i></div>
                <div class="strip-label">Duration</div>
                <div class="strip-val">${program.BDMonths}</div>
            </div>
            <div class="info-strip-item reveal">
                <div class="strip-i"><i class="fa-solid fa-calendar-days"></i></div>
                <div class="strip-label">Schedule</div>
                <div class="strip-val">${program.SDTimeslote}</div>
            </div>
            <div class="info-strip-item reveal">
                <div class="strip-i"><i class="fa-solid fa-signal"></i></div>
                <div class="strip-label">Level</div>
                <div class="strip-val">${program.BDLevel}</div>
            </div>
            <div class="info-strip-item reveal">
                <div class="strip-i"><i class="fa-solid fa-certificate"></i></div>
                <div class="strip-label">Certificate</div>
                <div class="strip-val">
                    <c:choose>
                        <c:when test="${program.certificate}">Yes, Included</c:when>
                        <c:otherwise>Not Included</c:otherwise>
                    </c:choose>
                </div>
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
                        <c:if test="${not empty program.TIImage}">
                            <img src="/creatica_theater_hub/Resources/packages/${program.TIImage}" alt="${program.BDName}" onerror="this.style.display='none'">
                        </c:if>
                        <div class="visual-card-placeholder">
                            <c:choose>
                                <c:when test="${program.BDCategory == 'Dance'}">
                                    <i class="fa-solid fa-music"></i>
                                </c:when>
                                <c:when test="${program.BDCategory == 'Acting'}">
                                    <i class="fa-solid fa-video"></i>
                                </c:when>
                                <c:when test="${program.BDCategory == 'Drama'}">
                                    <i class="fa-solid fa-masks-theater"></i>
                                </c:when>
                                <c:when test="${program.BDCategory == 'music'}">
                                    <i class="fa-solid fa-guitar"></i>
                                </c:when>
                                <c:when test="${program.BDCategory == 'PD'}">
                                    <i class="fa-solid fa-person-rays"></i>
                                </c:when>
                                <c:otherwise>
                                    <i class="fa-solid fa-star"></i>
                                </c:otherwise>
                            </c:choose>
                            <p>${program.BDName} · Creatica Theatre Hub</p>
                        </div>
                    </div>
                    <div class="float-badge">
                        <i class="fa-solid fa-user-graduate"></i>
                        <div>
                            <c:choose>
                                <c:when test="${program.maxstudent != null}">
                                    <div class="float-badge-num">${program.maxstudent}</div>
                                    <div class="float-badge-label">Max Students</div>
                                </c:when>
                                <c:otherwise>
                                    <div class="float-badge-num">500+</div>
                                    <div class="float-badge-label">Students Trained</div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
                <!-- Text -->
                <div class="reveal">
                    <div class="section-tag">About the Program</div>
                    <h2 class="ov-heading">Learn <span>${program.BDName}</span> with<br>Passion &amp; Purpose</h2>
                    <p class="ov-body">${program.BDDescription}</p>
                    <c:if test="${not empty program.TIBio}">
                        <p class="ov-body">${program.TIBio}</p>
                    </c:if>
                    <div class="ov-features">
                        <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Professional training from expert instructors</div>
                        <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Live stage performance opportunities</div>
                        <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Flexible batch timings available</div>
                        <c:if test="${program.certificate}">
                            <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Official certificate on program completion</div>
                        </c:if>
                        <c:if test="${program.courseType == 'Free'}">
                            <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Free of cost — no fees required</div>
                        </c:if>
                        <c:if test="${not empty program.location}">
                            <div class="ov-feature"><i class="fa-solid fa-circle-check"></i> Location: ${program.location}</div>
                        </c:if>
                    </div>
                    <div style="display:flex;gap:1rem;flex-wrap:wrap;">
                        <a href="#apply" class="btn btn-theme1">
                            <i class="fa-solid fa-pen-to-square" style="margin-right:6px"></i>Book Now
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

    <!-- ── SCHEDULE & FEE ── -->
    <section class="section schedule-section" id="schedule">
        <div class="section-inner">
            <h2 class="section-title reveal">Schedule &amp; Fee Structure</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">Program details and batch timings.</p>
            <div class="schedule-grid">

                <!-- Timetable -->
                <div class="timetable-card reveal">
                    <div class="timetable-header">
                        <i class="fa-solid fa-calendar-days"></i>
                        <div class="timetable-header-title">Program Schedule</div>
                    </div>
                    <div class="timetable-body">
                        <div class="timetable-row header-row">
                            <div class="timetable-cell th"><i class="fa-solid fa-layer-group"></i> Detail</div>
                            <div class="timetable-cell th"><i class="fa-solid fa-info-circle"></i> Information</div>
                        </div>
                        <c:if test="${program.SDSatrtdate != null}">
                            <div class="timetable-row">
                                <div class="timetable-cell"><span class="batch-badge batch-morning"><i class="fa-solid fa-calendar"></i> Start Date</span></div>
                                <div class="timetable-cell">${program.SDSatrtdate}</div>
                            </div>
                        </c:if>
                        <c:if test="${program.SDEnddate != null}">
                            <div class="timetable-row">
                                <div class="timetable-cell"><span class="batch-badge batch-evening"><i class="fa-solid fa-calendar-check"></i> End Date</span></div>
                                <div class="timetable-cell">${program.SDEnddate}</div>
                            </div>
                        </c:if>
                        <c:if test="${not empty program.SDTimeslote}">
                            <div class="timetable-row">
                                <div class="timetable-cell"><span class="batch-badge batch-weekend"><i class="fa-solid fa-clock"></i> Time Slot</span></div>
                                <div class="timetable-cell">${program.SDTimeslote}</div>
                            </div>
                        </c:if>
                        <c:if test="${not empty program.SDDays}">
                            <div class="timetable-row">
                                <div class="timetable-cell"><span class="batch-badge batch-special"><i class="fa-solid fa-calendar-week"></i> Days</span></div>
                                <div class="timetable-cell">${program.SDDays}</div>
                            </div>
                        </c:if>
                        <c:if test="${not empty program.location}">
                            <div class="timetable-row">
                                <div class="timetable-cell"><span class="batch-badge batch-morning"><i class="fa-solid fa-location-dot"></i> Location</span></div>
                                <div class="timetable-cell">${program.location}</div>
                            </div>
                        </c:if>
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
                            <div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Course Type</div>
                            <div class="fee-amount">${program.courseType}</div>
                        </div>
                        <div class="fee-item">
                            <div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Program Fee</div>
                            <div class="fee-amount">
                                <c:choose>
                                    <c:when test="${program.amount != null && program.amount > 0}">
                                        &#8377; ${program.amount}
                                    </c:when>
                                    <c:otherwise>Free</c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                        <div class="fee-item">
                            <div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Duration</div>
                            <div class="fee-amount">${program.BDMonths}</div>
                        </div>
                        <c:if test="${program.maxstudent != null}">
                            <div class="fee-item">
                                <div class="fee-name"><i class="fa-solid fa-circle-dot"></i> Max Students</div>
                                <div class="fee-amount">${program.maxstudent}</div>
                            </div>
                        </c:if>
                        <div class="fee-item">
                            <div class="fee-name"><i class="fa-solid fa-certificate"></i> Certificate</div>
                            <div class="fee-amount">
                                <c:choose>
                                    <c:when test="${program.certificate}">Included</c:when>
                                    <c:otherwise>Not Included</c:otherwise>
                                </c:choose>
                            </div>
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

    <!-- ── TRAINER ── -->
    <section class="section trainers-section" id="trainers">
        <div class="section-inner">
            <h2 class="section-title reveal">Program Trainer</h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">Learn from a dedicated professional with years of experience.</p>
            <div class="trainers-grid" style="justify-content: center;">

                <div class="trainer-card reveal">
                    <div class="trainer-img-wrap">
                        <c:if test="${not empty program.TIImage}">
                            <img src="/creatica_theater_hub/Resources/packages/${program.TIImage}" alt="${program.TIName}"
                                onerror="this.style.display='none'">
                        </c:if>
                        <div class="trainer-placeholder"><i class="fa-solid fa-user"></i></div>
                        <div class="trainer-role-badge">Head Trainer</div>
                    </div>
                    <div class="trainer-body">
                        <div class="trainer-name">${program.TIName}</div>
                        <div class="trainer-spec">${program.BDCategory} · ${program.BDLevel}</div>
                        <c:if test="${not empty program.TIBio}">
                            <p style="color:#bbb; font-size:0.85rem; margin-top:0.5rem;">${program.TIBio}</p>
                        </c:if>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- ── APPLY / BOOKING SECTION ── -->
    <section class="apply-section" id="apply">
        <div class="apply-grid">
            <!-- Left info -->
            <div class="apply-info reveal">
                <div class="apply-eyebrow">
                    <i class="fa-solid fa-circle-dot"></i> Admissions Open
                </div>
                <h2 class="apply-heading">Book the<br><span>${program.BDName}</span> Now</h2>
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
                    <c:if test="${program.certificate}">
                        <div class="apply-perk">
                            <div class="apply-perk-icon"><i class="fa-solid fa-certificate"></i></div>
                            Official certificate on completion
                        </div>
                    </c:if>
                    <div class="apply-perk">
                        <div class="apply-perk-icon"><i class="fa-solid fa-indian-rupee-sign"></i></div>
                        <c:choose>
                            <c:when test="${program.courseType == 'Free'}">Free of cost — no fees!</c:when>
                            <c:otherwise>
                                Fee: &#8377; ${program.amount != null ? program.amount : 'Subsidised'}
                            </c:otherwise>
                        </c:choose>
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

            <!-- Right form — BOOKING FORM -->
            <div class="reveal">
                <div class="apply-form-card">
                    <div class="apply-form-header">
                        <i class="fa-solid fa-pen-to-square"></i>
                        <div class="apply-form-header-title">Book ${program.BDName}</div>
                    </div>
                    <div class="apply-form-body">
                        <form action="/creatica_theater_hub/user/ourprogram/book" method="post" id="bookingForm">
                            
                            <!-- Hidden fields for program data -->
                            <input type="hidden" name="programId" value="${program.id}">
                            <input type="hidden" name="programName" value="${program.BDName}">
                            <input type="hidden" name="programCategory" value="${program.BDCategory}">
                            <input type="hidden" name="amount" value="${program.amount}">
                            
                            <div class="af-row">
                                <div class="af-group">
                                    <label class="af-label"><i class="fa-solid fa-user"></i> Full Name</label>
                                    <input type="text" class="af-input" name="userName" placeholder="Enter your full name" required>
                                </div>
                            </div>
                            <div class="af-group">
                                <label class="af-label"><i class="fa-solid fa-envelope"></i> Email Address</label>
                                <input type="email" class="af-input" name="userEmail" placeholder="you@example.com" required>
                            </div>
                            <div class="af-group">
                                <label class="af-label"><i class="fa-solid fa-phone"></i> Phone Number</label>
                                <input type="tel" class="af-input" name="userPhone" placeholder="+91 00000 00000" required>
                            </div>
                            <div class="af-row">
                                <div class="af-group">
                                    <label class="af-label"><i class="fa-solid fa-calendar"></i> Preferred Batch</label>
                                    <select class="af-select" name="preferredBatch">
                                        <option value="Morning Batch">Morning Batch</option>
                                        <option value="Evening Batch">Evening Batch</option>
                                        <option value="Weekend Batch">Weekend Batch</option>
                                    </select>
                                </div>
                                <div class="af-group">
                                    <label class="af-label"><i class="fa-solid fa-credit-card"></i> Payment Mode</label>
                                    <select class="af-select" name="paymentMode">
                                        <option value="Cash">Cash</option>
                                        <option value="UPI">UPI</option>
                                        <option value="Online">Online Banking</option>
                                    </select>
                                </div>
                            </div>
                            <div class="af-group">
                                <label class="af-label"><i class="fa-solid fa-comment-dots"></i> Special Requirements (Optional)</label>
                                <textarea class="af-input" name="notes" rows="3" placeholder="Any special requirements or questions..." style="resize:vertical;min-height:60px;"></textarea>
                            </div>
                            
                            <!-- Fee Display -->
                            <div style="background: rgba(242,155,46,0.1); border: 1px solid rgba(242,155,46,0.3); border-radius: 10px; padding: 1rem; margin-bottom: 1rem; display:flex; align-items:center; gap:0.8rem;">
                                <i class="fa-solid fa-indian-rupee-sign" style="font-size:1.5rem; color:#F29B2E;"></i>
                                <div>
                                    <div style="font-size:0.75rem; color:#aaa; text-transform:uppercase; letter-spacing:1px;">Program Fee</div>
                                    <div style="font-size:1.3rem; font-weight:700; color:#F2C94C;">
                                        <c:choose>
                                            <c:when test="${program.amount != null && program.amount > 0}">
                                                &#8377; ${program.amount}
                                            </c:when>
                                            <c:otherwise>Free</c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                            
                            <button type="submit" class="btn-af-submit">
                                <i class="fa-solid fa-paper-plane"></i> Submit Booking
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

    <!-- ── OTHER PROGRAMS ── -->
    <c:if test="${not empty otherPrograms}">
        <section class="section other-programs" id="other">
            <div class="section-inner">
                <h2 class="section-title reveal">Explore Other Programs</h2>
                <div class="section-divider reveal"></div>
                <p class="section-subtitle reveal">Discover more creative programs at Creatica Theatre Hub.</p>
                <div class="other-grid">
                    <c:forEach items="${otherPrograms}" var="op" begin="0" end="3">
                        <a href="/creatica_theater_hub/user/ourprogram/detail/${op.id}" class="other-card reveal">
                            <div class="other-icon">
                                <c:choose>
                                    <c:when test="${op.BDCategory == 'Dance'}">
                                        <i class="fa-solid fa-music"></i>
                                    </c:when>
                                    <c:when test="${op.BDCategory == 'Acting'}">
                                        <i class="fa-solid fa-video"></i>
                                    </c:when>
                                    <c:when test="${op.BDCategory == 'Drama'}">
                                        <i class="fa-solid fa-masks-theater"></i>
                                    </c:when>
                                    <c:when test="${op.BDCategory == 'music'}">
                                        <i class="fa-solid fa-guitar"></i>
                                    </c:when>
                                    <c:when test="${op.BDCategory == 'PD'}">
                                        <i class="fa-solid fa-person-rays"></i>
                                    </c:when>
                                    <c:otherwise>
                                        <i class="fa-solid fa-star"></i>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <div class="other-name">${op.BDName}</div>
                            <p class="other-desc">${op.BDDescription}</p>
                        </a>
                    </c:forEach>
                </div>
            </div>
        </section>
    </c:if>

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
        }, { threshold: 0.08 });
        revealEls.forEach(el => revealObs.observe(el));
    </script>

</body>

</html>
