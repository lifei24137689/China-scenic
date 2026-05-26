$path = "d:\成品英文\hebei\chengde-bishushanzhuang.html"

Add-Content -Path $path -Value @"

    /* ===== Full-width image break ===== */
    .image-break {
      position: relative;
      width: 100%;
      height: 60vh;
      overflow: hidden;
    }
    .image-break .bg {
      position: absolute; inset: -10px;
      background-size: cover; background-position: center;
      background-attachment: fixed;
      filter: brightness(0.45);
    }
    .image-break .overlay {
      position: absolute; inset: 0;
      background: linear-gradient(180deg,var(--bg) 0%,transparent 20%,transparent 80%,var(--bg) 100%);
    }
    .image-break .quote {
      position: absolute; bottom: 60px; left: 40px; right: 40px; z-index: 2;
      max-width: 600px;
    }
    .image-break .quote p {
      font-size: 22px; font-weight: 300; line-height: 1.6;
      color: var(--text-dim);
      letter-spacing: 2px;
    }
    .image-break .quote .author {
      font-size: 12px; color: rgba(245,230,211,.25);
      letter-spacing: 3px; margin-top: 12px;
      font-family: 'Courier New',monospace;
    }

    /* ===== Gallery Grid ===== */
    .gallery-section {
      padding: 100px 40px;
    }
    .gallery-section .section-header {
      max-width: 1200px;
      margin: 0 auto 40px;
    }
    .gallery-section .section-header .numeral {
      font-family: 'Courier New',monospace;
      font-size: 13px; color: rgba(212,168,67,.4);
      letter-spacing: 3px; margin-bottom: 12px;
    }
    .gallery-section .section-header h2 {
      font-size: 32px; font-weight: 700; letter-spacing: 2px;
    }
    .gallery-grid {
      max-width: 1200px;
      margin: 0 auto;
      display: grid;
      grid-template-columns: 2fr 1fr;
      gap: 12px;
    }
    .gallery-grid .col {
      display: flex;
      flex-direction: column;
      gap: 12px;
    }
    .gallery-grid .col:first-child {
      grid-row: span 2;
    }
    .gallery-item {
      border-radius: 12px;
      overflow: hidden;
      position: relative;
      opacity: 0;
      transform: translateY(30px);
      transition: all 0.8s cubic-bezier(.16,1,.3,1);
    }
    .gallery-item.visible {
      opacity: 1;
      transform: translateY(0);
    }
    .gallery-item img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      display: block;
      transition: transform 0.6s ease;
    }
    .gallery-item:hover img { transform: scale(1.05); }

    /* ===== Data Dashboard ===== */
    .dashboard-section {
      padding: 100px 40px;
      background: linear-gradient(180deg,var(--bg),#0d0505,var(--bg));
    }
    .dashboard-section .section-header {
      max-width: 1200px; margin: 0 auto 50px;
    }
    .dashboard-section .section-header .numeral {
      font-family: 'Courier New',monospace;
      font-size: 13px; color: rgba(212,168,67,.4);
      letter-spacing: 3px; margin-bottom: 12px;
    }
    .dashboard-section .section-header h2 {
      font-size: 32px; font-weight: 700; letter-spacing: 2px;
    }
    .dashboard-grid {
      max-width: 1200px; margin: 0 auto;
      display: grid;
      grid-template-columns: repeat(4,1fr);
      gap: 12px;
    }
    .dashboard-card {
      padding: 28px 24px;
      border-radius: 14px;
      background: var(--surface);
      border: 1px solid rgba(212,168,67,.06);
      text-align: center;
      opacity: 0;
      transform: translateY(20px);
      transition: all 0.6s cubic-bezier(.16,1,.3,1);
    }
    .dashboard-card.visible {
      opacity: 1;
      transform: translateY(0);
    }
    .dashboard-card .icon { font-size: 28px; margin-bottom: 12px; }
    .dashboard-card .d-num {
      font-size: 32px; font-weight: 700; letter-spacing: 1px;
    }
    .dashboard-card .d-label {
      font-size: 10px; color: var(--text-dim);
      letter-spacing: 2px; margin-top: 6px;
      font-family: 'Courier New',monospace;
    }
    .dashboard-card.cyan .d-num { color: var(--secondary); }
    .dashboard-card.green .d-num { color: #43e97b; }
    .dashboard-card.purple .d-num { color: #a18cd1; }
    .dashboard-card.pink .d-num { color: #fbc2eb; }
    .dashboard-card.gold .d-num { color: #ffd700; }

    /* ===== CTA / Footer ===== */
    .cta-section {
      padding: 120px 40px;
      text-align: center;
      position: relative;
      overflow: hidden;
    }
    .cta-section .bg {
      position: absolute; inset: 0;
      background-size: cover; background-position: center;
      filter: brightness(0.25);
    }
    .cta-section .overlay {
      position: absolute; inset: 0;
      background: linear-gradient(180deg,var(--bg) 0%,transparent 30%,transparent 70%,var(--bg) 100%);
    }
    .cta-section .content {
      position: relative; z-index: 2;
      max-width: 600px; margin: 0 auto;
    }
    .cta-section .content .year-num {
      font-size: 120px; font-weight: 900; letter-spacing: 8px;
      background: linear-gradient(180deg,var(--secondary),rgba(212,168,67,0.3));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      line-height: 1;
      margin-bottom: 10px;
      text-shadow: none;
      filter: drop-shadow(0 0 30px rgba(212,168,67,0.3));
    }
    .cta-section .content .numeral {
      font-family: 'Courier New',monospace;
      font-size: 13px; color: rgba(212,168,67,.4);
      letter-spacing: 3px; margin-bottom: 16px;
    }
    .cta-section .content h2 {
      font-size: 36px; font-weight: 700; letter-spacing: 2px;
      margin-bottom: 16px;
    }
    .cta-section .content p {
      font-size: 15px; color: var(--text-dim);
      line-height: 1.8; margin-bottom: 30px;
    }
    .cta-btn {
      display: inline-flex; align-items: center; gap: 10px;
      padding: 14px 32px;
      border: 1px solid rgba(212,168,67,.3);
      background: rgba(212,168,67,.1);
      backdrop-filter: blur(12px);
      border-radius: 12px;
      color: var(--secondary); font-size: 14px;
      cursor: pointer; transition: all .3s;
      letter-spacing: 1px;
    }
    .cta-btn:hover {
      background: rgba(212,168,67,.2);
      box-shadow: 0 0 40px rgba(212,168,67,.15);
      transform: translateY(-2px);
    }

    footer {
      padding: 40px;
      text-align: center;
      border-top: 1px solid rgba(212,168,67,.05);
    }
    footer p {
      font-size: 11px; color: var(--text-dim);
      letter-spacing: 2px;
      font-family: 'Courier New',monospace;
    }

    /* ===== Scroll HUD & Progress ===== */
    .scroll-progress {
      position: fixed; top: 0; left: 0; right: 0; z-index: 60;
      height: 2px; background: rgba(212,168,67,.05);
    }
    .scroll-progress-fill {
      height: 100%; width: 0%;
      background: linear-gradient(90deg, var(--secondary), var(--primary));
      transition: width 0.1s linear;
    }
    .scroll-progress-pct {
      position: fixed; top: 8px; right: 42px; z-index: 60;
      font-size: 9px; color: rgba(212,168,67,.15);
      font-family: 'Courier New',monospace;
      letter-spacing: 1px;
    }

    .scroll-hud {
      position: fixed; top: 0; left: 0; right: 0; z-index: 50;
      padding: 12px 40px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      background: rgba(26,10,10,.85);
      backdrop-filter: blur(20px);
      border-bottom: 1px solid rgba(212,168,67,.06);
      transform: translateY(-100%);
      transition: transform 0.4s cubic-bezier(.16,1,.3,1);
    }
    .scroll-hud.active {
      transform: translateY(0);
    }
    .scroll-hud .left {
      display: flex; align-items: center; gap: 16px;
    }
    .scroll-hud .site-name {
      font-size: 13px; color: var(--text-dim);
      letter-spacing: 2px;
    }
    .scroll-hud .site-name strong {
      color: var(--secondary);
    }
    .scroll-hud .right span {
      font-size: 10px; color: var(--text-dim);
      letter-spacing: 2px;
      font-family: 'Courier New',monospace;
    }

    /* ===== Chapter Nav ===== */
    .chapter-nav {
      position: fixed; right: 14px; top: 50%; transform: translateY(-50%); z-index: 55;
      display: flex; flex-direction: column; align-items: center; gap: 10px;
    }
    .chapter-dot {
      width: 6px; height: 6px; border-radius: 50%;
      background: rgba(212,168,67,.12);
      cursor: pointer;
      transition: all .3s;
      position: relative;
    }
    .chapter-dot:hover { background: rgba(212,168,67,.35); transform: scale(1.4); }
    .chapter-dot.active { background: rgba(212,168,67,.7); transform: scale(1.5); box-shadow: 0 0 10px rgba(212,168,67,.3); }
    .chapter-dot .chapter-label {
      position: absolute; right: 14px; top: 50%; transform: translateY(-50%);
      white-space: nowrap; font-size: 9px; color: var(--text-dim);
      letter-spacing: 2px; font-family: 'Courier New',monospace;
      opacity: 0; transition: opacity .3s; pointer-events: none;
    }
    .chapter-dot:hover .chapter-label { opacity: 1; }

    .chapter-counter {
      position: fixed; bottom: 30px; left: 50%; transform: translateX(-50%);
      z-index: 45; font-size: 10px; color: rgba(212,168,67,.1);
      font-family: 'Courier New',monospace; letter-spacing: 3px;
      transition: opacity 0.4s; opacity: 0; pointer-events: none;
    }
    .chapter-counter.visible { opacity: 1; }

    /* ===== Corner decorations ===== */
    .corner { position: fixed; z-index: 100; pointer-events: none; }
    .corner-h { position: absolute; width: 20px; height: 1px; background: rgba(212,168,67,.06); }
    .corner-v { position: absolute; width: 1px; height: 20px; background: rgba(212,168,67,.06); }
    .corner-tl { top: 10px; left: 10px; }
    .corner-tr { top: 10px; right: 10px; }
    .corner-bl { bottom: 10px; left: 10px; }
    .corner-br { bottom: 10px; right: 10px; }
    .corner-tl .corner-h { top: 0; left: 0; }
    .corner-tl .corner-v { top: 0; left: 0; }
    .corner-tr .corner-h { top: 0; right: 0; }
    .corner-tr .corner-v { top: 0; right: 0; }
    .corner-bl .corner-h { bottom: 0; left: 0; }
    .corner-bl .corner-v { bottom: 0; left: 0; }
    .corner-br .corner-h { bottom: 0; right: 0; }
    .corner-br .corner-v { bottom: 0; right: 0; }

    /* ===== Page transition ===== */
    .page-transition {
      position: fixed; inset: 0; z-index: 9999;
      pointer-events: none;
      background: var(--bg);
      opacity: 0;
      transition: opacity 0.5s cubic-bezier(.16,1,.3,1);
    }
    .page-transition.active { opacity: 1; }

    @media (max-width: 768px) {
      .hud { padding: 16px 20px; }
      .hud-top { flex-direction: column; }
      .data-panel { margin-top: 12px; gap: 4px; }
      .data-item { padding: 6px 12px; min-width: 56px; }
      .data-item .num { font-size: 16px; }
      .title-group h1 { font-size: 28px; flex-wrap: wrap; }
      .hero-info { left: 20px; right: 20px; bottom: 100px; }
      .hero-info .card { padding: 16px 20px; }
      .hero-info .card p { font-size: 12px; }

      .section { padding: 60px 20px; min-height: auto; }
      .section-inner { grid-template-columns: 1fr; gap: 30px; }
      .section-inner.reverse { direction: ltr; }
      .section-image img { height: 250px; }
      .section-content h2 { font-size: 24px; }
      .section-content .stat-row { flex-wrap: wrap; }

      .gallery-section { padding: 60px 20px; }
      .gallery-grid { grid-template-columns: 1fr; }
      .gallery-grid .col:first-child { grid-row: auto; }

      .dashboard-grid { grid-template-columns: repeat(2,1fr); }
      .dashboard-section { padding: 60px 20px; }

      .cta-section { padding: 80px 20px; }
      .cta-section .content h2 { font-size: 26px; }
      .cta-section .content .year-num { font-size: 70px; }

      .image-break .quote p { font-size: 16px; }
      .scroll-hud { padding: 10px 20px; }
    }
  </style>
</head>
<body>

  <!-- ===== Loading ===== -->
  <div class="loading-overlay" id="loading">
    <div class="loading-spinner"></div>
    <p>Establishing Imperial Link ...</p>
  </div>

  <!-- ===== Corner Decorations ===== -->
  <div class="corner corner-tl"><div class="corner-h"></div><div class="corner-v"></div></div>
  <div class="corner corner-tr"><div class="corner-h"></div><div class="corner-v"></div></div>
  <div class="corner corner-bl"><div class="corner-h"></div><div class="corner-v"></div></div>
  <div class="corner corner-br"><div class="corner-h"></div><div class="corner-v"></div></div>

  <!-- ===== Fixed HUD ===== -->
  <div class="scroll-progress" id="scrollProgress">
    <div class="scroll-progress-fill" id="scrollProgressFill"></div>
    <span class="scroll-progress-pct" id="scrollPct">0%</span>
  </div>

  <div class="scroll-hud" id="scrollHud">
    <div class="left">
      <span class="site-name"><strong>5A</strong> · Mountain Resort</span>
    </div>
    <div class="right">
      <span>Hebei · Chengde</span>
    </div>
  </div>

  <div class="chapter-nav" id="chapterNav"></div>
"@ -Encoding UTF8