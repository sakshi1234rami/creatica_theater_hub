// login script

    /* Sparkles - only on pages that have the sparkles container */
    var sparkleContainer = document.getElementById('sparkles');
    if (sparkleContainer) {
        for (var i = 0; i < 60; i++) {
            var s = document.createElement('span');
            s.style.left = Math.random() * 100 + '%';
            s.style.top  = Math.random() * 100 + '%';
            var delay = (Math.random() * 5).toFixed(2) + 's';
            var dur   = (2 + Math.random() * 4).toFixed(2) + 's';
            s.style.setProperty('--d', dur);
            s.style.animationDelay = delay;
            var colors = ['#c98b2a','#e6a832','#e8344a','#3dbf6e','#22c4d4','#e94fa0','#2e6fcc'];
            s.style.background = colors[Math.floor(Math.random() * colors.length)];
            sparkleContainer.appendChild(s);
        }
    }

    /* User type toggle */
    var currentType = 'student';
    function setType(t) {
        currentType = t;
        var btnStudent = document.getElementById('btnStudent');
        var btnVolunteer = document.getElementById('btnVolunteer');
        var userTypeEl = document.getElementById('userType');
        if (btnStudent) btnStudent.classList.toggle('active', t === 'student');
        if (btnVolunteer) btnVolunteer.classList.toggle('active', t === 'volunteer');
        if (userTypeEl) userTypeEl.value = t;
    }

    /* Password toggle */
    function togglePwd() {
        var pw = document.getElementById('password');
        var btn = document.getElementById('eyeBtn');
        if (!pw || !btn) return;
        if (pw.type === 'password') { pw.type = 'text';  btn.textContent = '🙈'; }
        else                         { pw.type = 'password'; btn.textContent = '👁'; }
    }

    /* Login handler */
    function handleLogin() {
        var email = document.getElementById('email');
        var pwd   = document.getElementById('password');
        var form  = document.getElementById('loginForm');
        if (!email || !pwd || !form) return;
        if (!email.value.trim() || !pwd.value) {
            alert('Please fill in all fields.');
            return;
        }
        form.submit();
    }