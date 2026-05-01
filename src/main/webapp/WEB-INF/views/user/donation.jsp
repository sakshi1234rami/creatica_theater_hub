<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isELIgnored="false" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Donate | Creatica NGO</title>

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
                            <h1 class="breadcrumb-title">Donate <span>Us</span></h1>
                        </div>
                        <div class="breadcrumb-trail">
                            <a href="/creatica_theater_hub/user/home"><i class="fa-solid fa-house"
                                    style="margin-right:4px"></i>Home</a>
                            <span class="sep">/</span>
                            <span class="active">Donate</span>
                        </div>
                    </div>
                </section>


                <div class="rainbow-bar"></div>

                <div class="donation-page-wrap">
    <div class="container">
        <div style="font-size: 0.65rem; color: #94a3b8; text-align: right; text-transform: uppercase; letter-spacing: 1px; margin-bottom: 8px;">
            <i class="fa-solid fa-bolt" style="color: #F29B2E;"></i> Dynamic Payment System v3.0
        </div>
        
        <div class="donation-main-card">
            <!-- Left: Hero/Impact Section -->
            <div class="donation-hero-side">
                <div class="hero-content">
                    <span class="badge">Trusted Donation Partner</span>
                    <h2>Help Us Bring <span>Art</span> to Everyone</h2>
                    <p>Your contribution fuels creativity, pays for rehearsals, and provides costumes for students who dream of the stage.</p>
                    
                    <div class="impact-grid">
                        <div class="i-item">
                            <div class="i-icon"><i class="fa-solid fa-masks-theater"></i></div>
                            <div>
                                <h4>₹500</h4>
                                <span>1 Rehearsal Session</span>
                            </div>
                        </div>
                        <div class="i-item">
                            <div class="i-icon"><i class="fa-solid fa-palette"></i></div>
                            <div>
                                <h4>₹2000</h4>
                                <span>Costume Design</span>
                            </div>
                        </div>
                    </div>

                    <div class="trust-footer">
                        <div class="t-item"><i class="fa-solid fa-circle-check"></i> SSL Secure</div>
                        <div class="t-item"><i class="fa-solid fa-circle-check"></i> 80G Tax Benefit</div>
                    </div>
                </div>
            </div>

            <!-- Right: Dynamic Form Section -->
            <div class="donation-form-side">
                <c:if test="${param.success != null}">
                    <div class="modern-success-box">
                        <div class="success-icon"><i class="fa-solid fa-heart-pulse"></i></div>
                        <div class="success-text">
                            <h3>Thank You!</h3>
                            <p>Transaction ID: ${param.pid || 'N/A'}</p>
                        </div>
                    </div>
                </c:if>

                <form id="donationForm" action="/creatica_theater_hub/user/donationPost" method="POST">
                    <!-- Hidden field to store transaction ID from Razorpay -->
                    <input type="hidden" name="transactionId" id="transactionId">
                    <input type="hidden" name="PaymentMethod" id="finalPaymentMethod" value="Online">

                    <h4 class="step-label">Step 1: Donation Amount</h4>
                    <div class="amount-presets">
                        <button type="button" class="amt-chip" onclick="setAmt(500)">₹500</button>
                        <button type="button" class="amt-chip" onclick="setAmt(1000)">₹1000</button>
                        <button type="button" class="amt-chip" onclick="setAmt(2500)">₹2500</button>
                        <button type="button" class="amt-chip" onclick="setAmt(5000)">₹5000</button>
                    </div>
                    
                    <div class="custom-amt-input">
                        <span>₹</span>
                        <input type="number" name="Amount" id="amount" placeholder="Enter other amount" required>
                    </div>

                    <h4 class="step-label" style="margin-top: 2rem;">Step 2: Donor Details</h4>
                    <div class="donor-form-grid">
                        <div class="field-box">
                            <label>Full Name</label>
                            <input type="text" name="DonationName" placeholder="e.g. John Doe" required>
                        </div>
                        <div class="field-box">
                            <label>Email Address</label>
                            <input type="email" name="DonationEmail" placeholder="e.g. john@example.com" required>
                        </div>
                        <div class="field-box full">
                            <label>Phone Number</label>
                            <input type="text" name="phone" placeholder="+91 XXXX-XXXXXX">
                        </div>
                    </div>

                    <h4 class="step-label" style="margin-top: 2rem;">Step 3: Preferred Payment</h4>
                    <div class="payment-method-selector">
                        <div class="pm-card active" onclick="selectPM(this, 'card')">
                            <i class="fa-solid fa-credit-card"></i>
                            <span>Card</span>
                        </div>
                        <div class="pm-card" onclick="selectPM(this, 'upi')">
                            <i class="fa-solid fa-mobile-screen"></i>
                            <span>UPI / GPay</span>
                        </div>
                        <div class="pm-card" onclick="selectPM(this, '')">
                            <i class="fa-solid fa-building-columns"></i>
                            <span>NetBanking</span>
                        </div>
                    </div>

                    <button type="button" class="checkout-btn" onclick="executePayment(event)">
                        <span id="btnText">Securely Pay Now</span>
                        <i class="fa-solid fa-arrow-right"></i>
                    </button>
                    
                    <div class="payment-badges">
                        <img src="https://razorpay.com/assets/razorpay-logo.png" height="20" alt="Razorpay">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/e/e1/UPI-Logo-vector.svg" height="20" alt="UPI">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../user/footer.jsp"></jsp:include>
<jsp:include page="../user/links/Userfootlink.jsp"></jsp:include>

<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script>
    let currentMethod = 'card';

    function setAmt(val) {
        document.getElementById('amount').value = val;
        document.querySelectorAll('.amt-chip').forEach(btn => {
            btn.classList.toggle('active', btn.innerText.includes(val));
        });
    }

    function selectPM(el, method) {
        document.querySelectorAll('.pm-card').forEach(c => c.classList.remove('active'));
        el.classList.add('active');
        currentMethod = method;
    }

    function executePayment(e) {
        e.preventDefault();
        const amount = document.getElementById('amount').value;
        const name = document.getElementsByName('DonationName')[0].value;
        const email = document.getElementsByName('DonationEmail')[0].value;
        const phone = document.getElementsByName('phone')[0].value;

        if (!amount || amount <= 0) { alert("Please enter a donation amount."); return; }
        if (!name || !email) { alert("Please provide your name and email."); return; }

        const options = {
            "key": "rzp_test_qcKzXNXXXXXXXX", // Replace with your live key
            "amount": amount * 100,
            "currency": "INR",
            "name": "Creatica Theater Hub",
            "description": "Theater Community Support",
            "image": "/content/images/creatica_logo-removebg-preview.png",
            "handler": function (response) {
                // Store IDs
                document.getElementById('transactionId').value = response.razorpay_payment_id;
                document.getElementById('finalPaymentMethod').value = "Online (" + (currentMethod || 'General') + ")";
                
                // Visual feedback
                const btn = document.querySelector('.checkout-btn');
                btn.classList.add('loading');
                document.getElementById('btnText').innerText = 'Verifying Payment...';
                
                setTimeout(() => {
                    document.getElementById('donationForm').submit();
                }, 1500);
            },
            "prefill": {
                "name": name,
                "email": email,
                "contact": phone,
                "method": currentMethod
            },
            "theme": { "color": "#F29B2E" },
            "modal": { "backdropclose": false }
        };

        const rzp1 = new Razorpay(options);
        rzp1.open();
    }
</script>

<style>
    .donation-page-wrap { background: #f0f2f5; padding: 5rem 0; font-family: 'Inter', sans-serif; }
    .donation-main-card {
        display: grid; grid-template-columns: 45% 55%;
        background: #fff; border-radius: 40px; overflow: hidden;
        box-shadow: 0 50px 100px -20px rgba(0,0,0,0.15); max-width: 1200px; margin: 0 auto;
    }
    
    .donation-hero-side { background: #1a202c; color: #fff; padding: 5rem; position: relative; }
    .donation-hero-side::before {
        content: ''; position: absolute; inset: 0; 
        background: linear-gradient(135deg, rgba(242, 155, 46, 0.1), transparent);
    }
    .hero-content { position: relative; z-index: 1; }
    .badge { background: #F29B2E20; color: #F29B2E; padding: 8px 16px; border-radius: 50px; font-size: 0.75rem; font-weight: 700; text-transform: uppercase; margin-bottom: 2rem; display: inline-block; }
    .donation-hero-side h2 { font-size: 3.5rem; line-height: 1.1; margin-bottom: 2rem; font-family: 'Playfair Display', serif; }
    .donation-hero-side h2 span { color: #F29B2E; }
    .donation-hero-side p { font-size: 1.1rem; line-height: 1.8; opacity: 0.7; margin-bottom: 4rem; max-width: 90%; }
    
    .impact-grid { display: flex; flex-direction: column; gap: 2rem; margin-bottom: 4rem; }
    .i-item { display: flex; align-items: center; gap: 20px; }
    .i-icon { width: 60px; height: 60px; background: rgba(255,255,255,0.05); border-radius: 20px; display: flex; align-items: center; justify-content: center; font-size: 1.5rem; color: #F29B2E; border: 1px solid rgba(255,255,255,0.1); }
    .i-item h4 { font-size: 1.3rem; margin: 0; }
    .i-item span { font-size: 0.9rem; opacity: 0.5; }

    .trust-footer { display: flex; gap: 30px; border-top: 1px solid rgba(255,255,255,0.1); padding-top: 2rem; }
    .t-item { font-size: 0.85rem; opacity: 0.6; display: flex; align-items: center; gap: 8px; }
    .t-item i { color: #0EB555; }

    .donation-form-side { padding: 5rem; background: #fff; }
    .step-label { font-size: 0.8rem; text-transform: uppercase; color: #94a3b8; letter-spacing: 2px; margin-bottom: 1.5rem; font-weight: 800; display: flex; align-items: center; gap: 10px; }
    .step-label::after { content: ''; flex: 1; height: 1px; background: #f1f5f9; }

    .amount-presets { display: grid; grid-template-columns: repeat(4, 1fr); gap: 15px; margin-bottom: 20px; }
    .amt-chip { padding: 15px; border: 2px solid #f1f5f9; background: #fff; border-radius: 20px; font-weight: 700; color: #475569; cursor: pointer; transition: all 0.3s; }
    .amt-chip:hover, .amt-chip.active { border-color: #F29B2E; color: #F29B2E; background: #fffaf0; transform: translateY(-3px); box-shadow: 0 10px 20px rgba(242, 155, 46, 0.1); }

    .custom-amt-input { position: relative; }
    .custom-amt-input span { position: absolute; left: 24px; top: 50%; transform: translateY(-50%); font-size: 1.5rem; font-weight: 800; color: #F29B2E; }
    .custom-amt-input input { width: 100%; padding: 20px 24px 20px 50px; border: 2px solid #f1f5f9; border-radius: 24px; font-size: 1.5rem; font-weight: 800; outline: none; transition: 0.3s; color: #1a202c; }
    .custom-amt-input input:focus { border-color: #F29B2E; background: #fffaf0; }

    .donor-form-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 20px; }
    .details-grid .full { grid-column: span 2; }
    .field-box label { display: block; font-size: 0.85rem; font-weight: 700; margin-bottom: 10px; color: #4a5568; }
    .field-box input { width: 100%; padding: 16px 20px; border: 2px solid #f1f5f9; border-radius: 16px; font-size: 1rem; outline: none; transition: 0.3s; }
    .field-box input:focus { border-color: #F29B2E; }

    .payment-method-selector { display: grid; grid-template-columns: repeat(3, 1fr); gap: 15px; }
    .pm-card { padding: 20px; border: 2px solid #f1f5f9; border-radius: 20px; text-align: center; cursor: pointer; transition: 0.3s; }
    .pm-card i { font-size: 1.5rem; color: #94a3b8; display: block; margin-bottom: 10px; }
    .pm-card span { font-size: 0.8rem; font-weight: 700; color: #64748b; }
    .pm-card.active { border-color: #F29B2E; background: #fffaf0; }
    .pm-card.active i { color: #F29B2E; }
    .pm-card.active span { color: #F29B2E; }

    .checkout-btn { width: 100%; background: #F29B2E; color: #fff; border: none; padding: 24px; border-radius: 24px; font-weight: 800; font-size: 1.2rem; cursor: pointer; transition: 0.4s; margin-top: 3rem; display: flex; align-items: center; justify-content: center; gap: 15px; box-shadow: 0 20px 40px rgba(242, 155, 46, 0.3); }
    .checkout-btn:hover { background: #d9861f; transform: translateY(-5px); box-shadow: 0 30px 60px rgba(242, 155, 46, 0.4); }
    .checkout-btn.loading { background: #94a3b8; pointer-events: none; }

    .payment-badges { display: flex; justify-content: center; align-items: center; gap: 20px; margin-top: 2rem; opacity: 0.5; }
    
    .modern-success-box { display: flex; align-items: center; gap: 20px; background: #f0fdf4; border: 1px solid #bbf7d0; padding: 20px; border-radius: 24px; margin-bottom: 3rem; }
    .success-icon { width: 50px; height: 50px; background: #dcfce7; border-radius: 16px; display: flex; align-items: center; justify-content: center; font-size: 1.5rem; color: #166534; }
    .success-text h3 { margin: 0; font-size: 1.2rem; color: #166534; }
    .success-text p { margin: 5px 0 0; font-size: 0.8rem; opacity: 0.7; }

    @media(max-width: 1100px) {
        .donation-main-card { grid-template-columns: 1fr; margin: 1rem; border-radius: 30px; }
        .donation-hero-side, .donation-form-side { padding: 3rem; }
        .donation-hero-side h2 { font-size: 2.5rem; }
    }
</style>



            </body>

            </html>