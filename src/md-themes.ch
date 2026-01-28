func injectMarkdownThemeBase(page : &mut HtmlPage) {
    // send straight to css bundle
    page.pageCss.append_view("""
    .md-theme {
      --md-font-body: 'Inter', system-ui, -apple-system, sans-serif;
      --md-font-mono: 'JetBrains Mono', ui-monospace, monospace;
      --md-transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);

      font-family: var(--md-font-body);
      line-height: 1.7;
      transition: var(--md-transition);
      max-width: 900px;
      margin: 0 auto;
      padding: 3rem 2rem;
    }

    .md-theme .md-hg {
      font-weight: 800;
      margin: 2em 0 0.8em;
      letter-spacing: -0.02em;
      line-height: 1.2;
    }

    .md-theme .md-h1 { font-size: 3rem; border-bottom: 1px solid currentColor; padding-bottom: 0.3em; margin-top: 0; }
    .md-theme .md-h2 { font-size: 2.2rem; }
    .md-theme .md-h3 { font-size: 1.8rem; }
    .md-theme .md-h4 { font-size: 1.4rem; }
    .md-theme .md-h5 { font-size: 1.1rem; text-transform: uppercase; letter-spacing: 0.05em; }
    .md-theme .md-h6 { font-size: 1rem; opacity: 0.8; font-style: italic; }

    .md-theme .md-p {
      margin: 1.25em 0;
      font-size: 1.1rem;
    }

    .md-theme .md-hr {
      border: none;
      height: 2px;
      margin: 3em 0;
      background: linear-gradient(to right, transparent, currentColor, transparent);
      opacity: 0.2;
    }

    .md-theme .md-bold { font-weight: 700; color: inherit; }
    .md-theme .md-italic { font-style: italic; opacity: 0.95; }
    .md-theme .md-del { text-decoration: line-through; opacity: 0.6; }

    .md-theme .md-link {
      text-decoration: none;
      border-bottom: 1px solid transparent;
      transition: var(--md-transition);
      font-weight: 500;
    }

    .md-theme .md-link:hover {
      border-bottom-color: currentColor;
    }

    .md-theme .md-ul,
    .md-theme .md-ol {
      padding-left: 1.8em;
      margin: 1.25em 0;
    }

    .md-theme .md-li {
      margin: 0.5em 0;
    }

    .md-theme .md-task-checkbox {
      width: 1.05em;
      height: 1.05em;
      margin: 0 0.55em 0 0;
      vertical-align: middle;
      transform: translateY(-0.05em);
      accent-color: currentColor;
      opacity: 0.9;
    }

    .md-theme .md-task-checkbox:disabled {
      cursor: default;
    }

    .md-theme .md-blockquote {
      margin: 2em 0;
      padding: 1.5em 2em;
      border-left: 6px solid currentColor;
      font-style: italic;
      background: rgba(0,0,0,0.03);
      border-radius: 0 12px 12px 0;
      font-size: 1.2rem;
    }

    .md-theme .md-code {
      font-family: var(--md-font-mono);
      padding: 0.2em 0.45em;
      border-radius: 6px;
      font-size: 0.85em;
      background: rgba(0,0,0,0.05);
    }

    .md-theme .md-pre {
      margin: 2em 0;
      filter: drop-shadow(0 4px 6px rgba(0,0,0,0.1));
    }

    .md-theme .md-code-block {
      display: block;
      padding: 1.5rem;
      border-radius: 12px;
      font-family: var(--md-font-mono);
      font-size: 0.95em;
      overflow-x: auto;
      line-height: 1.5;
    }

    .md-theme .md-table {
      border-collapse: separate;
      border-spacing: 0;
      margin: 2.5em 0;
      width: 100%;
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 0 0 1px rgba(0,0,0,0.1);
    }

    .md-theme .md-th {
      background: rgba(0,0,0,0.05);
      font-weight: 700;
      text-align: left;
    }

    .md-theme .md-th,
    .md-theme .md-td {
      padding: 1em 1.25em;
      border-bottom: 1px solid rgba(0,0,0,0.05);
    }

    .md-theme .md-tr:last-child .md-td {
      border-bottom: none;
    }

    .md-theme .md-img {
      max-width: 100%;
      border-radius: 16px;
      margin: 2em auto;
      display: block;
      box-shadow: 0 10px 25px -10px rgba(0,0,0,0.2);
    }

    .md-theme .md-mark {
      padding: 0.1em 0.3em;
      border-radius: 6px;
      font-weight: 600;
    }

    .md-theme .md-container {
      padding: 1.5em 2em;
      border-radius: 12px;
      margin: 2em 0;
      display: flex;
      align-items: flex-start;
      gap: 1em;
      box-shadow: 0 4px 12px rgba(0,0,0,0.05);
      border-left: 6px solid #ccc;
    }
    
    .md-theme .md-container::before {
      font-size: 1.4em;
    }

    .md-theme .md-container.md-info { border-left-color: #3b82f6; background: rgba(59, 130, 246, 0.05); }
    .md-theme .md-container.md-info::before { content: '\2139'; }

    .md-theme .md-container.md-tip { border-left-color: #10b981; background: rgba(16, 185, 129, 0.05); }
    .md-theme .md-container.md-tip::before { content: '\1f4a1'; }

    .md-theme .md-container.md-warning { border-left-color: #f59e0b; background: rgba(245, 158, 11, 0.05); }
    .md-theme .md-container.md-warning::before { content: '\26a0'; }

    .md-theme .md-container.md-error { border-left-color: #ef4444; background: rgba(239, 68, 68, 0.05); }
    .md-theme .md-container.md-error::before { content: '\1f6ab'; }
    """)
}

func injectMarkdownThemeGithubLight(page : &mut HtmlPage) {
    page.pageCss.append_view("""
    .md-theme-github {
      color: #1f2328;
      background: #ffffff;
    }

    .md-theme-github .md-link { color: #0969da; }
    .md-theme-github .md-code { background: #f6f8fa; }
    .md-theme-github .md-code-block { background: #f6f8fa; color: #24292f; }
    .md-theme-github .md-blockquote { color: #65717d; border-color: #d0d7de; }
    .md-theme-github .md-mark { background: #fff8c5; }
    .md-theme-github .md-container.md-info { background: #ddf4ff; border-left-color: #0969da; color: #0550ae; }
    .md-theme-github .md-container.md-tip { background: #dafbe1; border-left-color: #1a7f37; color: #116329; }
    .md-theme-github .md-container.md-warning { background: #fff8c5; border-left-color: #9a6700; color: #7d4e00; }
    .md-theme-github .md-container.md-error { background: #ffebe9; border-left-color: #cf222e; color: #a40e26; }
    """)
}

func injectMarkdownThemeGithubDark(page : &mut HtmlPage) {
    page.pageCss.append_view("""
    .md-theme-github-dark {
      color: #adbac7;
      background: #22272e;
    }

    .md-theme-github-dark .md-h1, .md-theme-github-dark .md-h2 { color: #cdd9e5; }
    .md-theme-github-dark .md-link { color: #539bf5; }
    .md-theme-github-dark .md-code { background: rgba(99,110,123,0.2); color: #adbac7; }
    .md-theme-github-dark .md-code-block { background: #2d333b; color: #adbac7; }
    .md-theme-github-dark .md-blockquote { color: #768390; border-color: #444c56; background: rgba(68,76,86,0.1); }
    .md-theme-github-dark .md-mark { background: rgba(187,128,9,0.3); color: #e3b341; }
    .md-theme-github-dark .md-container.md-info { background: rgba(56,139,253,0.1); border-left-color: #388bfd; color: #79c0ff; }
    .md-theme-github-dark .md-container.md-tip { background: rgba(63,185,80,0.1); border-left-color: #3fb950; color: #56d364; }
    .md-theme-github-dark .md-container.md-warning { background: rgba(187,128,9,0.1); border-left-color: #d29922; color: #e3b341; }
    .md-theme-github-dark .md-container.md-error { background: rgba(248,81,73,0.1); border-left-color: #f85149; color: #ffa198; }
    """)
}

func injectMarkdownThemeMinimal(page : &mut HtmlPage) {
    page.pageCss.append_view("""
    .md-theme-minimal {
      color: #111;
      background: #fff;
      --md-font-body: 'Outfit', sans-serif;
    }

    .md-theme-minimal .md-hg { border: none; font-weight: 300; }
    .md-theme-minimal .md-h1 { border: none; font-size: 4rem; text-align: center; margin-bottom: 1em; }
    .md-theme-minimal .md-link { color: #000; font-weight: 700; border-bottom: 2px solid #000; }
    .md-theme-minimal .md-code { background: #f0f0f0; border-radius: 0; }
    .md-theme-minimal .md-code-block { background: #f9f9f9; border-radius: 0; border: 1px solid #eee; }
    .md-theme-minimal .md-blockquote { border-left-width: 2px; background: transparent; font-size: 1.5rem; }
    """)
}

func injectMarkdownThemeGlass(page : &mut HtmlPage) {
    page.pageCss.append_view("""
    .md-theme-glass {
      color: #fff;
      background: fixed linear-gradient(135deg, #1e293b 0%, #0f172a 100%);
      padding: 4rem 2rem;
    }

    .md-theme-glass .md-h1, .md-theme-glass .md-h2 {
       background: linear-gradient(to bottom right, #fff, #94a3b8);
       -webkit-background-clip: text;
       -webkit-text-fill-color: transparent;
    }

    .md-theme-glass .md-p,
    .md-theme-glass .md-blockquote,
    .md-theme-glass .md-pre,
    .md-theme-glass .md-table,
    .md-theme-glass .md-container {
      background: rgba(255, 255, 255, 0.04);
      backdrop-filter: blur(16px);
      -webkit-backdrop-filter: blur(16px);
      border: 1px solid rgba(255, 255, 255, 0.1);
      box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
      border-radius: 20px;
    }

    .md-theme-glass .md-link { color: #7dd3fc; text-shadow: 0 0 10px rgba(125,211,252,0.3); }
    .md-theme-glass .md-code { background: rgba(0,0,0,0.3); color: #38bdf8; }
    .md-theme-glass .md-code-block { background: rgba(0,0,0,0.5); border: none; }
    """)
}

func injectMarkdownThemeCyberpunk(page : &mut HtmlPage) {
    page.pageCss.append_view("""
    .md-theme-cyberpunk {
      background: #050505;
      color: #32ff7e;
      --md-font-body: 'Orbitron', sans-serif;
      --md-font-mono: 'Share Tech Mono', monospace;
    }

    .md-theme-cyberpunk .md-h1, .md-theme-cyberpunk .md-h2, .md-theme-cyberpunk .md-h3 {
      color: #ff003c;
      text-transform: uppercase;
      text-shadow: 0 0 10px rgba(255,0,60,0.7), 2px 2px #000;
      clip-path: polygon(0 0, 95% 0, 100% 30%, 100% 100%, 5% 100%, 0 70%);
      background: rgba(255,0,60,0.1);
      padding: 0.2em 0.5em;
    }

    .md-theme-cyberpunk .md-link { color: #00f3ff; text-shadow: 0 0 5px #00f3ff; }
    .md-theme-cyberpunk .md-blockquote { border-left-color: #ff003c; background: rgba(255,0,60,0.05); color: #ff003c; }
    .md-theme-cyberpunk .md-code-block { border: 1px solid #32ff7e; background: #000; box-shadow: inset 0 0 20px rgba(50,255,126,0.2); }
    .md-theme-cyberpunk .md-hr { background: #ff003c; height: 4px; opacity: 0.8; }
    """)
}

func injectMarkdownThemeVelvetNight(page : &mut HtmlPage) {
    page.pageCss.append_view("""
    .md-theme-velvet-night {
      background: #120b1e;
      color: #e0d0f0;
      --md-font-body: 'Playfair Display', serif;
    }

    .md-theme-velvet-night .md-hg { color: #ffd700; text-shadow: 0 2px 4px rgba(0,0,0,0.5); }
    .md-theme-velvet-night .md-h1 { border-bottom-color: #5d3fd3; }
    .md-theme-velvet-night .md-link { color: #da70d6; font-style: italic; }
    .md-theme-velvet-night .md-blockquote { 
        background: linear-gradient(to right, rgba(93,63,211,0.15), transparent);
        border-left-color: #ffd700;
        color: #f0e0ff;
    }
    .md-theme-velvet-night .md-code { background: #2d1b4d; color: #ffd700; }
    .md-theme-velvet-night .md-code-block { background: #1a0f2c; border: 1px solid #5d3fd3; }
    .md-theme-velvet-night .md-mark { background: #ffd700; color: #120b1e; }
    """)
}

func injectMarkdownThemeMidnight(page : &mut HtmlPage) {
    page.pageCss.append_view("""
    .md-theme-midnight {
      background: #0a0a0c;
      color: #d1d1d1;
      --md-font-body: 'Inter', sans-serif;
    }

    .md-theme-midnight .md-hg { color: #f8fafc; font-weight: 700; }
    .md-theme-midnight .md-h1 { border-bottom: 2px solid #334155; }
    .md-theme-midnight .md-link { color: #38bdf8; border-bottom: 1px dashed #38bdf8; }
    .md-theme-midnight .md-blockquote { background: #111113; border-left-color: #38bdf8; color: #94a3b8; }
    .md-theme-midnight .md-code { background: #1e1e20; color: #f8fafc; }
    .md-theme-midnight .md-code-block { background: #000; border: 1px solid #1e293b; }
    .md-theme-midnight .md-mark { background: #38bdf8; color: #000; }
    """)
}

func injectMarkdownThemeDeepForest(page : &mut HtmlPage) {
    page.pageCss.append_view("""
    .md-theme-deep-forest {
      background: #081c15;
      color: #d8f3dc;
      --md-font-body: 'Playfair Display', serif;
    }

    .md-theme-deep-forest .md-hg { color: #95d5b2; }
    .md-theme-deep-forest .md-h1 { border-bottom-color: #2d6a4f; }
    .md-theme-deep-forest .md-link { color: #52b788; }
    .md-theme-deep-forest .md-blockquote { background: rgba(27,67,50,0.3); border-left-color: #95d5b2; font-style: italic; }
    .md-theme-deep-forest .md-code { background: #1b4332; color: #d8f3dc; }
    .md-theme-deep-forest .md-code-block { background: #081c15; border: 1px solid #1b4332; }
    """)
}

func injectMarkdownThemeNotion(page : &mut HtmlPage) {
    page.pageCss.append_view("""
    .md-theme-notion {
      background: #fff;
      color: #37352f;
      --md-font-body: 'Inter', sans-serif;
    }

    .md-theme-notion .md-hg { font-weight: 600; color: #37352f; }
    .md-theme-notion .md-blockquote { border-left-color: #37352f; background: transparent; padding-left: 1.25em; margin-left: 0.25em; opacity: 1; font-size: 1.1rem; }
    .md-theme-notion .md-code { background: rgba(135,131,120,0.15); color: #eb5757; }
    .md-theme-notion .md-code-block { background: #f7f6f3; }
    .md-theme-notion .md-container.md-warning { background: #fbf3db; border: none; box-shadow: none; border-radius: 4px; }
    """)
}

func injectAllMarkdownThemesNoBase(page : &mut HtmlPage) {
    injectMarkdownThemeGithubLight(page)
    injectMarkdownThemeGithubDark(page)
    injectMarkdownThemeMinimal(page)
    injectMarkdownThemeGlass(page)
    injectMarkdownThemeCyberpunk(page)
    injectMarkdownThemeVelvetNight(page)
    injectMarkdownThemeMidnight(page)
    injectMarkdownThemeDeepForest(page)
    injectMarkdownThemeNotion(page)
    // Removed redundant themes for brevity and focus on quality
}

func injectAllMarkdownThemes(page : &mut HtmlPage) {
   injectMarkdownThemeBase(page)
   injectAllMarkdownThemesNoBase(page)
}
