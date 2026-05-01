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
    <title>Our Programs</title>
    <jsp:include page="../user/links/Userheadlink.jsp"></jsp:include>
</head>
<body>

     
	 <!------------------------------------------Header section---------------------------------------->

   <jsp:include page="../user/header.jsp"></jsp:include>

    <!------------------------------------------Header section end---------------------------------------->
     
      

    <!--------------------------------------Program  section------------------------------------------------>     

    <!-- ── BREADCRUMB HERO ── -->
<section class="breadcrumb-hero">
    <div class="breadcrumb-hero-inner">
        <div>
            <div class="breadcrumb-eyebrow">
                <i class="fa-solid fa-circle-dot"></i>
                Creatica Charitable Trust
            </div>
            <h1 class="breadcrumb-title">Our <span>Programs</span></h1>
        </div>
        <div class="breadcrumb-trail">
            <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house" style="margin-right:4px"></i>Home</a>
            <span class="sep">/</span>
            <span class="active">Programs</span>
        </div>
    </div>
</section>

<div class="rainbow-bar"></div>

<!-- ── SEARCH & FILTER BAR ── -->
<div class="filter-bar">
    <div class="filter-inner">
        <div class="search-wrap">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input type="text" id="programSearch" placeholder="Search program by name or trainer...">
        </div>
        <div class="filter-wrap">
            <i class="fa-solid fa-sliders"></i>
            <select id="programFilter">
                <option value="all">All Categories</option>
                <option value="Dance" ${selectedCategory == 'Dance' ? 'selected' : ''}>Dance</option>
                <option value="Drama" ${selectedCategory == 'Drama' ? 'selected' : ''}>Drama</option>
                <option value="Acting" ${selectedCategory == 'Acting' ? 'selected' : ''}>Acting</option>
                <option value="music" ${selectedCategory == 'music' ? 'selected' : ''}>Music</option>
                <option value="PD" ${selectedCategory == 'PD' ? 'selected' : ''}>Personality Dev.</option>
            </select>
        </div>
        <div class="filter-tags">
            <button class="filter-tag ${empty selectedCategory ? 'active' : ''}" data-filter="all">All</button>
            <button class="filter-tag ${selectedCategory == 'Dance' ? 'active' : ''}" data-filter="Dance">Dance</button>
            <button class="filter-tag ${selectedCategory == 'Drama' ? 'active' : ''}" data-filter="Drama">Drama</button>
            <button class="filter-tag ${selectedCategory == 'Acting' ? 'active' : ''}" data-filter="Acting">Acting</button>
            <button class="filter-tag ${selectedCategory == 'music' ? 'active' : ''}" data-filter="music">Music</button>
            <button class="filter-tag ${selectedCategory == 'PD' ? 'active' : ''}" data-filter="PD">Personality</button>
        </div>
    </div>
</div>

<!-- ── PROGRAMS SECTION ── -->
<section class="section programs-section" id="programs">
    <div class="section-inner">
        <h2 class="section-title reveal">Our Training Programs</h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal">Professional arts training designed to develop confident, skilled and expressive performers.</p>

        <div class="prog-grid" id="progGrid">

            <!-- ── Dynamic Program Cards from Database ── -->
            <c:forEach items="${programs}" var="prg">
                <div class="prog-card reveal" data-category="${prg.BDCategory}">
                    <div class="prog-card-header">
                        <div class="prog-icon-wrap">
                            <c:choose>
                                <c:when test="${prg.BDCategory == 'Dance'}">
                                    <i class="fa-solid fa-music"></i>
                                </c:when>
                                <c:when test="${prg.BDCategory == 'Acting'}">
                                    <i class="fa-solid fa-video"></i>
                                </c:when>
                                <c:when test="${prg.BDCategory == 'Drama'}">
                                    <i class="fa-solid fa-masks-theater"></i>
                                </c:when>
                                <c:when test="${prg.BDCategory == 'music'}">
                                    <i class="fa-solid fa-guitar"></i>
                                </c:when>
                                <c:when test="${prg.BDCategory == 'PD'}">
                                    <i class="fa-solid fa-person-rays"></i>
                                </c:when>
                                <c:otherwise>
                                    <i class="fa-solid fa-star"></i>
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <div class="prog-title-wrap">
                            <div class="prog-category">${prg.BDCategory}</div>
                            <div class="prog-name">${prg.BDName}</div>
                        </div>
                    </div>
                    <div class="prog-card-body">
                        <p class="prog-desc">${prg.BDDescription}</p>
                        <c:choose>
                            <c:when test="${prg.BDLevel == 'Beginner'}">
                                <span class="prog-level level-beginner">
                                    <i class="fa-solid fa-circle-dot"></i> ${prg.BDLevel}
                                </span>
                            </c:when>
                            <c:when test="${prg.BDLevel == 'Intermediate'}">
                                <span class="prog-level level-intermediate">
                                    <i class="fa-solid fa-circle-dot"></i> ${prg.BDLevel}
                                </span>
                            </c:when>
                            <c:when test="${prg.BDLevel == 'Advanced'}">
                                <span class="prog-level level-advanced">
                                    <i class="fa-solid fa-circle-dot"></i> ${prg.BDLevel}
                                </span>
                            </c:when>
                            <c:otherwise>
                                <span class="prog-level level-beginner">
                                    <i class="fa-solid fa-circle-dot"></i> ${prg.BDLevel}
                                </span>
                            </c:otherwise>
                        </c:choose>
                        <div class="prog-meta">
                            <div class="prog-meta-item">
                                <i class="fa-solid fa-user-tie"></i>
                                <div>
                                    <span class="prog-meta-label">Trainer</span>
                                    <span class="prog-meta-val">${prg.TIName}</span>
                                </div>
                            </div>
                            <div class="prog-meta-item">
                                <i class="fa-solid fa-clock"></i>
                                <div>
                                    <span class="prog-meta-label">Duration</span>
                                    <span class="prog-meta-val">${prg.BDMonths}</span>
                                </div>
                            </div>
                            <div class="prog-meta-item">
                                <i class="fa-solid fa-calendar-days"></i>
                                <div>
                                    <span class="prog-meta-label">Schedule</span>
                                    <span class="prog-meta-val">${prg.SDTimeslote}</span>
                                </div>
                            </div>
                            <div class="prog-meta-item">
                                <i class="fa-solid fa-indian-rupee-sign"></i>
                                <div>
                                    <span class="prog-meta-label">Fee</span>
                                    <span class="prog-meta-val">
                                        <c:choose>
                                            <c:when test="${prg.amount != null && prg.amount > 0}">
                                                &#8377; ${prg.amount}
                                            </c:when>
                                            <c:otherwise>Subsidised</c:otherwise>
                                        </c:choose>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="prog-card-footer">
                        <a href="/creatica_theater_hub/user/ourprogram/detail/${prg.id}" class="btn-apply">
                            <i class="fa-solid fa-pen-to-square"></i> View & Apply
                        </a>
                        <a href="/creatica_theater_hub/user/ourprogram/detail/${prg.id}" class="btn-info-link" title="View Details">
                            <i class="fa-solid fa-arrow-right"></i>
                        </a>
                    </div>
                </div>
            </c:forEach>

            <!-- ── Empty state when no programs exist ── -->
            <c:if test="${empty programs}">
                <div class="no-results" style="display:block;">
                    <i class="fa-solid fa-folder-open"></i>
                    <p>No programs available at the moment. Please check back soon!</p>
                </div>
            </c:if>

            <!-- No results for search/filter -->
            <div class="no-results" id="noResults">
                <i class="fa-solid fa-magnifying-glass"></i>
                <p>No programs found matching your search. Try a different keyword or category.</p>
            </div>

        </div>
    </div>
</section>

<!-- ── STATS STRIP ── -->
<section class="stats-strip">
    <div class="stats-grid">
        <div class="stat-item reveal">
            <div class="start-icon-wrap"><i class="fa-solid fa-user-graduate"></i></div>
            <div class="start-num" data-target="500">0</div>
            <div class="start-label">Students Trained</div>
        </div>
        <div class="stat-item reveal">
            <div class="start-icon-wrap"><i class="fa-solid fa-chalkboard-user"></i></div>
            <div class="start-num" data-target="20">0</div>
            <div class="start-label">Workshops Conducted</div>
        </div>
        <div class="stat-item reveal">
            <div class="start-icon-wrap"><i class="fa-solid fa-masks-theater"></i></div>
            <div class="start-num" data-target="50">0</div>
            <div class="start-label">Performances</div>
        </div>
        <div class="stat-item reveal">
            <div class="start-icon-wrap"><i class="fa-solid fa-earth-asia"></i></div>
            <div class="start-num" data-target="5">0</div>
            <div class="start-label">International Festivals</div>
        </div>
    </div>
</section>

<!-- ── HOW TO APPLY ── -->
<section class="section apply-section" id="apply">
    <div class="section-inner">
        <h2 class="section-title reveal">How to Apply</h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal">Simple steps to join any of our performing arts programs at Creatica Theatre Hub.</p>
        <div class="steps-grid">
            <div class="step-card reveal">
                <div class="step-num">1</div>
                <div class="step-icon"><i class="fa-solid fa-magnifying-glass"></i></div>
                <div class="step-title">Choose a Program</div>
                <p class="step-text">Browse our programs and select the one that matches your interests and skill level.</p>
            </div>
            <div class="step-card reveal">
                <div class="step-num">2</div>
                <div class="step-icon"><i class="fa-solid fa-file-pen"></i></div>
                <div class="step-title">Fill Application</div>
                <p class="step-text">Click View & Apply and fill in your details. Our team will get in touch within 48 hours.</p>
            </div>
            <div class="step-card reveal">
                <div class="step-num">3</div>
                <div class="step-icon"><i class="fa-solid fa-comments"></i></div>
                <div class="step-title">Attend Interview</div>
                <p class="step-text">A brief interaction with the trainer to understand your background and set your learning path.</p>
            </div>
            <div class="step-card reveal">
                <div class="step-num">4</div>
                <div class="step-icon"><i class="fa-solid fa-circle-check"></i></div>
                <div class="step-title">Start Training</div>
                <p class="step-text">Confirm your seat, complete enrolment and begin your creative journey with Creatica!</p>
            </div>
        </div>
    </div>
</section>

<!-- ── CTA BANNER ── -->
<section class="cta-section">
    <div class="breadcrumb-eyebrow" style="justify-content:center; margin-bottom:1.2rem;">
        <i class="fa-solid fa-circle-dot"></i> Limited Seats Available
    </div>
    <h2 class="cta-title reveal">Ready to <span>Start Your</span><br>Creative Journey?</h2>
    <p class="cta-sub reveal">Join hundreds of students who have transformed their lives through the power of performing arts at Creatica Theatre Hub.</p>
    <div class="cta-btns reveal">
        <a href="/creatica_theater_hub/user/contact" class="btn-white">
            <i class="fa-solid fa-envelope" style="margin-right:6px"></i>Contact Us
        </a>
        <a href="/creatica_theater_hub/user/about/volunteer" class="btn-ghost-white">
            <i class="fa-solid fa-hands-helping" style="margin-right:6px"></i>Volunteer With Us
        </a>
    </div>
</section>

	 <!-- -----------------------------Footer css------------------------------------------------ -->
    
   <jsp:include page="../user/footer.jsp"></jsp:include>
   
   <!-- -----------------------------Footer css end------------------------------------------------ -->

   
    <jsp:include page="../user/links/Userfootlink.jsp"></jsp:include>
    <script>

       
    /* ── SEARCH & FILTER ── */
    const searchInput  = document.getElementById('programSearch');
    const filterSelect = document.getElementById('programFilter');
    const filterTags   = document.querySelectorAll('.filter-tag');
    const cards        = document.querySelectorAll('.prog-card');
    const noResults    = document.getElementById('noResults');
    let activeFilter   = '${empty selectedCategory ? "all" : selectedCategory}';

    function applyFilter() {
        const query = searchInput.value.toLowerCase().trim();
        let visible = 0;
        cards.forEach(card => {
            const category = card.dataset.category || '';
            const text     = card.innerText.toLowerCase();
            const matchCat = activeFilter === 'all' || category === activeFilter;
            const matchQ   = query === '' || text.includes(query);
            if (matchCat && matchQ) { card.classList.remove('hidden'); visible++; }
            else card.classList.add('hidden');
        });
        noResults.style.display = visible === 0 ? 'block' : 'none';
    }

    searchInput.addEventListener('input', applyFilter);

    filterSelect.addEventListener('change', function () {
        activeFilter = this.value;
        filterTags.forEach(t => t.classList.toggle('active', t.dataset.filter === activeFilter));
        applyFilter();
    });

    filterTags.forEach(tag => {
        tag.addEventListener('click', function () {
            activeFilter = this.dataset.filter;
            filterTags.forEach(t => t.classList.remove('active'));
            this.classList.add('active');
            filterSelect.value = activeFilter;
            applyFilter();
        });
    });

    // Apply on load if category pre-selected
    if (activeFilter !== 'all') {
        applyFilter();
    }

    /* ── COUNTER ANIMATION ── */
    function animateCount(el) {
        if (el.dataset.animated) return;
        el.dataset.animated = true;
        const target = +el.dataset.target;
        const duration = 1800;
        const start = performance.now();
        function step(now) {
            const progress = Math.min((now - start) / duration, 1);
            const ease = 1 - Math.pow(1 - progress, 3);
            el.textContent = Math.floor(ease * target);
            if (progress < 1) requestAnimationFrame(step);
            else el.textContent = target + '+';
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
</script>
</body>
</html>