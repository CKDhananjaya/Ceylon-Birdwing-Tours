$filesToUpdate = @(
    "e:\Ceylon-Birdwing-Tours\destination.html",
    "e:\Ceylon-Birdwing-Tours\packages.html",
    "e:\Ceylon-Birdwing-Tours\CustomTours.html",
    "e:\Ceylon-Birdwing-Tours\contact.html"
)

$filesNoNav = @(
    "e:\Ceylon-Birdwing-Tours\plan.html",
    "e:\Ceylon-Birdwing-Tours\plan1.html",
    "e:\Ceylon-Birdwing-Tours\plan2.html",
    "e:\Ceylon-Birdwing-Tours\plan3.html",
    "e:\Ceylon-Birdwing-Tours\plan4.html",
    "e:\Ceylon-Birdwing-Tours\plan5.html",
    "e:\Ceylon-Birdwing-Tours\plan6.html",
    "e:\Ceylon-Birdwing-Tours\plan7.html",
    "e:\Ceylon-Birdwing-Tours\transfer.html"
)

$headLinks = @"
  <!-- Google Fonts: Outfit + Poppins -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800;900&family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
  <!-- Shared Navbar & Footer Styles -->
  <link rel="stylesheet" href="css/shared-navbar-footer.css">
"@

$navbarTemplate = @"
<!-- NAVBAR OVERLAY -->
<div class="nav-overlay" id="nav-overlay"></div>

<!-- ============================================================
     MODERN NAVBAR
============================================================ -->
<nav class="modern-navbar at-top" id="main-navbar">
  <div class="nav-container">
    <!-- Logo -->
    <a href="index.html" class="nav-logo">
      <div class="nav-logo-img-wrap">
        <img src="images/logo.png" alt="Ceylon Birdwing Tours Logo" loading="lazy">
      </div>
      <div class="nav-logo-text">
        <span class="nav-logo-title">Ceylon Birdwing Tours</span>
        <span class="nav-logo-sub">Sri Lanka Travel Experts</span>
      </div>
    </a>
    <!-- Hamburger -->
    <div class="nav-toggle" id="nav-toggle" role="button" aria-label="Toggle navigation" aria-expanded="false">
      <span></span><span></span><span></span>
    </div>
    <!-- Menu -->
    <ul class="nav-menu" id="nav-menu" role="list">
      <li class="nav-item"><a href="index.html">Home</a></li>
      <li class="nav-item {dest_active}"><a href="destination.html">Destination</a></li>
      <li class="nav-item {pkg_active}"><a href="packages.html">Tour Packages</a></li>
      <li class="nav-item {cust_active}"><a href="CustomTours.html">Custom Tours</a></li>
      <li class="nav-item nav-cta {cont_active}"><a href="contact.html">Contact Us</a></li>
    </ul>
  </div>
</nav>

<script>
// Navbar scroll behavior
const navbar  = document.getElementById('main-navbar');
const toggle  = document.getElementById('nav-toggle');
const menu    = document.getElementById('nav-menu');
const overlay = document.getElementById('nav-overlay');

function closeNav() {
  menu.classList.remove('show');
  overlay.classList.remove('show');
  toggle.classList.remove('open');
  toggle.setAttribute('aria-expanded', 'false');
  document.body.style.overflow = '';
}

toggle.addEventListener('click', () => {
  const isOpen = menu.classList.toggle('show');
  overlay.classList.toggle('show', isOpen);
  toggle.classList.toggle('open', isOpen);
  toggle.setAttribute('aria-expanded', isOpen);
  document.body.style.overflow = isOpen ? 'hidden' : '';
});

overlay.addEventListener('click', closeNav);
menu.querySelectorAll('a').forEach(a => a.addEventListener('click', closeNav));

window.addEventListener('scroll', () => {
  if (window.scrollY > 60) {
    navbar.classList.remove('at-top');
    navbar.classList.add('scrolled');
  } else {
    navbar.classList.remove('scrolled');
    navbar.classList.add('at-top');
  }
}, { passive: true });
</script>
<!-- NAVBAR END -->
"@

$footerCode = @"
<!-- ============================================================
     FOOTER
============================================================ -->
<footer class="site-footer" id="footer">
  <div class="container">
    <div class="row g-4">
      <!-- Brand Column -->
      <div class="col-lg-5 col-md-6">
        <div class="footer-brand">
          <h2><span>Ceylon Birdwing</span> Tours</h2>
          <p>Specializing in personalized tours across Sri Lanka, covering historical, nature, and coastal experiences. We are committed to making your island dream a reality.</p>
        </div>
        <!-- Social Icons -->
        <div class="footer-social">
          <a href="https://web.facebook.com/people/Ceylon-Birdwing-Tours/61588023495848/" data-tooltip="Facebook" target="_blank" rel="noopener noreferrer">
            <img src="https://cdn.simpleicons.org/facebook/ffffff" alt="Facebook">
          </a>
          <a href="https://www.instagram.com/ceylonbirdwingtours" data-tooltip="Instagram" target="_blank" rel="noopener noreferrer">
            <img src="https://cdn.simpleicons.org/instagram/ffffff" alt="Instagram">
          </a>
          <a href="https://www.tiktok.com/@ceylon.birdwing.t" data-tooltip="TikTok" target="_blank" rel="noopener noreferrer">
            <img src="https://cdn.simpleicons.org/tiktok/ffffff" alt="TikTok">
          </a>
          <a href="https://www.threads.com/@ceylonbirdwingtours" data-tooltip="Threads" target="_blank" rel="noopener noreferrer">
            <img src="https://cdn.simpleicons.org/threads/ffffff" alt="Threads">
          </a>
        </div>
      </div>
      <!-- Quick Links -->
      <div class="col-lg-3 col-md-6">
        <h4 class="footer-heading">Quick Links</h4>
        <ul class="footer-links">
          <li><a href="javascript:void(0)" class="footer-link" data-title="Online Enquiry" data-content="Fill out our online enquiry form to get personalized travel information and assistance.">Online Enquiry</a></li>
          <li><a href="javascript:void(0)" class="footer-link" data-title="Booking Conditions" data-content="Read our booking terms, conditions, and cancellation policies before confirming your tour.">Booking Conditions</a></li>
          <li><a href="javascript:void(0)" class="footer-link" data-title="Privacy Policy" data-content="We respect your privacy. Learn how we collect, use, and protect your personal information.">Privacy Policy</a></li>
          <li><a href="javascript:void(0)" class="footer-link" data-title="FAQ" data-content="Check frequently asked questions to help you plan your tour efficiently.">FAQ</a></li>
        </ul>
      </div>
      <!-- Contact -->
      <div class="col-lg-4 col-md-6">
        <h4 class="footer-heading">Contact Us</h4>
        <a href="tel:+94762055008" class="footer-contact-item">
          <div class="footer-contact-icon"><i class="fa fa-phone"></i></div>
          <span>+94 76 2055008</span>
        </a>
        <a href="mailto:ceylonbirdwingtours@gmail.com" class="footer-contact-item">
          <div class="footer-contact-icon"><i class="fa fa-envelope"></i></div>
          <span>ceylonbirdwingtours@gmail.com</span>
        </a>
      </div>
    </div>
  </div>
  <div class="footer-divider"></div>
  <div class="footer-bottom">
    <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> <span>Ceylon Birdwing Tours</span> &mdash; All Rights Reserved.</p>
  </div>
</footer>

<!-- Footer Modal -->
<div id="footerModal" class="footer-modal-overlay" role="dialog" aria-hidden="true">
  <div class="footer-modal-box">
    <button class="footer-modal-close-icon" id="footer-modal-close"><i class="fa fa-times"></i></button>
    <h3 id="footerModalTitle"></h3>
    <p id="footerModalContent"></p>
    <button class="btn-footer-modal-close" id="footer-modal-btn">Close</button>
  </div>
</div>

<script>
(function() {
  const fModal     = document.getElementById('footerModal');
  const fCloseIcon = document.getElementById('footer-modal-close');
  const fCloseBtn  = document.getElementById('footer-modal-btn');

  function openFModal(link) {
    document.getElementById('footerModalTitle').textContent   = link.getAttribute('data-title');
    document.getElementById('footerModalContent').textContent = link.getAttribute('data-content');
    fModal.style.display = 'flex';
    document.body.style.overflow = 'hidden';
  }
  function closeFModal() {
    fModal.style.display = 'none';
    document.body.style.overflow = '';
  }

  document.querySelectorAll('.footer-link').forEach(link =>
    link.addEventListener('click', e => { e.preventDefault(); openFModal(link); })
  );
  fCloseIcon.addEventListener('click', closeFModal);
  fCloseBtn.addEventListener('click', closeFModal);
  fModal.addEventListener('click', e => { if (e.target === fModal) closeFModal(); });
})();
</script>
<!-- FOOTER END -->
"@

foreach ($file in $filesToUpdate) {
    if (Test-Path $file) {
        $content = [System.IO.File]::ReadAllText($file, [System.Text.Encoding]::UTF8)
        
        # 1. HEAD LINKS
        if ($content -notmatch 'css/shared-navbar-footer.css') {
            $content = $content -replace '</head>', "$headLinks`n</head>"
        }
        
        # 2. BODY TAG
        $content = [regex]::Replace($content, '(?s)<body\s+style="[^"]*"\s*>', '<body>')
        $content = [regex]::Replace($content, '(?s)<style>\s*@keyframes softGradient \{.*?\}\s*</style>', '')
        
        # 3. NAVBAR
        $dest = ""; $pkg = ""; $cust = ""; $cont = ""
        if ($file -match "destination") { $dest = "active" }
        elseif ($file -match "packages") { $pkg = "active" }
        elseif ($file -match "CustomTours") { $cust = "active" }
        elseif ($file -match "contact") { $cont = "active" }
        
        $navHtml = $navbarTemplate -replace '\{dest_active\}', $dest `
                                   -replace '\{pkg_active\}', $pkg `
                                   -replace '\{cust_active\}', $cust `
                                   -replace '\{cont_active\}', $cont
        
        $content = [regex]::Replace($content, '(?s)<!-- MODERN NAVBAR START -->.*?<!-- MODERN NAVBAR END -->', $navHtml)
        
        # 4. FOOTER
        if ($content -match '(?s)<!-- Footer start -->.*?<!-- FOOTER code fully end here -->') {
            $content = [regex]::Replace($content, '(?s)<!-- Footer start -->.*?<!-- FOOTER code fully end here -->', $footerCode)
        } elseif ($content -match '(?s)<footer class="ftco-footer.*?<!-- FOOTER code fully end here -->') {
            $content = [regex]::Replace($content, '(?s)<footer class="ftco-footer.*?<!-- FOOTER code fully end here -->', $footerCode)
        } elseif ($content -match '(?s)<footer class="ftco-footer.*?</script>') {
            $content = [regex]::Replace($content, '(?s)<footer class="ftco-footer.*?</script>', $footerCode)
        }

        [System.IO.File]::WriteAllText($file, $content, [System.Text.Encoding]::UTF8)
        Write-Host "Updated $file"
    }
}

foreach ($file in $filesNoNav) {
    if (Test-Path $file) {
        $content = [System.IO.File]::ReadAllText($file, [System.Text.Encoding]::UTF8)
        
        # 1. HEAD LINKS
        if ($content -notmatch 'css/shared-navbar-footer.css') {
            $headExtras = @"
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css">
$headLinks
"@
            $content = $content -replace '</head>', "$headExtras`n</head>"
        }
        
        # 2. Hero CSS adjust
        if ($content -match '\.hero\s*\{') {
            $content = $content -replace '\.hero\s*\{', '.hero { margin-top: 88px;'
        } elseif ($content -match '\.transfer-container\s*\{') {
            $content = $content -replace '\.transfer-container\s*\{', '.transfer-container { margin-top: 120px !important;'
        }
        
        # 3. NAVBAR
        $navHtml = $navbarTemplate -replace '\{dest_active\}', '' -replace '\{pkg_active\}', 'active' -replace '\{cust_active\}', '' -replace '\{cont_active\}', ''
        if ($file -match "contact" -or $file -match "transfer") {
            $navHtml = $navbarTemplate -replace '\{dest_active\}', '' -replace '\{pkg_active\}', '' -replace '\{cust_active\}', '' -replace '\{cont_active\}', 'active'
        }
        
        if ($content -notmatch '<nav class="modern-navbar') {
            $content = $content -replace '<body>', "<body>`n$navHtml"
        }
        
        # 4. FOOTER
        if ($content -notmatch '<footer class="site-footer"') {
            $content = $content -replace '</body>', "$footerCode`n</body>"
        }
        
        [System.IO.File]::WriteAllText($file, $content, [System.Text.Encoding]::UTF8)
        Write-Host "Updated $file"
    }
}
