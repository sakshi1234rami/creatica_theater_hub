
    /* ── Sparkles ── */
    const sparkleContainer = document.getElementById('sparkles');
    for (let i = 0; i <90; i++) {
        const s = document.createElement('span');
        s.style.left = Math.random() * 100 + '%';
        s.style.top  = Math.random() * 100 + '%';
        s.style.setProperty('--d', (2 + Math.random() * 4).toFixed(2) + 's');
        s.style.animationDelay = (Math.random() * 5).toFixed(2) + 's';
        const colors = ['#c98b2a','#e6a832','#e8344a','#3dbf6e','#22c4d4','#e94fa0','#2e6fcc'];
        s.style.background = colors[Math.floor(Math.random() * colors.length)];
        sparkleContainer.appendChild(s);
    }

    /* ── User type toggle ── */
    let currentType = 'student';
    function setType(t) {
        currentType = t;
        document.getElementById('btnStudent').classList.toggle('active', t === 'student');
        document.getElementById('btnVolunteer').classList.toggle('active', t === 'volunteer');
        document.getElementById('studentSection').classList.toggle('active', t === 'student');
        document.getElementById('volunteerSection').classList.toggle('active', t === 'volunteer');
        const userTypeElement = document.getElementById('userType');
        if (userTypeElement) userTypeElement.value = t;
    }

    /* ── Password visibility ── */
    function togglePwd(fieldId, btnId) {
        const pw  = document.getElementById(fieldId);
        const btn = document.getElementById(btnId);
        if (pw.type === 'password') { pw.type = 'text';     btn.textContent = '🙈'; }
        else                        { pw.type = 'password'; btn.textContent = '👁'; }
    }

    /* ── Password strength ── */
    function checkStrength(val) {
        const bars  = [document.getElementById('s1'), document.getElementById('s2'),
                       document.getElementById('s3'), document.getElementById('s4')];
        const label = document.getElementById('strengthLabel');
        let score = 0;
        if (val.length >= 8)          score++;
        if (/[A-Z]/.test(val))        score++;
        if (/[0-9]/.test(val))        score++;
        if (/[^A-Za-z0-9]/.test(val)) score++;

        const colors = ['#e8344a','#f07020','#f5c518','#3dbf6e'];
        const labels = ['Weak','Fair','Good','Strong'];
        bars.forEach((b, i) => {
            b.style.background = i < score ? colors[score - 1] : 'rgba(255,255,255,.1)';
        });
        label.textContent = val.length ? (labels[score - 1] || '') : '';
        label.style.color = val.length ? colors[score - 1] : 'rgba(245,240,232,0.45)';
    }

    /* ── Toast helper ── */
    function showToast(msg, isError = false) {
        const t = document.getElementById('toast');
        t.textContent = msg;
        t.style.borderColor = isError ? '#e8344a' : '#3dbf6e';
        t.style.color       = isError ? '#e8344a' : '#3dbf6e';
        t.classList.add('show');
        setTimeout(() => t.classList.remove('show'), 3000);
    }

    /* ── Register handler ── */
    function handleRegister() {
        const firstName = document.getElementById('firstName').value.trim();
        const lastName  = document.getElementById('lastName').value.trim();
        const email     = document.getElementById('email').value.trim();
        const phone     = document.getElementById('phone').value.trim();
        const password  = document.getElementById('password').value;
        const confirm   = document.getElementById('confirmPassword').value;
        const terms     = document.getElementById('terms').checked;

        if (!firstName || !lastName || !email || !phone) {
            showToast('⚠ Please fill all required fields.', true); return;
        }
        if (password !== confirm) {
            showToast('⚠ Passwords do not match.', true); return;
        }
        if (password.length < 8) {
            showToast('⚠ Password must be at least 8 characters.', true); return;
        }
        if (!terms) {
            showToast('⚠ Please accept the Terms & Conditions.', true); return;
        }

        showToast('✓ Account created! Redirecting…');
        setTimeout(() => document.getElementById('regForm').submit(), 2000);
    }
