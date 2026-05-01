<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
    
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blogs &amp; Updates – Creatica Theatre Hub</title>
    <meta name="description" content="Read the latest blogs, news and updates from Creatica Theatre Hub – stories, event recaps, artist spotlights and performing arts insights.">
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
                <div
                    style="font-size:0.68rem;font-weight:800;letter-spacing:0.3em;text-transform:uppercase;color:#F2C94C;margin-bottom:0.7rem;">
                    ✦ &nbsp;Creatica Charitable Trust
                </div>
                <h1 class="breadcrumb-title">Blogs &amp; <span>Updates</span></h1>
            </div>
            <div class="breadcrumb-trail">
                <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house" style="margin-right:4px"></i>Home</a>
                <span class="sep">/</span>
                <span class="active">Blogs &amp; Updates</span>
            </div>
        </div>
    </section>

    <div class="rainbow-bar"></div>

    <!-- ── FEATURED POST ── -->
    <section class="blog-featured-section">
        <h2 class="section-title reveal">Featured <span style="color:#F29B2E">Story</span></h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal">A spotlight on our most inspiring story this month.</p>

        <div class="featured-post reveal">
            <div class="featured-img-wrap">
                <img src="/content/images/event1.jpg" alt="Featured Blog"
                    onerror="this.style.display='none'">
                <div class="featured-img-placeholder"><i class="fa-solid fa-masks-theater"></i></div>
                <div class="featured-badge"><i class="fa-solid fa-star"></i> Featured</div>
            </div>
            <div class="featured-content">
                <div class="featured-label">✦ &nbsp;Performing Arts · International</div>
                <h2 class="featured-title">Creatica Represents India at the 6th International PEARL Festival – Thailand 🇹🇭</h2>
                <p class="featured-excerpt">
                    It was a landmark moment for Creatica Theatre Hub when our young artists performed on the
                    international stage at the prestigious 6th International PEARL World Heritage Site Festival
                    in Thailand, proudly representing India's rich performing arts tradition.
                </p>
                <div class="featured-meta">
                    <span><i class="fa-regular fa-calendar"></i>April 2025</span>
                    <span><i class="fa-regular fa-clock"></i>5 min read</span>
                    <span><i class="fa-solid fa-user"></i>Creatica Team</span>
                </div>
                <a href="#" class="btn btn-theme1">Read Full Story <i class="fa-solid fa-arrow-right"
                        style="margin-left:6px"></i></a>
            </div>
        </div>
    </section>

    <div class="rainbow-bar"></div>

    <!-- ── ALL BLOGS ── -->
    <section class="section" style="background:#F8F9FA;" id="blogs">
        <div class="section-inner" style="max-width:1100px;margin:0 auto;">
            <h2 class="section-title reveal">All <span style="color:#F29B2E">Articles</span></h2>
            <div class="section-divider reveal"></div>
            <p class="section-subtitle reveal">Stories, insights and updates from the world of Creatica.</p>

            <!-- Search -->
            <div class="blog-search-wrap reveal">
                <div class="blog-search">
                    <input type="text" id="blogSearchInput" placeholder="Search articles..." aria-label="Search blogs">
                    <button type="button" id="blogSearchBtn"><i class="fa-solid fa-search"></i></button>
                </div>
            </div>

            <!-- Filter -->
            <div class="blog-filter-bar reveal">
                <button class="filter-btn active" data-filter="all" id="filter-all">All</button>
                <button class="filter-btn" data-filter="news" id="filter-news">News</button>
                <button class="filter-btn" data-filter="event" id="filter-event">Events</button>
                <button class="filter-btn" data-filter="artist" id="filter-artist">Artist Spotlight</button>
                <button class="filter-btn" data-filter="tips" id="filter-tips">Tips &amp; Insights</button>
            </div>

            <!-- Blog Grid -->
            <div class="blog-grid" id="blogGrid">

                <div class="blog-card reveal" data-category="news">
                    <div class="blog-img-wrap">
                        <img src="/content/images/event1.jpg" alt="Blog" onerror="this.style.display='none'">
                        <div class="blog-img-placeholder"><i class="fa-solid fa-newspaper"></i></div>
                        <span class="blog-category-badge cat-news">News</span>
                    </div>
                    <div class="blog-body">
                        <div class="blog-meta">
                            <span><i class="fa-regular fa-calendar"></i>March 2025</span>
                            <span><i class="fa-regular fa-clock"></i>3 min</span>
                        </div>
                        <h3 class="blog-title">Creatica Charitable Trust – Officially Registered NGO</h3>
                        <p class="blog-excerpt">We are proud to announce that Creatica Charitable Trust is now officially registered under the Trust and Society Act in Gujarat, marking a major milestone for our organisation.</p>
                        <a href="#" class="blog-read-more">Read More <i class="fa-solid fa-arrow-right"></i></a>
                    </div>
                </div>

                <div class="blog-card reveal" data-category="event">
                    <div class="blog-img-wrap">
                        <img src="/content/images/event2.jpg" alt="Blog" onerror="this.style.display='none'">
                        <div class="blog-img-placeholder"><i class="fa-solid fa-masks-theater"></i></div>
                        <span class="blog-category-badge cat-event">Event</span>
                    </div>
                    <div class="blog-body">
                        <div class="blog-meta">
                            <span><i class="fa-regular fa-calendar"></i>Feb 2025</span>
                            <span><i class="fa-regular fa-clock"></i>4 min</span>
                        </div>
                        <h3 class="blog-title">Annual Theatre Festival 2025 – A Night to Remember</h3>
                        <p class="blog-excerpt">Our annual theatre festival brought together over 200 students, families and supporters for a spectacular evening of performances spanning dance, drama and music.</p>
                        <a href="#" class="blog-read-more">Read More <i class="fa-solid fa-arrow-right"></i></a>
                    </div>
                </div>

                <div class="blog-card reveal" data-category="artist">
                    <div class="blog-img-wrap">
                        <img src="/content/images/team1.jpg" alt="Blog" onerror="this.style.display='none'">
                        <div class="blog-img-placeholder"><i class="fa-solid fa-user-astronaut"></i></div>
                        <span class="blog-category-badge cat-artist">Artist Spotlight</span>
                    </div>
                    <div class="blog-body">
                        <div class="blog-meta">
                            <span><i class="fa-regular fa-calendar"></i>Jan 2025</span>
                            <span><i class="fa-regular fa-clock"></i>5 min</span>
                        </div>
                        <h3 class="blog-title">Rising Star: The Journey of a Young Dancer at Creatica</h3>
                        <p class="blog-excerpt">From shy beginnings in a small village to performing on an international stage — read the inspiring journey of one of Creatica's most talented young dancers.</p>
                        <a href="#" class="blog-read-more">Read More <i class="fa-solid fa-arrow-right"></i></a>
                    </div>
                </div>

                <div class="blog-card reveal" data-category="tips">
                    <div class="blog-img-wrap">
                        <img src="/content/images/event3.jpg" alt="Blog" onerror="this.style.display='none'">
                        <div class="blog-img-placeholder"><i class="fa-solid fa-lightbulb"></i></div>
                        <span class="blog-category-badge cat-tips">Tips</span>
                    </div>
                    <div class="blog-body">
                        <div class="blog-meta">
                            <span><i class="fa-regular fa-calendar"></i>Dec 2024</span>
                            <span><i class="fa-regular fa-clock"></i>6 min</span>
                        </div>
                        <h3 class="blog-title">5 Ways Performing Arts Build Confidence in Youth</h3>
                        <p class="blog-excerpt">Stage fright is real — but so is the transformation that happens when a young person steps onto a stage for the first time. Here's how performing arts shape young minds.</p>
                        <a href="#" class="blog-read-more">Read More <i class="fa-solid fa-arrow-right"></i></a>
                    </div>
                </div>

                <div class="blog-card reveal" data-category="event">
                    <div class="blog-img-wrap">
                        <img src="/content/images/aboutImg.jpeg" alt="Blog" onerror="this.style.display='none'">
                        <div class="blog-img-placeholder"><i class="fa-solid fa-globe"></i></div>
                        <span class="blog-category-badge cat-event">Event</span>
                    </div>
                    <div class="blog-body">
                        <div class="blog-meta">
                            <span><i class="fa-regular fa-calendar"></i>Nov 2024</span>
                            <span><i class="fa-regular fa-clock"></i>4 min</span>
                        </div>
                        <h3 class="blog-title">Behind the Scenes: Preparing for the Thailand Festival</h3>
                        <p class="blog-excerpt">Weeks of rehearsals, costume preparation and cultural exchange — a detailed look at how Creatica's team prepared to represent India on the world stage.</p>
                        <a href="#" class="blog-read-more">Read More <i class="fa-solid fa-arrow-right"></i></a>
                    </div>
                </div>

                <div class="blog-card reveal" data-category="tips">
                    <div class="blog-img-wrap">
                        <img src="/content/images/team2.jpg" alt="Blog" onerror="this.style.display='none'">
                        <div class="blog-img-placeholder"><i class="fa-solid fa-music"></i></div>
                        <span class="blog-category-badge cat-tips">Tips</span>
                    </div>
                    <div class="blog-body">
                        <div class="blog-meta">
                            <span><i class="fa-regular fa-calendar"></i>Oct 2024</span>
                            <span><i class="fa-regular fa-clock"></i>3 min</span>
                        </div>
                        <h3 class="blog-title">Choosing the Right Performing Arts Program for Your Child</h3>
                        <p class="blog-excerpt">Dance, drama, acting or music — each art form develops different skills. Here's a simple guide to help parents identify which program best suits their child's personality.</p>
                        <a href="#" class="blog-read-more">Read More <i class="fa-solid fa-arrow-right"></i></a>
                    </div>
                </div>

                <div class="blog-card reveal" data-category="news">
                    <div class="blog-img-wrap">
                        <img src="/content/images/event1.jpg" alt="Blog" onerror="this.style.display='none'">
                        <div class="blog-img-placeholder"><i class="fa-solid fa-trophy"></i></div>
                        <span class="blog-category-badge cat-news">News</span>
                    </div>
                    <div class="blog-body">
                        <div class="blog-meta">
                            <span><i class="fa-regular fa-calendar"></i>Sep 2024</span>
                            <span><i class="fa-regular fa-clock"></i>2 min</span>
                        </div>
                        <h3 class="blog-title">Creatica Students Win State-Level Drama Competition</h3>
                        <p class="blog-excerpt">We are thrilled to announce that our drama students clinched the top prize at the State-Level Youth Drama Competition, Gujarat — a proud moment for Creatica.</p>
                        <a href="#" class="blog-read-more">Read More <i class="fa-solid fa-arrow-right"></i></a>
                    </div>
                </div>

                <div class="blog-card reveal" data-category="artist">
                    <div class="blog-img-wrap">
                        <img src="/content/images/team3.jpg" alt="Blog" onerror="this.style.display='none'">
                        <div class="blog-img-placeholder"><i class="fa-solid fa-star"></i></div>
                        <span class="blog-category-badge cat-artist">Artist Spotlight</span>
                    </div>
                    <div class="blog-body">
                        <div class="blog-meta">
                            <span><i class="fa-regular fa-calendar"></i>Aug 2024</span>
                            <span><i class="fa-regular fa-clock"></i>5 min</span>
                        </div>
                        <h3 class="blog-title">Meet Our Music Trainer: A Maestro Behind the Scenes</h3>
                        <p class="blog-excerpt">With over 15 years of experience in classical and contemporary music, our lead music trainer shares what it means to nurture the next generation of musicians.</p>
                        <a href="#" class="blog-read-more">Read More <i class="fa-solid fa-arrow-right"></i></a>
                    </div>
                </div>

                <div class="blog-card reveal" data-category="news">
                    <div class="blog-img-wrap">
                        <img src="/content/images/event2.jpg" alt="Blog" onerror="this.style.display='none'">
                        <div class="blog-img-placeholder"><i class="fa-solid fa-graduation-cap"></i></div>
                        <span class="blog-category-badge cat-news">News</span>
                    </div>
                    <div class="blog-body">
                        <div class="blog-meta">
                            <span><i class="fa-regular fa-calendar"></i>Jul 2024</span>
                            <span><i class="fa-regular fa-clock"></i>3 min</span>
                        </div>
                        <h3 class="blog-title">500+ Students Trained – Celebrating a Major Milestone</h3>
                        <p class="blog-excerpt">From our humble beginnings to training over 500 students in performing arts — we take a look back at the journey and celebrate this incredible milestone.</p>
                        <a href="#" class="blog-read-more">Read More <i class="fa-solid fa-arrow-right"></i></a>
                    </div>
                </div>

            </div><!-- /blog-grid -->

            <!-- Pagination -->
            <div class="blog-pagination reveal">
                <button class="page-btn active" id="page-1">1</button>
                <button class="page-btn" id="page-2">2</button>
                <button class="page-btn" id="page-3">3</button>
                <button class="page-btn" id="page-next"><i class="fa-solid fa-chevron-right"></i></button>
            </div>
        </div>
    </section>

    <div class="rainbow-bar"></div>

    <!-- ── LATEST UPDATES STRIP ── -->
    <section class="updates-strip" id="updates">
        <h2 class="section-title reveal" style="margin-bottom:0.5rem">Latest <span style="color:#F2C94C">Updates</span></h2>
        <div class="section-divider reveal"></div>
        <p class="section-subtitle reveal" style="color:rgba(255,255,255,0.65)">Quick announcements and news from Creatica Theatre Hub.</p>

        <div class="updates-list">

            <div class="update-item reveal">
                <div class="update-date-box">
                    <div class="day">15</div>
                    <div class="month">Apr</div>
                </div>
                <div class="update-content">
                    <div class="update-tag">🎭 Admissions</div>
                    <div class="update-title">Admissions Now Open – Dance, Drama, Acting &amp; Music Programs</div>
                    <div class="update-desc">Enrol your child in our summer batch starting May 2025. Limited seats available. Contact us to register.</div>
                </div>
            </div>

            <div class="update-item reveal">
                <div class="update-date-box" style="background:#2E6F95;">
                    <div class="day">10</div>
                    <div class="month">Apr</div>
                </div>
                <div class="update-content">
                    <div class="update-tag">🏆 Achievement</div>
                    <div class="update-title">Creatica Students Shortlisted for National Performing Arts Award</div>
                    <div class="update-desc">Three of our students have been shortlisted for the National Youth Performing Arts Award 2025. We are incredibly proud!</div>
                </div>
            </div>

            <div class="update-item reveal">
                <div class="update-date-box" style="background:#0EB555;">
                    <div class="day">05</div>
                    <div class="month">Apr</div>
                </div>
                <div class="update-content">
                    <div class="update-tag">🎪 Workshop</div>
                    <div class="update-title">Free Acting Workshop This Weekend – Open to All</div>
                    <div class="update-desc">Join us for a free introductory acting workshop at Creatica Hub, Siddhpur. No prior experience needed. All ages welcome.</div>
                </div>
            </div>

            <div class="update-item reveal">
                <div class="update-date-box" style="background:#F2C94C;color:#1a1a1a;">
                    <div class="day">01</div>
                    <div class="month">Apr</div>
                </div>
                <div class="update-content">
                    <div class="update-tag">🌍 International</div>
                    <div class="update-title">Creatica Joins International Theatre Network – PEARL Federation</div>
                    <div class="update-desc">Following our success in Thailand, Creatica Theatre Hub has been officially recognised as a member of the International PEARL Theatre Federation.</div>
                </div>
            </div>

        </div>
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

        /* ── FILTER ── */
        const filterBtns = document.querySelectorAll('.filter-btn');
        const blogCards  = document.querySelectorAll('.blog-card');

        filterBtns.forEach(btn => {
            btn.addEventListener('click', () => {
                filterBtns.forEach(b => b.classList.remove('active'));
                btn.classList.add('active');
                const cat = btn.dataset.filter;
                blogCards.forEach(card => {
                    if (cat === 'all' || card.dataset.category === cat) {
                        card.style.display = 'flex';
                        setTimeout(() => card.classList.add('visible'), 80);
                    } else {
                        card.style.display = 'none';
                    }
                });
            });
        });

        /* ── SEARCH ── */
        document.getElementById('blogSearchBtn').addEventListener('click', () => {
            const q = document.getElementById('blogSearchInput').value.trim().toLowerCase();
            blogCards.forEach(card => {
                const text = card.innerText.toLowerCase();
                card.style.display = (!q || text.includes(q)) ? 'flex' : 'none';
            });
        });
        document.getElementById('blogSearchInput').addEventListener('keydown', e => {
            if (e.key === 'Enter') document.getElementById('blogSearchBtn').click();
        });

        /* ── PAGINATION ── */
        document.querySelectorAll('.page-btn').forEach(btn => {
            btn.addEventListener('click', () => {
                document.querySelectorAll('.page-btn').forEach(b => b.classList.remove('active'));
                btn.classList.add('active');
            });
        });
    </script>
</body>

</html>
566